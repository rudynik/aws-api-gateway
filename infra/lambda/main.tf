module "lambda_function" {
  source = "terraform-aws-modules/lambda/aws"

  function_name = "arquivo-excel"
  description   = "msnipulsção de arquivos em excel com python"
  handler       = "lambda_function.lambda_handler"
  runtime       = "python3.12"

  source_path = "./app/lambda_function.py"

  tags = {
    Name = "arquivo-excel"
  }
}