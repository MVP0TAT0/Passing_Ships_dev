int qrCodeIndex = 0;

void gerarQRCode() {
  String scriptPath = sketchPath("upload_and_generate_qr.py"); // Caminho absoluto do script
  File workingDir = new File(sketchPath());   // Define a pasta do sketch como diretoria de trabalho

  println("A executar:", scriptPath);

  try {
    ProcessBuilder pb = new ProcessBuilder("python", scriptPath);
    pb.directory(workingDir); // Define a diretoria correta
    pb.redirectErrorStream(true);

    Process p = pb.start();

    BufferedReader reader = new BufferedReader(new InputStreamReader(p.getInputStream()));
    String line;
    while ((line = reader.readLine()) != null) {
      println("stdout:", line);
    }

    p.waitFor();
    println("Script terminado.");
  }
  catch (Exception e) {
    e.printStackTrace();
  }
}

void gerarQRCodeAsync() {
  Thread thread = new Thread(new Runnable() {
    public void run() {
      gerarQRCode();  // chama a função que já tens
    }
  }
  );
  thread.start();
}

void carregarUltimoQRCode() {
  String filename = "image_" + nf(qrCodeIndex, 4) + "_qr.png";
  String filepath = sketchPath("qrcodes/" + filename);
  
  File file = new File(filepath);
  if (file.exists()) {
    QRCode = loadImage(filepath);
    println("QR carregado: " + filename);
  } else {
    println("QR não encontrado: " + filename);
    QRCode = null;
  }
}
