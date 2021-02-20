//responsible for creation and function of buttons 
class Buttons {
  boolean stop;
  Ball[] molecules;
  int moleculeCount; //used to manipulate number of concurrent molecules

  Buttons(Ball[] mol) {
    stop = false;
    molecules = mol;
    moleculeCount = 1; //used to manipulate number of concurrent molecules
  }

  void draw() {

    fill(#C60A0A);
    rect(50, 50, 130, 100);
    textSize(20);
    fill(200);
    text("Start or Stop", 75, 70, 120, 120);


    fill(#A30AC6);
    rect(630, 50, 120, 120); //reset pos and number of molecules
    textSize(20);
    fill(210);
    text("Reset", 655, 90, 120, 120);

    fill(#1800A5);
    rect(630, 630, 120, 120); //increaseSpeed
    textSize(20);
    fill(220);
    text("Increase Velocity", 640, 660, 120, 120);

    fill(#00A530);
    rect(50, 630, 120, 120); //decreaseSpeed
    textSize(25);
    fill(230);
    text("Decrease Velocity", 55, 658, 120, 120);

    fill(#91A500);
    rect(400, 660, 60, 60); // increase molecule (by one)
    textSize(15);
    fill(240);
    text("+Ball", 420, 670, 700, 60);

    fill(#C98402);
    rect(400, 50, 60, 60); // decrease molecule (by one)
    textSize(15);
    fill(250);
    text("-Ball", 410, 70, 60, 60);
  }

  void mouseclick() {
    if ((mouseX >= 630) && (mouseX <= 750) && (mouseY >= 630) && (mouseY <= 750)) { //increase every ball speed
      for (int iii = 0; iii < 5; iii++) {
        molecules[iii].increaseSpeed();
      }
    }



    
      if ((mouseX >= 50) && (mouseX <= 170) && (mouseY >= 50) && (mouseY <= 170)) { //Pause & Resume      
      if (stop == false) {
        stop = true; //allows for resuming
        noLoop();
      } else {
        loop();
        stop = false;
      }
    }

    if ((mouseX >= 50) && (mouseX <= 170) && (mouseY >= 630) && (mouseY <= 750)) { //decrease every ball speed
      for (int ii = 0; ii < 5; ii++) {
        molecules[ii].decreaseSpeed();
      }
    }

    if ((mouseX >= 655) && (mouseX <= 775) && (mouseY >= 90) && (mouseY <= 210)) { //resets ball from different angle
      loop();
      stop = false;
      for (int i = 0; i < 5; i++) {
        moleculeCount = 1; //used to change number of reset molecules
        molecules[i].reset();
      }
    }

    if ((mouseX >= 420) && (mouseX <= 480) && (mouseY >= 70) && (mouseY <= 190)) { //decreases ball amount
      if (moleculeCount > 1) {
        moleculeCount--;
      }
    }

    if ((mouseX >= 420) && (mouseX <= 480) && (mouseY >= 670) && (mouseY <= 690)) { //increases ball amount

      if (moleculeCount < 5) {
        moleculeCount++;
      }
    }
  }
}