# AWS API Gateway with AWS Lambda in Python - Proof of Concept (POC)

## AWS IAM Requirements

To use this AWS API Gateway with AWS Lambda in Python Proof of Concept, create an IAM user with the following authorizations:

- AmazonAPIGatewayAdministrator
- AWSLambda_FullAccess

### How to Use

> **WARNING**: Make sure you have Make installed.

1. In the root directory of this project, initialize the project by running the command `make init`.
2. Deploy the project with the command `make deploy`.

After deployment, navigate to the AWS console to test the setup.