public class TBox { 
  int x, y, w, h, fontSize, outsideLength, strokeWeight;
  String text;
  color textColor, boxColor, strokeColor;
  public TBox(int x, int y, int w, int h, int oL, String t, int fS, color tC, color bC, int sW, color sC) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.outsideLength = oL;
    this.text = t;
    this.textColor = tC;
    this.fontSize = fS;
    this.boxColor = bC;
    this.strokeWeight = sW;
    this.strokeColor = sC;
  }

  public void draw() {
    stroke(strokeColor);
    strokeWeight(strokeWeight);
    fill(boxColor);
    rect(x - outsideLength, y - outsideLength, w, h); 
    textSize(fontSize);
    fill(textColor);
    textAlign(CENTER);
    text(text, x - outsideLength, y - outsideLength, w, h);
  }
}
