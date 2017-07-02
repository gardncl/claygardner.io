---
title: "Using API Gateway with Content Type other than JSON"
description: "How to accept a content type other than JSON with Amazon Web Service's API Gateway"
date: 2017-07-02T22:06:22-04:00
tags: ["aws", "api-gateway"]
---



Amazon Web Services' API Gateway and Lambda are perfect for capturing webhooks. The only problem is when the webhook being captured uses something other than application/json as the content-type. Webhooks, or any type of request passing a payload, cannot deliver their data without some changes to your API Gateway.

Let's create a API Gateway endpoint that takes application/x-www-form-urlencoded and returns the same data formatted in application/json. The easiest way to do this is set up a lambda function as our backend that consumes and processes our raw data. This process can be used for any content type. If you already have a lambda set up with API gateway then skip right to part 4.


### 1 - Create API inside of API Gateway

 1. Open AWS and navigate to the API Gateway console
 2. Create API (this will be used in the next step)

### 2 - Create Lambda

We start with writing the Lambda because API gateway requires you to have a Lambda already to submit your code. Grab my code from [here](https://github.com/gardncl/content-type-agnostic-starter), build the mvn project, and copy it to your desktop.

```
git clone https://github.com/gardncl/content-type-agnostic-starter
cd content-type-agnostic-starter
mvn install
cp target/content-type-agnostic-starter-1.0-SNAPSHOT.jar ~/Desktop
```

 1. Open AWS and navigate to the Lambda console
 2. Select "Create a lambda function"
 3. Select "Blank Function"
 4. Select API gateway as the integration to trigger your function
 5. Select the API you created in the first section
 6. Name your Lambda "mylambda" S
 7. Select Java 8 as the runtime
 8. Upload the .jar on your desktop to the "function package"
 9. At the bottom of the page enter the handler "gardncl.blog.LambdaRequestHandler::handleRequest"
 10. Use the microservice-permissions role
 11. Create the lambda!

### 3 - Add API Gateway POST Method

When opening API Gateway you should see this:

![API Gateway](/images/blog/api-gateway-any-content-type/api-gateway.png)

 1. Navigate to the API Gateway console
 2. Select "mylambda"
 3. Select the "Actions" drop down and select "create method"
 4. Select "POST" and select the check mark
 5. Now select the region you created the lambda in and find your lambda in the autocomplete box

### 4 - Create mapping to JSON

 1. Along the left side panel click "Binary Support"
 2. Add support for "application/x-www-form-urlencoded"
 3. Now go to the POST method we created and click on the "Integration Request" box
 4. At the bottom of the page unfurl the body mapping template
 5. Add mapping template for "application/x-www-form-urlencoded"
 6. Add to the mapping template:

```
"{ "body": "$util.base64Decode($input.body)" }"
```
 7. Save it!

![Mapping Template](/images/blog/api-gateway-any-content-type/mapping-template.png)


### 5 - Testing
 1. In the resources panel of your API select the "actions" dropdown and select "Deploy API"
 2. Create a new stage and call it "test"
 3. This should open the stage editor. If it does not then navigate to this by selecting "Stages" of the left side panel and seleting our stage "test"
 4. Navigate to the export tab and export as your preferred method. I will be using Postman and JSON
 5. Enter a application/x-www-form-urlencoded string and see the result. The string I have tested this with uses percent encoding and is included with the companion code in "percent-encoding.txt"

![API Gateway](/images/blog/api-gateway-any-content-type/request.png)

![API Gateway](/images/blog/api-gateway-any-content-type/response.png)

To change this working example to capture any other content type there are only three things that must be changed:


 1. Binary support for the content type
 2. A mapping template for that content type
 3. A different parsing service inside of the lambda



