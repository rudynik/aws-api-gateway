resource "aws_apigatewayv2_api" "example" {
  name          = "http-api"
  protocol_type = "HTTP"

  body = file("${path.module}/api-definition.yaml")
}

resource "aws_apigatewayv2_stage" "default" {
  api_id      = aws_apigatewayv2_api.example.id
  name        = "$default"
  auto_deploy = true

  depends_on = [ aws_apigatewayv2_api.example ]
}
