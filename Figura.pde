class Figura {
  int animal, item, barco, bg, mar, badge;
  int borda;

  Figura(int _bg, int _animal, int _item, int _barco, int _mar, int _badge) {
    bg = _bg;
    animal = _animal;
    item = _item;
    barco = _barco;
    mar = _mar;
    badge = _badge;

    borda = int(random(1, 6));
  }

  void desenha() {

    // Bg
    if (bg == 1) {
      bg_1();
    } else if (bg == 2) {
      bg_2();
    } else if (bg == 3) {
      bg_3();
    } else if (bg == 4) {
      bg_4();
    } else if (bg == 5) {
      bg_5();
    }

    // Se for barco 5, desenhar antes do corpo
    if (barco == 5) {
      image(barco_5, 233, 300, 550, 550);
    }

    // Animal
    if (animal == 1) {
      cauda_1();
      corpo_1();
      if (item == 1) {
        cabeça_1();
        item1_1();
      } else if (item == 2) {
        cabeça_1();
        item1_2();
      } else if (item == 3) {
        cabeça_1();
        item1_3();
      } else if (item == 4) {
        item1_4();
        cabeça_1();
      } else if (item == 5) {
        item1_5();
        cabeça_1();
      }
    } else if (animal == 2) {
      corpo_2();
      if (item == 1) {
        cabeça_2();
        item2_1();
      } else if (item == 2) {
        cabeça_2();
        item2_2();
      } else if (item == 3) {
        cabeça_2();
        item2_3();
      } else if (item == 4) {
        item2_4();
        cabeça_2();
      } else if (item == 5) {
        item2_5();
        cabeça_2();
      }
    } else if (animal == 3) {
      corpo_3();
      if (item == 1) {
        cabeça_3();
        item3_1();
      } else if (item == 2) {
        cabeça_3();
        item3_2();
      } else if (item == 3) {
        cabeça_3();
        item3_3();
      } else if (item == 4) {
        item3_4();
        cabeça_3();
      } else if (item == 5) {
        item3_5();
        cabeça_3();
      }
    } else if (animal == 4) {
      corpo_4();
      if (item == 1) {
        cabeça_4();
        item4_1();
      } else if (item == 2) {
        cabeça_4();
        item4_2();
      } else if (item == 3) {
        cabeça_4();
        item4_3();
      } else if (item == 4) {
        item4_4();
        cabeça_4();
      } else if (item == 5) {
        item4_5();
        cabeça_4();
      }
    } else if (animal == 5) {
      cauda_5();
      corpo_5();
      if (item == 1) {
        cabeça_5();
        item5_1();
      } else if (item == 2) {
        cabeça_5();
        item5_2();
      } else if (item == 3) {
        cabeça_5();
        item5_3();
      } else if (item == 4) {
        item5_4();
        cabeça_5();
      } else if (item == 5) {
        item5_5();
        cabeça_5();
      }
    } else if (animal == 6) {
      cauda_6();
      corpo_6();
      if (item == 1) {
        cabeça_6();
        item6_1();
      } else if (item == 2) {
        cabeça_6();
        item6_2();
      } else if (item == 3) {
        cabeça_6();
        item6_3();
      } else if (item == 4) {
        item6_4();
        cabeça_6();
      } else if (item == 5) {
        item6_5();
        cabeça_6();
      }
    } else if (animal == 7) {
      cauda_7();
      corpo_7();
      if (item == 1) {
        cabeça_7();
        item7_1();
      } else if (item == 2) {
        cabeça_7();
        item7_2();
      } else if (item == 3) {
        cabeça_7();
        item7_3();
      } else if (item == 4) {
        item7_4();
        cabeça_7();
      } else if (item == 5) {
        item7_5();
        cabeça_7();
      }
    } else if (animal == 8) {
      corpo_8();
      if (item == 1) {
        cabeça_8();
        item8_1();
      } else if (item == 2) {
        cabeça_8();
        item8_2();
      } else if (item == 3) {
        cabeça_8();
        item8_3();
      } else if (item == 4) {
        item8_4();
        cabeça_8();
      } else if (item == 5) {
        item8_5();
        cabeça_8();
      }
    } else if (animal == 9) {
      corpo_9();
      if (item == 1) {
        cabeça_9();
        item9_1();
      } else if (item == 2) {
        cabeça_9();
        item9_2();
      } else if (item == 3) {
        cabeça_9();
        item9_3();
      } else if (item == 4) {
        item9_4();
        cabeça_9();
      } else if (item == 5) {
        item9_5();
        cabeça_9();
      }
    }

    // Barco
    if (barco == 1) {
      image(barco_1, 224, 300, 550, 550);
    } else if (barco == 2) {
      image(barco_2, 203, 300, 585, 585);
    } else if (barco == 3) {
      image(barco_3, 224, 300, 550, 550);
    } else if (barco == 4) {
      image(barco_4, 224, 300, 550, 550);
    }

    // Mar
    if (mar == 1) {
      imageMode(CENTER);
      image(mar_1, width/2, height/2+300, 550, 550);
      imageMode(CORNER);
    } else if (mar == 2) {
      imageMode(CENTER);
      image(mar_2, width/2, height/2+300, 530, 530);
      imageMode(CORNER);
    } else if (mar == 3) {
      imageMode(CENTER);
      image(mar_3, width/2, height/2+300, 530, 530);
      imageMode(CORNER);
    } else if (mar == 4) {
      imageMode(CENTER);
      image(mar_4, width/2, height/2+300, 530, 530);
      imageMode(CORNER);
    } else if (mar == 5) {
      imageMode(CENTER);
      image(mar_5, width/2+20, height/2+350, 630, 630);
      imageMode(CORNER);
    }

    // Borda
    image(borda_image[borda - 1], 0, 0);

    // Badge
    if (badge >= 1 && badge <= 36) {
      image(badge_image[badge - 1], 15, 0);
    }
  }



  // Cauda
  void cauda_1() {
    image(cauda_1, 250-10, 300, 550, 550);
  }

  void cauda_5() {
    image(cauda_5, 250-10, 300, 550, 550);
  }

  void cauda_6() {
    image(cauda_6, 250-10, 300, 550, 550);
  }

  void cauda_7() {
    image(cauda_7, 250-10, 300, 550, 550);
  }


  // Bg
  void bg_1() {
    imageMode(CENTER);
    image(bg_1, width/2, height/2+100, 700, 700);
    imageMode(CORNER);
  }

  void bg_2() {
    imageMode(CENTER);
    image(bg_2, width/2, height/2+100, 700, 700);
    imageMode(CORNER);
  }

  void bg_3() {
    imageMode(CENTER);
    image(bg_3, width/2, height/2+100, 700, 700);
    imageMode(CORNER);
  }

  void bg_4() {
    imageMode(CENTER);
    image(bg_4, width/2, height/2+100, 700, 700);
    imageMode(CORNER);
  }

  void bg_5() {
    imageMode(CENTER);
    image(bg_5, width/2, height/2+100, 700, 700);
    imageMode(CORNER);
  }

  // Corpo
  void corpo_1() {
    tint(#F2B738);
    image(corpo_1, 233-10, 300, 550, 550);
    noTint();
  }

  void corpo_2() {
    tint(#713D24);
    image(corpo_1, 233-10, 300, 550, 550);
    noTint();
  }

  void corpo_3() {
    tint(#6A9BD2);
    image(corpo_1, 233-10, 300, 550, 550);
    noTint();
  }

  void corpo_4() {
    tint(#EF8054);
    image(corpo_1, 233-10, 300, 550, 550);
    noTint();
  }

  void corpo_5() {
    tint(#7A4429);
    image(corpo_1, 233-10, 300, 550, 550);
    noTint();
  }

  void corpo_6() {
    tint(#E84534);
    image(corpo_1, 233-10, 300, 550, 550);
    noTint();
  }

  void corpo_7() {
    tint(#37B0E4);
    image(corpo_1, 233-10, 300, 550, 550);
    noTint();
  }

  void corpo_8() {
    tint(#F5B1B0);
    image(corpo_1, 233-10, 300, 550, 550);
    noTint();
  }

  void corpo_9() {
    tint(#E6B17F);
    image(corpo_1, 233-10, 300, 550, 550);
    noTint();
  }

  void cabeça_1() {
    image(cabeça_1, 233-10, -20+350, 550, 550);
  }

  void cabeça_2() {
    image(cabeça_2, 233-10, -20+350, 550, 550);
  }

  void cabeça_3() {
    image(cabeça_3, 233-10, -20+350, 550, 550);
  }

  void cabeça_4() {
    image(cabeça_4, 233-10, -20+350, 550, 550);
  }

  void cabeça_5() {
    image(cabeça_5, 233-10, -20+350, 550, 550);
  }

  void cabeça_6() {
    image(cabeça_6, 233-10, -20+350, 550, 550);
  }

  void cabeça_7() {
    image(cabeça_7, 233-10, -20+350, 550, 550);
  }

  void cabeça_8() {
    image(cabeça_8, 233-10, -20+350, 550, 550);
  }

  void cabeça_9() {
    image(cabeça_9, 233-10, -20+350, 550, 550);
  }

  // Item 1
  void item1_1() {
    image(item1_1, 233-10, 350, 550, 550);
  }
  void item1_2() {
    image(item1_2, 233-10, 325, 550, 500);
  }
  void item1_3() {
    image(item1_3, 234, 325, 550-30, 550-30);
  }
  void item1_4() {
    image(item1_4, 233-6, 315, 550-30, 550-30);
  }
  void item1_5() {
    image(item1_5, 233+28, 325, 550-40, 550-40);
  }
  // Item 2
  void item2_1() {
    image(item2_1, 233-10, 350, 550, 550);
  }
  void item2_2() {
    image(item2_2, 233-10, 325, 550, 500);
  }
  void item2_3() {
    image(item2_3, 234, 325, 550-30, 550-30);
  }
  void item2_4() {
    image(item2_4, 233-6, 315, 550-30, 550-30);
  }
  void item2_5() {
    image(item2_5, 233+28, 325, 550-40, 550-40);
  }
  // Item 3
  void item3_1() {
    image(item3_1, 233-10, 350, 550, 550);
  }
  void item3_2() {
    image(item3_2, 233-10, 325, 550, 500);
  }
  void item3_3() {
    image(item3_3, 234, 325, 550-30, 550-30);
  }
  void item3_4() {
    image(item3_4, 233-6, 315, 550-30, 550-30);
  }
  void item3_5() {
    image(item3_5, 233+28, 325, 550-40, 550-40);
  }
  // Item 4
  void item4_1() {
    image(item4_1, 233-10, 350, 550, 550);
  }
  void item4_2() {
    image(item4_2, 233-10, 325, 550, 500);
  }
  void item4_3() {
    image(item4_3, 234, 325, 550-30, 550-30);
  }
  void item4_4() {
    image(item4_4, 233-6, 315, 550-30, 550-30);
  }
  void item4_5() {
    image(item4_5, 233+28, 325, 550-40, 550-40);
  }
  // Item 5
  void item5_1() {
    image(item2_1, 233-10, 350, 550, 550);
  }
  void item5_2() {
    image(item2_2, 233-10, 325, 550, 500);
  }
  void item5_3() {
    image(item2_3, 234, 325, 550-30, 550-30);
  }
  void item5_4() {
    image(item2_4, 233-6, 315, 550-30, 550-30);
  }
  void item5_5() {
    image(item2_5, 233+28, 325, 550-40, 550-40);
  }
  // Item 6
  void item6_1() {
    image(item6_1, 233-10, 350, 550, 550);
  }
  void item6_2() {
    image(item6_2, 233-10, 325, 550, 500);
  }
  void item6_3() {
    image(item6_3, 234, 325, 550-30, 550-30);
  }
  void item6_4() {
    image(item6_4, 233-6, 315, 550-30, 550-30);
  }
  void item6_5() {
    image(item6_5, 233+28, 325, 550-40, 550-40);
  }
  // Item 7
  void item7_1() {
    image(item7_1, 233-10, 350, 550, 550);
  }
  void item7_2() {
    image(item7_2, 233-10, 325, 550, 500);
  }
  void item7_3() {
    image(item7_3, 234, 325, 550-30, 550-30);
  }
  void item7_4() {
    image(item7_4, 233-6, 315, 550-30, 550-30);
  }
  void item7_5() {
    image(item7_5, 233+28, 325, 550-40, 550-40);
  }
  // Item 8
  void item8_1() {
    image(item8_1, 233-10, 350, 550, 550);
  }
  void item8_2() {
    image(item8_2, 233-10, 325, 550, 500);
  }
  void item8_3() {
    image(item8_3, 234, 325, 550-30, 550-30);
  }
  void item8_4() {
    image(item8_4, 233-6, 315, 550-30, 550-30);
  }
  void item8_5() {
    image(item8_5, 233+28, 325, 550-40, 550-40);
  }
  // Item 9
  void item9_1() {
    image(item9_1, 233-10, 350, 550, 550);
  }
  void item9_2() {
    image(item9_2, 233-10, 325, 550, 500);
  }
  void item9_3() {
    image(item9_3, 234, 325, 550-30, 550-30);
  }
  void item9_4() {
    image(item9_4, 233-6, 315, 550-30, 550-30);
  }
  void item9_5() {
    image(item9_5, 233+28, 325, 550-40, 550-40);
  }

  // Barco
  void barco_1() {
    image(barco_1, 233, 350, 550, 550);
  }

  void barco_2() {
    image(barco_2, 0, 0);
  }

  void barco_3() {
    image(barco_3, 0, 0);
  }

  void barco_4() {
    image(barco_4, 0, 0);
  }

  void barco_5() {
    image(barco_5, 0, 0);
  }


  void mar_2() {
    imageMode(CENTER);
    image(mar_2, width/2, height/2+350, 500, 500);
    imageMode(CORNER);
  }

  void mar_3() {
    imageMode(CENTER);
    image(mar_3, width/2, height/2+350, 500, 500);
    imageMode(CORNER);
  }

  void mar_4() {
    imageMode(CENTER);
    image(mar_4, width/2, height/2+350, 500, 500);
    imageMode(CORNER);
  }

  void mar_5() {
    imageMode(CENTER);
    image(mar_5, width/2, height/2+350, 500, 500);
    imageMode(CORNER);
  }
}

void saveImagemIncremental() {
  File pasta = new File(sketchPath("imagens_geradas"));
  if (!pasta.exists()) pasta.mkdirs();

  int numero = 1;
  String nomeFicheiro;

  do {
    nomeFicheiro = "image_" + nf(numero, 4) + ".png";
  } while (new File(pasta, nomeFicheiro).exists() && numero++ < 10000);

  save(sketchPath("imagens_geradas/" + nomeFicheiro));
  println("Imagem guardada como: " + nomeFicheiro);
}
