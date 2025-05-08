import com.cage.zxing4p3.*;
ZXING4P zxing4p;

// Classes
Button[] button_1;
Button[] button_2;
Button[] button_3;
Figura [] figura;

// Variáveis
int animal, item, barco, bg, mar, cena, badge;
int seleção = 0;
boolean saved = false;

String[] palavra = { "Simpática", "Social", "Única", "Graciosa", "Musical", "Empática", "Calorosa", "Linda", "Perigosa",
  "Amarga", "Fofa", "Justa", "Faz-tudo", "Saudável", "Animada", "Honesta", "Feliz", "De ajudar", "Ocupada",
  "De ordem", "Calma", "Cansada", "Triste", "Curiosa", "Criativa", "Forte", "Fria", "Caótica", "Teimosa",
  "Generosa", "Dedicada", "Chata", "Relaxada", "Artística", "Divertida", "Gulosa",
};

PImage
  bg_1, bg_2, bg_3, bg_4, bg_5,
  corpo_1,
  cabeça_1, cabeça_2, cabeça_3, cabeça_4, cabeça_5, cabeça_6, cabeça_7, cabeça_8, cabeça_9,
  item1_1, item1_2, item1_3, item1_4, item1_5,
  item2_1, item2_2, item2_3, item2_4, item2_5,
  item3_1, item3_2, item3_3, item3_4, item3_5,
  item4_1, item4_2, item4_3, item4_4, item4_5,
  item6_1, item6_2, item6_3, item6_4, item6_5,
  item7_1, item7_2, item7_3, item7_4, item7_5,
  item8_1, item8_2, item8_3, item8_4, item8_5,
  item9_1, item9_2, item9_3, item9_4, item9_5,
  barco_1, barco_2, barco_3, barco_4, barco_5,
  mar_1, mar_2, mar_3, mar_4, mar_5,
  cauda_1, cauda_5, cauda_6, cauda_7;

PImage[] badge_image = new PImage[36];

PImage[] borda_image = new PImage[9];

PImage QRCode;

void setup() {
  size(1000, 1000);

  button_1 = new Button[9];
  button_2 = new Button[5];
  button_3 = new Button[36];
  figura = new Figura [1];

  // QRCode
  zxing4p = new ZXING4P();
  zxing4p.version();

  String text = "https://mega.nz/folder/BIwjma5D#1gwhg3G2fTed2C8RI8BpZA/imagem_0001";

  try {
    QRCode = zxing4p.generateQRCode(text, width, height);
  }
  catch (Exception e) {
    println("Exception: "+e);
    QRCode = null;
  }

  bg_1 = loadImage("bg_1.png");
  bg_2 = loadImage("bg_2.png");
  bg_3 = loadImage("bg_3.png");
  bg_4 = loadImage("bg_4.png");
  bg_5 = loadImage("bg_5.png");
  corpo_1 = loadImage("corpo_1.png");
  cabeça_1 = loadImage("cabeça_1.png");
  cabeça_2 = loadImage("cabeça_2.png");
  cabeça_3 = loadImage("cabeça_3.png");
  cabeça_4 = loadImage("cabeça_4.png");
  cabeça_5 = loadImage("cabeça_5.png");
  cabeça_6 = loadImage("cabeça_6.png");
  cabeça_7 = loadImage("cabeça_7.png");
  cabeça_8 = loadImage("cabeça_8.png");
  cabeça_9 = loadImage("cabeça_9.png");
  item1_1 = loadImage("item1_1.png");
  item1_2 = loadImage("item1_2.png");
  item1_3 = loadImage("item1_3.png");
  item1_4 = loadImage("item1_4.png");
  item1_5 = loadImage("item1_5.png");
  item2_1 = loadImage("item2_1.png");
  item2_2 = loadImage("item2_2.png");
  item2_3 = loadImage("item2_3.png");
  item2_4 = loadImage("item2_4.png");
  item2_5 = loadImage("item2_5.png");
  item3_1 = loadImage("item3_1.png");
  item3_2 = loadImage("item3_2.png");
  item3_3 = loadImage("item3_3.png");
  item3_4 = loadImage("item3_4.png");
  item3_5 = loadImage("item3_5.png");
  item4_1 = loadImage("item4_1.png");
  item4_2 = loadImage("item4_2.png");
  item4_3 = loadImage("item4_3.png");
  item4_4 = loadImage("item4_4.png");
  item4_5 = loadImage("item4_5.png");
  item6_1 = loadImage("item6_1.png");
  item6_2 = loadImage("item6_2.png");
  item6_3 = loadImage("item6_3.png");
  item6_4 = loadImage("item6_4.png");
  item6_5 = loadImage("item6_5.png");
  item7_1 = loadImage("item7_1.png");
  item7_2 = loadImage("item7_2.png");
  item7_3 = loadImage("item7_3.png");
  item7_4 = loadImage("item7_4.png");
  item7_5 = loadImage("item7_5.png");
  item8_1 = loadImage("item8_1.png");
  item8_2 = loadImage("item8_2.png");
  item8_3 = loadImage("item8_3.png");
  item8_4 = loadImage("item8_4.png");
  item8_5 = loadImage("item8_5.png");
  item9_1 = loadImage("item9_1.png");
  item9_2 = loadImage("item9_2.png");
  item9_3 = loadImage("item9_3.png");
  item9_4 = loadImage("item9_4.png");
  item9_5 = loadImage("item9_5.png");
  barco_1 = loadImage("barco_1.png");
  barco_2 = loadImage("barco_2.png");
  barco_3 = loadImage("barco_3.png");
  barco_4 = loadImage("barco_4.png");
  barco_5 = loadImage("barco_5.png");
  mar_1 = loadImage("mar_1.png");
  mar_2 = loadImage("mar_2.png");
  mar_3 = loadImage("mar_3.png");
  mar_4 = loadImage("mar_4.png");
  mar_5 = loadImage("mar_5.png");
  cauda_1 = loadImage("cauda_1.png");
  cauda_5 = loadImage("cauda_5.png");
  cauda_6 = loadImage("cauda_6.png");
  cauda_7 = loadImage("cauda_7.png");

  for (int i = 0; i < badge_image.length; i++) {
    badge_image[i] = loadImage("badge_" + (i+1) + ".png");
  }

  for (int i = 0; i < borda_image.length; i++) {
    borda_image[i] = loadImage("borda_" + (i+1) + ".png");
  }


  // Cálculos para espaçamentos fixos entre botões e a janela
  float margemLateral = 200;
  float espacoEntre = 10;
  float larguraBotao = (width - 2 * margemLateral - 8 * espacoEntre) / 9;
  float y = height/2;

  for (int i = 0; i < 9; i++) {
    float x = margemLateral + i * (larguraBotao + espacoEntre);
    button_1[i] = new Button(x, y, larguraBotao, 50, str(i+1));
  }

  float margemLateral2 = 200;
  float espacoEntre2 = 20;
  float larguraBotao2 = (width - 2 * margemLateral2 - 4 * espacoEntre2) / 5;
  float y2 = height/2;

  for (int i = 0; i < 5; i++) {
    float x = margemLateral2 + i * (larguraBotao2 + espacoEntre2);
    button_2[i] = new Button(x, y2, larguraBotao2, 50, str(i+1));
  }

  float margem = 100;
  float espaco = 10;
  float largura = (width - 2 * margem - 8 * espaco) / 9;
  float altura = 50;

  for (int i = 0; i < 36; i++) {
    int linha = i / 9;
    int coluna = i % 9;
    float x = margem + coluna * (largura + espaco);
    float y3 = 350 + linha * (altura + 20);
    button_3[i] = new Button(x, y3, largura, altura, palavra[i]);
  }
}

void draw() {
  background(200);
  textAlign(CENTER);
  fill(0);

  switch(cena) {
  case 0:
    textSize(32);
    text("Eu considero-me uma pessoa:", width/2, height/2-150);
    textSize(18);
    textAlign(RIGHT);
    text("Competitiva", 185, height/2 + 30);
    textAlign(LEFT);
    text("Agradável", width - 185, height/2 + 30);
    textAlign(CENTER);

    for (int i = 0; i < 9; i++) {
      button_1[i].desenha(i == seleção);
    }
    break;

  case 1:
    textSize(32);
    text("Eu considero-me uma pessoa:", width/2, height/2-200);
    textSize(18);
    textAlign(RIGHT);
    text("Introvertida", 185, height/2 + 30);
    textAlign(LEFT);
    text("Extrovertida", width - 185, height/2 + 30);
    textAlign(CENTER);

    for (int i = 0; i < 5; i++) {
      button_2[i].desenha(i == seleção);
    }
    break;

  case 2:
    textSize(32);
    text("Eu considero-me uma pessoa:", width/2, height/2-200);
    textSize(18);
    textAlign(RIGHT);
    text("Menos aberta a \nexperiências novas", 185, height/2 + 21);

    textAlign(LEFT);
    text("Mais aberta a \nexperiências novas", width - 185, height/2 + 21);

    textAlign(CENTER);

    for (int i = 0; i < 5; i++) {
      button_2[i].desenha(i == seleção);
    }
    break;

  case 3:
    textSize(32);
    text("Eu considero-me uma pessoa:", width/2, height/2-200);
    textSize(18);
    textAlign(RIGHT);
    text("Estável e calma", 185, height/2 + 30);
    textAlign(LEFT);
    text("Frequentemente\npreocupada,\nfacilmente perturbada", width - 185, height/2 + 9);
    textAlign(CENTER);

    for (int i = 0; i < 5; i++) {
      button_2[i].desenha(i == seleção);
    }
    break;

  case 4:
    textSize(32);
    text("Eu considero-me uma pessoa:", width/2, height/2-200);
    textSize(18);
    textAlign(RIGHT);
    text("Arrumada \ne organizada", 185, height/2 + 21);
    textAlign(LEFT);
    text("Abraçada ao caos", width - 185, height/2 + 30);
    textAlign(CENTER);

    for (int i = 0; i < 5; i++) {
      button_2[i].desenha(i == seleção);
    }
    break;

  case 5:
    textSize(32);
    text("Escolha uma palavra que a descreva", width/2, height/2-200);
    textSize(18);

    for (int i = 0; i < 36; i++) {
      button_3[i].desenha(i == seleção);
    }
    break;


  case 6:
    figura[0].desenha();
    if (saved == false) {
      saveImagemIncremental();
      saved = true;
    }
    break;

  case 7: // Download de brinde
    if (QRCode!=null) {
      image(QRCode, 0, 0);
    }
  }
}

void keyPressed() {
  if (cena == 0) {
    if (keyCode == LEFT && seleção > 0) {
      seleção--;
    } else if (keyCode == RIGHT && seleção < 8) {
      seleção++;
    } else if (keyCode == ENTER) {
      animal = seleção + 1;
      seleção = 0;
      cena = 1;
    }
  } else if (cena >= 1 && cena <= 4) {
    if (keyCode == LEFT && seleção > 0) {
      seleção--;
    } else if (keyCode == RIGHT && seleção < 4) {
      seleção++;
    } else if (keyCode == ENTER) {
      switch(cena) {
      case 1:
        item = seleção + 1;
        break;
      case 2:
        barco = seleção + 1;
        break;
      case 3:
        bg = seleção + 1;
        break;
      case 4:
        mar = seleção + 1;
        break;
      }
      seleção = 0;
      cena++;
    }
  } else if (cena == 5) {
    if (keyCode == LEFT && seleção > 0) {
      seleção--;
    } else if (keyCode == RIGHT && seleção < 35) {
      seleção++;
    } else if (keyCode == ENTER|| keyCode == ' ') {
      badge = seleção + 1;
      seleção = 0;
      figura[0] = new Figura (bg, animal, item, barco, mar, badge);
      cena = 6;
    }
  } else if (cena == 6) {
    if (keyCode == ENTER|| keyCode == ' ') {
      cena = 7;
    }
  } else if (cena == 7) {
    if (keyCode == ENTER|| keyCode == ' ') {
      saved = false;
      cena = 0;
    }
  }
}
