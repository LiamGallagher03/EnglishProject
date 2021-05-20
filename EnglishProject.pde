color backgroundColor = #000000;
int slide = 0;

public void setup() {
  fullScreen();
}

public void draw() {
  background(backgroundColor);

  switch (slide) {
  case 0: 
    TBox egg = new TBox(30, 30, 200, 300, 15, "egg", 20, #FFFFFF, #000000, 3, #FFFFFF);
    egg.draw();
    break;
  }
}
