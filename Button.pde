class Button {
  float x, y, w, h;
  String label;

  Button(float x, float y, float w, float h, String label) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.label = label;
  }

  void desenha(boolean selecionado) {
    fill(255);
    stroke(0);
    if (selecionado) {
      strokeWeight(5);
      stroke(#0C4A8E);
    } else {
      strokeWeight(1);
    }
    rect(x, y, w, h, 10);
    fill(0);
    textAlign(CENTER, CENTER);
    text(label, x + w/2, y + h/2);
  }
}
