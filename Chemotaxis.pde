Dot[] myDot; // Global Variable that will be an array
void setup() {
  size(600, 600);

  myDot = new Dot[15];// This is create 15 Dots
  for (int i=0; i<myDot.length; i++) {// This is the for loop that will control each of the new dots
    myDot[i] = new Dot();// creates the new dot
  }
}
void draw() {
  background (0);
  for (int i = 0; i < myDot.length; i++ ) { // This is the for loop that tells teh dots to do the show and move function
    myDot[i].move(); // functions declared int eh class
    myDot[i].show();
  }
}




class Dot {
  int myX, myY, ellipseSize, C;// class variables
  Dot() {
    myX = 300;
    myY = 300;
    ellipseSize  = (int) (Math.random() *50) +10;// definings the variables, this one to a random number
  }
  void move() {
    if (myX < mouseX) {   // check if I'm to the left of the mouse
      myX = myX + (int)(Math.random() * 12) - 2;  // more likely to get a positive number (ie. move to right)
    } 
    else {  // I'm to the right of the mouse
      myX = myX + (int)(Math.random() * 12) - 8; // more likely to get a negative number (ie. move to the left)
    }
    if (myY < mouseY) {   // check if I'm to the left of the mouse
      myY = myY + (int)(Math.random() * 12) - 2;  // more likely to get a positive number (ie. move to right)
    } 
    else {  // I'm to the right of the mouse
      myY = myY + (int)(Math.random() * 12) - 8; // more likely to get a negative number (ie. move to the left)
    }

    C = (int) (Math.random() * 255) +1;
  }
  void show() {
    fill(C);

    ellipse(myX, myY, ellipseSize, ellipseSize);// builds the ellipse
  }
}
