-import java.awt.Rectangle;

public class TCircle {
  int x, y, r, fontSize, strokeWeight;
  String text;
  color textColor, insideColor, strokeColor;
  public Rectangle clickArea;

  public TCircle(int x, int y, int r, String t, int fS, color tC, color iC, color sC, int sW) {
    this.x = x;
    this.y = y;
    this.r = r;
    this.text = t;
    this.fontSize = fS;
    this.textColor = tC;
    this.insideColor = iC;
    this.strokeColor = sC;
    this.strokeWeight = sW;
    this.clickArea = new Rectangle(x - r, y - r , 2 * r, 2 * r);
  }

  public void draw() {
    stroke(strokeColor);
    strokeWeight(strokeWeight);
    fill(insideColor);
    circle(x, y, r);
    textSize(fontSize);
    fill(textColor);
    textAlign(CENTER);
    text(text, x, y);
  }


  public boolean hoveringOver() {
    return this.clickArea.contains(mouseX, mouseY);
  }
}
