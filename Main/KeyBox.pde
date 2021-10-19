boolean pressedUp = false;
boolean pressedDown = false;

class KeyBox {

  void main() {
    addListener();
    substractListener();
  }


  void addListener() {
    if (pressedUp) {
      if ( Key <= 44) Key+=1;
      pressedUp = false;
      pressedDown = false;
    }
  }

  void substractListener() {
    if (pressedDown) {
      if ( Key >= 1) Key-=1;
      pressedUp = false;
      pressedDown = false;
    }
  }
}

void mousePressed() {
  if (overAdd(718, 524)) {
    pressedUp = true;
  }
  if (overSubstract(718, 580)) {
    pressedDown = true;
  }
}

boolean overAdd(float x, float y) {
  if (mouseX > x && mouseX < x + 56 && mouseY > y && mouseY < y + 45) {
    return true;
  } else return false;
}

boolean overSubstract(float x, float y) {
  if (mouseX > x && mouseX < x + 56 && mouseY > y && mouseY < y + 45) {
    return true;
  } else return false;
}
