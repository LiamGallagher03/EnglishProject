color backgroundColor = #BABABA;
int slide = 0;
TCircle[] circles = new TCircle[4];
TBox[] textBoxes = new TBox[2];
String[] longStrings = new String[4];
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
    circles[0] = new TCircle(480, 280, 400, "This Medium", 50, #FFFFFF, #000000, #FF0000, 10);
    circles[1] = new TCircle(1440, 280, 400, "Happiness", 50, #FFFFFF, #000000, #FFFF00, 10);
    circles[2] = new TCircle(480, 800, 400, "Work", 50, #FFFFFF, #000000, #00FF00, 10);
    circles[3] = new TCircle(1440, 800, 400, "Conclusion", 50, #FFFFFF, #000000, #0000FF, 10);
    for (TCircle c : circles) c.draw();
    break;
  case 1:
    //x, y, width, height, outsideLength, text, fontSize, textColor, boxColor, strokeWidth, strokeColor 
    textBoxes[0] = new TBox(200, 100, 1520, 200, "Computer Program", 50, #FFFFFF, #000000, 20, #FF0000);
    textBoxes[1] = new TBox(200, 400, 1520, 800, longStrings[0], 40, #FFFFFF, #000000, 20, #FF0000);
    for (TBox box : textBoxes) box.draw();
    checkClick = false;
    break;
  case 2:
    textBoxes[0] = new TBox(200, 100, 1520, 200, "Happiness in Life", 50, #FFFFFF, #000000, 20, #FFFF00);
    textBoxes[1] = new TBox(200, 400, 1520, 800, longStrings[1], 40, #FFFFFF, #000000, 20, #FFFF00);
    for (TBox box : textBoxes) box.draw();
    checkClick = false;
    break;
  case 3:
    textBoxes[0] = new TBox(200, 100, 1520, 200, "Having a Career", 50, #FFFFFF, #000000, 20, #00FF00);
    textBoxes[1] = new TBox(200, 400, 1520, 800, longStrings[2], 40, #FFFFFF, #000000, 20, #00FF00);
    for (TBox box : textBoxes) box.draw();
    checkClick = false;
    break;
  case 4:
    textBoxes[0] = new TBox(200, 100, 1520, 200, "How It All Ties Together", 50, #FFFFFF, #000000, 20, #0000FF);
    textBoxes[1] = new TBox(200, 400, 1520, 800, longStrings[3], 40, #FFFFFF, #000000, 20, #0000FF);
    for (TBox box : textBoxes) box.draw();
    checkClick = false;
    break;
  }
}

public void mouseReleased() {
  if (slide == 0) {
    for (int i = 0; i < 4; i++) {
      if (circles[i].hoveringOver()) {
        checkClick = true;
        backgroundColor = #000000;
        slide = i + 1;
        System.out.print(slide);
        
      }
    }
  }
  if (slide == 1 && checkClick == false) {
    backgroundColor = #BABABA;
    checkClick = true;
    slide = 0;
  }
  if (slide == 2 && checkClick == false) {
    backgroundColor = #BABABA;
    checkClick = true;
    slide = 0;
  }
  if (slide == 3 && checkClick == false) {
    backgroundColor = #BABABA;
    checkClick = true;
    slide = 0;
  }
  if (slide == 4 && checkClick == false) {
    backgroundColor = #BABABA;
    checkClick = true;
    slide = 0;
  }
}

public void setStrings() {
  longStrings[0] = "I have always loved computers since I was seven years old. In addition to this, I always excelled in several mathematical subjects and topics. With these two interests, it only makes sense that I would make the medium regarding my philosophy computer-related. I choose to code the entirety of this instead of doing a simple Google Slide show. The code for this is available on GitHub, using the link I submitted.";
  longStrings[1] = "Generally speaking, everyone in life wants to be happy. No one wants to go out of their way to feel the negative emotions (sadness, anger, etc.), so living a happy life is a common goal amongst everyone. Being happy is fairly simple for most people, but maintaining that happiness throughout life is an entirely different problem.";
  longStrings[2] = "Later in life, most of us will have life-long occupations; some of us will even pursue higher education. It is important that you feel comfortable with the career that you will have for the rest of your life. Some people are very regretful in their occupation and believe it is too late to change. Do not be one of these people.";
  longStrings[3] = "In essence, having a career/occupation that you love is very important for your long-term happiness. You do not want to have any regrets when choosing a career. Yes, some may have to make compromises on their dream occupation due to certain circumstances, but there are multiple other pathways that are readily available. I want to enter the computer science industry, so in order to 'practice' my skills and convey my philosophy, I choose to code the entirety of this project. Hopefully, you can also find something that you love doing for your future-career.";
}
