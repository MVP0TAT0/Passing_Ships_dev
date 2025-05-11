import os
import time
import pyimgur
import qrcode

# Configurações
CLIENT_ID = "e6a0bdea895325a"
PASTA_IMAGENS = "imagens_geradas"
PASTA_QRCODES = "qrcodes"

# Inicializar o cliente Imgur
im = pyimgur.Imgur(CLIENT_ID)

# Criar a pasta de QR Codes se não existir
if not os.path.exists(PASTA_QRCODES):
    os.makedirs(PASTA_QRCODES)

# Obter a lista de imagens já processadas
imagens_processadas = set()

while True:
    # Listar todas as imagens na pasta
    imagens = [f for f in os.listdir(PASTA_IMAGENS) if f.lower().endswith(('.png', '.jpg', '.jpeg'))]
    
    for imagem in imagens:
        if imagem in imagens_processadas:
            continue  # Já processada

        caminho_imagem = os.path.join(PASTA_IMAGENS, imagem)
        
        try:
            # Carregar imagem para o Imgur
            uploaded_image = im.upload_image(caminho_imagem, title=imagem)
            # Extrair ID da imagem e forçar link direto
            image_id = uploaded_image.link.split("/")[-1].split(".")[0]
            link_imgur = f"https://i.imgur.com/{image_id}.png"



            # Gerar QR Code
            qr = qrcode.make(link_imgur)
            caminho_qrcode = os.path.join(PASTA_QRCODES, f"{os.path.splitext(imagem)[0]}_qr.png")
            qr.save(caminho_qrcode)

            print(f"Imagem processada: {imagem}")
            print(f"Link Imgur: {link_imgur}")
            print(f"QR Code guardado em: {caminho_qrcode}")

            # Marcar como processada
            imagens_processadas.add(imagem)

        except Exception as e:
            print(f"Erro ao processar a imagem {imagem}: {e}")
    
    # Esperar antes de verificar novamente
    time.sleep(5)