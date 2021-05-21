color backgroundColor = #000000;
int slide = 0;
TCircle[] circles = new TCircle[5];
TBox[] textBoxes = new TBox[2];
String[] longStrings = new String[10];
boolean checkClick;

public void setup() {
  fullScreen();
  setStrings();
}

public void draw() {
  background(backgroundColor);
  switch (slide) {
  case 0: 
    //x, y, radius, text, font Size, c of Text, c of Circle, c of Border, 
    circles[0] = new TCircle(192, 150, 200, "This Medium", 25, #000000, #FFFFFF, #FF0000, 10);
    circles[1] = new TCircle(576, 150, 200, "Life", 25, #000000, #FFFFFF, #FF0000, 10);
    circles[2] = new TCircle(960, 150, 200, "Reason", 25, #000000, #FFFFFF, #FF0000, 10);
    circles[3] = new TCircle(1344, 150, 200, "Happiness", 25, #000000, #FFFFFF, #FF0000, 10);
    circles[4] = new TCircle(1728, 150, 200, "test", 25, #000000, #FFFFFF, #FF0000, 10);
    for (TCircle c : circles) c.draw();
    break;
  case 1:
    //x, y, width, height, outsideLength, text, fontSize, textColor, boxColor, strokeWidth, strokeColor 
    textBoxes[0] = new TBox(200, 100, 1520, 200, "Computer Program", 50, #0000FF, #FFFFFF, 20, #FF0000);
    textBoxes[1] = new TBox(200, 400, 1520, 800, longStrings[0], 40, #0000FF, #FFFFFF, 20, #FF0000);
    for (TBox box : textBoxes) box.draw();
    checkClick = false;
    break;
  case 2:
    textBoxes[0] = new TBox(200, 100, 1520, 200, "Philosophy of Life", 50, #0000FF, #FFFFFF, 20, #FF0000);
    textBoxes[1] = new TBox(200, 400, 1520, 800, longStrings[1], 40, #0000FF, #FFFFFF, 20, #FF0000);
    for (TBox box : textBoxes) box.draw();
    checkClick = false;
    break;
  case 3:
    textBoxes[0] = new TBox(200, 100, 1520, 200, "Meaning of Life", 50, #0000FF, #FFFFFF, 20, #FF0000);
    textBoxes[1] = new TBox(200, 400, 1520, 800, longStrings[2], 40, #0000FF, #FFFFFF, 20, #FF0000);
    for (TBox box : textBoxes) box.draw();
    checkClick = false;
    break;
  case 4:
    textBoxes[0] = new TBox(200, 100, 1520, 200, "Essence of Happiness", 50, #0000FF, #FFFFFF, 20, #FF0000);
    textBoxes[1] = new TBox(200, 400, 1520, 800, longStrings[3], 40, #0000FF, #FFFFFF, 20, #FF0000);
    for (TBox box : textBoxes) box.draw();
    checkClick = false;
  }
}

public void mouseReleased() {
  if (slide == 0) {
    for (int i = 0; i < 5; i++) {
      if (circles[i].hoveringOver()) {
        checkClick = true;
        slide = i + 1;
        System.out.print(slide);
      }
    }
  }
  if (slide == 1 && checkClick == false) {
    checkClick = true;
    slide = 0;
  }
  if (slide == 2 && checkClick == false) {
    checkClick = true;
    slide = 0;
  }
  if (slide == 3 && checkClick == false) {
    checkClick = true;
    slide = 0;
  }
}

public void setStrings() {
  longStrings[0] = "I have always loved computers since I was seven years old. In addition to this, I always excelled in several mathematical subjects and topics. With these two interests, it only makes sense that I would make the medium regarding my philosophy computer-related. I choose to code the entirety of this instead of doing a simple Google Slide show. The code for this is available on GitHub, using the link I submitted.";
  longStrings[1] = "Life should be cherished. Nothing is certain after death, so wasting your life would be a terrible idea. In relative to the universe, you are only alive for a mere blink of existence; cherish this blink. Do what you love in life, partake in hobbies you are interested in, and don't hold any regrets on the way.";
  longStrings[2] = "The meaning of life comes down to the individual's own life instead of a grand explanation. If everyone held the same belief of the meaning, then life would become vastly bleak and dull. The true beauty in life is how we are all both the same and different at the same time. We all hold different beliefs, but we are all the same in the grand scheme of things. The only wrong reason for life itself is a lack of reason.";
  longStrings[3] = "";
}
