---
title: "Cleaning up manually created resources"
chapter: true
weight: 1 
---

## Introduction

In this chapter, we will delete all the resources that we created in the earlier chapters manually.

### Solace Broker and components
In the previous chapters, you created a number of objects and connections in the Solace PubSub+ broker. You will be manually disabling/deleting them now.
#### S3 connector
- Navigate to the cloud console and login to the PubSub+ broker manager using the link in the top right corner
  ![S3 - Link PubSub+ broker manager - Allow Access](/static/images/moduleOne/broker_console.png)
- Click on the **Connectors** link on the left menu and it will display a list of connectors that you have created.
- Select the Solace-AWS S3 connector and click on the **Action** button the top right and click **Delete** as below:
![s3-connector-delete.png](/static/images/cleanup-module/s3-connector-delete.png)
#### Bridge to remote broker
- In the PubSub+ broker manager, click on the **Bridges** link on the left menu and it will display a list of Bridges that have been configured.
- Select the bridge that you created earlier, click on the **Action** button the top right and click **Delete** as below :
![bridge-delete.png](/static/images/cleanup-module/bridge-delete.png)
#### Solace broker
- The Solace broker provisioned on your trial account will remain active for the next 30 days after which it will be
automatically cleared. You can use the broker for learning and development purposes during this period.
###  AWS resources
Aside the Solace resources and objects, you also manually created a number of AWS resources. You will also be manually deleting them now.
#### EventBridge scheduler
- Navigate to the [Rules page](https://console.aws.amazon.com/events/home#/rules) of the AWS console where a listing of rules is displayed as below :
![aws-rules-listing.png](/static/images/cleanup-module/aws-rules-listing.png)
- Select the rule that you defined earlier for triggering the lambda and click delete
![aws-rules-delete.png](/static/images/cleanup-module/aws-rules-delete.png)  
#### Lambdas
- Open the [Functions page](https://console.aws.amazon.com/lambda/home#/functions)  of the Lambda console to view a listing of function.
- Select the function that you defined earlier for publishing an event to the Solace PubSub+ broker, click **Actions** and **Delete**
- Repeat the above action for the function that you defined earlier for feeding events from S3 to OpenSearch
  ![aws-lambda-delete.png](/static/images/cleanup-module/aws-lambda-delete.png)

