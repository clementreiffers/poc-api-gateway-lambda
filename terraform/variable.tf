variable "lambda_path" {
  type    = string
  default = "../lambda-src/lambda.py"
}

variable "lambda_payload_path" {
  type    = string
  default = "./.terraform/lambda_function_payload.zip"
}