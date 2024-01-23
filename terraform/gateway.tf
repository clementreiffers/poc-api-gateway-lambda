resource "aws_apigatewayv2_api" "coucou" {
  name          = "coucou_terraform"
  protocol_type = "HTTP"
}

resource "aws_apigatewayv2_stage" "coucou" {
  api_id      = aws_apigatewayv2_api.coucou.id
  name        = "coucou_terraform_stage"
  auto_deploy = true
}

resource "aws_apigatewayv2_integration" "coucou" {
  api_id             = aws_apigatewayv2_api.coucou.id
  integration_uri    = aws_lambda_function.coucou.invoke_arn
  integration_type   = "AWS_PROXY"
  integration_method = "POST"
}

resource "aws_apigatewayv2_route" "coucou" {
  api_id    = aws_apigatewayv2_api.coucou.id
  route_key = "GET /coucou"
  target    = "integrations/${aws_apigatewayv2_integration.coucou.id}"
}

