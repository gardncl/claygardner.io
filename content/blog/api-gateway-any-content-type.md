---
title: "Parsing Data Not in JSON Format with API Gateway"
description: "How to accept a content type other than JSON with Amazon Web Service's API Gateway"
date: 2017-07-01T22:06:22-04:00
tags: ["aws", "api-gateway"]
draft: true
---



For a personal project I am using API Gateway and Lambda from Amazon Web Services to capture and process webhooks. The only problem was that the webhook I was receiving used only application/x-www-form-urlencoded instead of the application/json that API Gateway exclusively uses. It turns out that API Gateway only sends your Lambda function JSON formatted code so you will actually receive a parse error and not be able to use your Lambda given another content type.

Let's create a API Gateway endpoint that takes application/x-www-form-urlencoded and returns the same data formatted in application/json. The easiest way to do this is set up a lambda function as our backend that consumes, and processes our raw data.

### 1 - Create Lambda
We start with writing the Lambda because API gateway requires you to have a Lambda already to submit your code. Grab my code from [here](https://github.com/gardncl/content-type-agnostic-starter), build the mvn project, and copy it to your desktop.

```bash
git clone https://github.com/gardncl/content-type-agnostic-starter
cd content-type-agnostic-starter
mvn install
cp target/content-type-agnostic-starter-1.0-SNAPSHOT.jar ~/Desktop
```
### 2 - Create POST Method
### 3 - Upload Lambda and trigger it from our API Gateway code
### 4 -
