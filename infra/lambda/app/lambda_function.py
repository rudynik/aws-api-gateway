import base64
from io import BytesIO
from multipart import MultipartParser

def lambda_handler(event, context):
    # Verifica se o body está codificado em Base64
    is_base64 = event.get("isBase64Encoded", False)
    body = event["body"]

    # Decodifica o body, se necessário
    if is_base64:
        body = base64.b64decode(body)

    # Obtém o content-type (necessário para o boundary)
    content_type = event["headers"].get("content-type", "")
    
    # Usa MultipartParser para processar o multipart/form-data
    parser = MultipartParser(BytesIO(body), content_type)
    for part in parser.parts():
        print(f"Field Name: {part.name}")
        if part.filename:
            print(f"File Name: {part.filename}")
            file_content = part.file.read()  # Conteúdo do arquivo
            print(f"File Content: {file_content[:100]}...")  # Exemplo: exibe os 100 primeiros caracteres
        else:
            print(f"Field Value: {part.value}")

    return {
        "statusCode": 200,
        "body": "Upload processed successfully!"
    }
