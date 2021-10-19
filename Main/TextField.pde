String raw = "";
String Decryptraw = "";
String Polyraw = "";
boolean editable = false;
boolean newKey = false;
boolean keysPressed = false;

class TextField {

  void polyCaesarField() {
    activetext(724, 318, 1020, 90);
    Polytextfieldcontroller();

    textSize(35);
    text(Polyraw, 765, 340, 950, 45);
  }

  void polyCaesarTextField(String kword) {
    if (newKey) {
      Polyraw = Polyraw + kword;
      newKey = false;
      onUpdatePolyText();
    }
  }

  void polyCaesarTextFieldDeleteText() {
    if (newKey) {
      if (Polyraw.length() >= 1) {
        Polyraw = Polyraw.substring(0, Polyraw.length() - 1);
        println(polyCrypted);
        polyCrypted = polyCrypted.substring(0, polyCrypted.length() - 1);
        println(polyCrypted);
        newKey = false;
      }
    }
  }

  void caesarDecryptField() {
    activetext(724, 318, 1020, 90);
    Decrypttextfieldcontroller();

    textSize(35);
    text(Decryptraw, 765, 340, 950, 45);
  }

  void caesarDecryptTextField(String kword) {
    if (newKey) {
      Decryptraw = Decryptraw + kword;
      newKey = false;
    }
  }

  void caesarDecryptTextFieldDeleteText() {
    if (newKey) {
      if (Decryptraw.length() >= 1) {
        Decryptraw = Decryptraw.substring(0, Decryptraw.length() - 1);
        newKey = false;
      }
    }
  }


  void caesarEncryptField() {
    activetext(724, 318, 1020, 90);
    Encrypttextfieldcontroller();

    textSize(35);
    text(raw, 765, 340, 950, 45);
  }

  void caesarEncryptTextField(String kword) {
    if (newKey) {
      raw = raw + kword;
      newKey = false;
    }
  }
  void caesarEncryptTextFieldDeleteText() {
    if (newKey) {
      if (raw.length() >= 1) {
        raw = raw.substring(0, raw.length() - 1);
        newKey = false;
      }
    }
  }

  void activetext(float x, float y, float w, float h) {
    if (mousePressed) {
      // check if user pressed on the text field box
      if (mouseX > x && mouseX <( x + w) && mouseY > y && mouseY < (y + h)) {
        editable = true;
      } else {
        editable = false;
      }
    }
  }

  void Polytextfieldcontroller() {
    if (keysPressed && editable) {
      if (key == BACKSPACE) {
        newKey = true;
        polyCaesarTextFieldDeleteText();
        keysPressed = false;
      }
      if (key == ENTER) {
        editable = false;
        keysPressed = false;
      }
      if (key == '1') {
        newKey = true;
        polyCaesarTextField("1");
        keysPressed = false;
      } else if (key == '2') {
        newKey = true;
        polyCaesarTextField("2");
        keysPressed = false;
      } else if (key == '3') {
        newKey = true;
        polyCaesarTextField("3");
        keysPressed = false;
      } else if (key == '4') {
        newKey = true;
        polyCaesarTextField("4");
        keysPressed = false;
      } else if (key == '5') {
        newKey = true;
        polyCaesarTextField("5");
        keysPressed = false;
      } else if (key == '6') {
        newKey = true;
        polyCaesarTextField("6");
        keysPressed = false;
      } else if (key == '7') {
        newKey = true;
        polyCaesarTextField("7");
        keysPressed = false;
      } else if (key == '8') {
        newKey = true;
        polyCaesarTextField("8");
        keysPressed = false;
      } else if (key == '9') {
        newKey = true;
        polyCaesarTextField("9");
        keysPressed = false;
      } else if (key == '!') {
        newKey = true;
        polyCaesarTextField("!");
        keysPressed = false;
      } else if (key == '@') {
        newKey = true;
        polyCaesarTextField("@");
        keysPressed = false;
      } else if (key == '#') {
        newKey = true;
        polyCaesarTextField("#");
        keysPressed = false;
      } else if (key == '£') {
        newKey = true;
        polyCaesarTextField("£");
        keysPressed = false;
      } else if (key == '$') {
        newKey = true;
        polyCaesarTextField("$");
        keysPressed = false;
      } else if (key == '&') {
        newKey = true;
        polyCaesarTextField("&");
        keysPressed = false;
      } else if (key == '¤') {
        newKey = true;
        polyCaesarTextField("¤");
        keysPressed = false;
      } else if (key == '?') {
        newKey = true;
        polyCaesarTextField("?");
        keysPressed = false;
      } else if (key == '/') {
        newKey = true;
        polyCaesarTextField("/");
        keysPressed = false;
      } else if (key == '\\') {
        newKey = true;
        polyCaesarTextField("\\");
        keysPressed = false;
      } else if (key == 'a') {
        newKey = true;
        polyCaesarTextField("a");
        keysPressed = false;
      } else if (key == 'b') {
        newKey = true;
        polyCaesarTextField("b");
        keysPressed = false;
      } else if (key == 'c') {
        newKey = true;
        polyCaesarTextField("c");
        keysPressed = false;
      } else if (key == 'd') {
        newKey = true;
        polyCaesarTextField("d");
        keysPressed = false;
      } else if (key == 'e') {
        newKey = true;
        polyCaesarTextField("e");
        keysPressed = false;
      } else if (key == 'f') {
        newKey = true;
        polyCaesarTextField("f");
        keysPressed = false;
      } else if (key == 'g') {
        newKey = true;
        polyCaesarTextField("g");
        keysPressed = false;
      } else if (key == 'h') {
        newKey = true;
        polyCaesarTextField("h");
        keysPressed = false;
      } else if (key == 'i') {
        newKey = true;
        polyCaesarTextField("i");
        keysPressed = false;
      } else if (key == 'j') {
        newKey = true;
        polyCaesarTextField("j");
        keysPressed = false;
      } else if (key == 'k') {
        newKey = true;
        polyCaesarTextField("k");
        keysPressed = false;
      } else if (key == 'l') {
        newKey = true;
        polyCaesarTextField("l");
        keysPressed = false;
      } else if (key == 'm') {
        newKey = true;
        polyCaesarTextField("m");
        keysPressed = false;
      } else if (key == 'n') {
        newKey = true;
        polyCaesarTextField("n");
        keysPressed = false;
      } else if (key == 'o') {
        newKey = true;
        polyCaesarTextField("o");
        keysPressed = false;
      } else if (key == 'p') {
        newKey = true;
        polyCaesarTextField("p");
        keysPressed = false;
      } else if (key == 'q') {
        newKey = true;
        polyCaesarTextField("q");
        keysPressed = false;
      } else if (key == 'r') {
        newKey = true;
        polyCaesarTextField("r");
        keysPressed = false;
      } else if (key == 's') {
        newKey = true;
        polyCaesarTextField("s");
        keysPressed = false;
      } else if (key == 't') {
        newKey = true;
        polyCaesarTextField("t");
        keysPressed = false;
      } else if (key == 'u') {
        newKey = true;
        polyCaesarTextField("u");
        keysPressed = false;
      } else if (key == 'v') {
        newKey = true;
        polyCaesarTextField("v");
        keysPressed = false;
      } else if (key == 'w') {
        newKey = true;
        polyCaesarTextField("w");
        keysPressed = false;
      } else if (key == 'x') {
        newKey = true;
        polyCaesarTextField("x");
        keysPressed = false;
      } else if (key == 'y') {
        newKey = true;
        polyCaesarTextField("y");
        keysPressed = false;
      } else if (key == 'z') {
        newKey = true;
        polyCaesarTextField("z");
        keysPressed = false;
      } else if (key == 'A') {
        newKey = true;
        polyCaesarTextField("A");
        keysPressed = false;
      } else if (key == 'B') {
        newKey = true;
        polyCaesarTextField("B");
        keysPressed = false;
      } else if (key == 'C') {
        newKey = true;
        polyCaesarTextField("C");
        keysPressed = false;
      } else if (key == 'D') {
        newKey = true;
        polyCaesarTextField("D");
        keysPressed = false;
      } else if (key == 'E') {
        newKey = true;
        polyCaesarTextField("E");
        keysPressed = false;
      } else if (key == 'F') {
        newKey = true;
        polyCaesarTextField("F");
        keysPressed = false;
      } else if (key == 'G') {
        newKey = true;
        polyCaesarTextField("G");
        keysPressed = false;
      } else if (key == 'H') {
        newKey = true;
        polyCaesarTextField("H");
        keysPressed = false;
      } else if (key == 'I') {
        newKey = true;
        polyCaesarTextField("I");
        keysPressed = false;
      } else if (key == 'J') {
        newKey = true;
        polyCaesarTextField("J");
        keysPressed = false;
      } else if (key == 'K') {
        newKey = true;
        polyCaesarTextField("K");
        keysPressed = false;
      } else if (key == 'L') {
        newKey = true;
        polyCaesarTextField("L");
        keysPressed = false;
      } else if (key == 'M') {
        newKey = true;
        polyCaesarTextField("M");
        keysPressed = false;
      } else if (key == 'N') {
        newKey = true;
        polyCaesarTextField("N");
        keysPressed = false;
      } else if (key == 'O') {
        newKey = true;
        polyCaesarTextField("O");
        keysPressed = false;
      } else if (key == 'P') {
        newKey = true;
        polyCaesarTextField("P");
        keysPressed = false;
      } else if (key == 'Q') {
        newKey = true;
        polyCaesarTextField("Q");
        keysPressed = false;
      } else if (key == 'R') {
        newKey = true;
        polyCaesarTextField("R");
        keysPressed = false;
      } else if (key == 'S') {
        newKey = true;
        polyCaesarTextField("S");
        keysPressed = false;
      } else if (key == 'T') {
        newKey = true;
        polyCaesarTextField("T");
        keysPressed = false;
      } else if (key == 'U') {
        newKey = true;
        polyCaesarTextField("U");
        keysPressed = false;
      } else if (key == 'V') {
        newKey = true;
        polyCaesarTextField("V");
        keysPressed = false;
      } else if (key == 'W') {
        newKey = true;
        polyCaesarTextField("W");
        keysPressed = false;
      } else if (key == 'X') {
        newKey = true;
        polyCaesarTextField("X");
        keysPressed = false;
      } else if (key == 'Y') {
        newKey = true;
        polyCaesarTextField("Y");
        keysPressed = false;
      } else if (key == 'Z') {
        newKey = true;
        polyCaesarTextField("Z");
        keysPressed = false;
      } else if (key == ' ') {
        newKey = true;
        polyCaesarTextField(" ");
        keysPressed = false;
      }
    }
  }

  void Decrypttextfieldcontroller() {
    if (keysPressed && editable) {
      if (key == BACKSPACE) {
        newKey = true;
        caesarDecryptTextFieldDeleteText();
        keysPressed = false;
      }
      if (key == ENTER) {
        editable = false;
        keysPressed = false;
      }
      if (key == '1') {
        newKey = true;
        caesarDecryptTextField("1");
        keysPressed = false;
      } else if (key == '2') {
        newKey = true;
        caesarDecryptTextField("2");
        keysPressed = false;
      } else if (key == '3') {
        newKey = true;
        caesarDecryptTextField("3");
        keysPressed = false;
      } else if (key == '4') {
        newKey = true;
        caesarDecryptTextField("4");
        keysPressed = false;
      } else if (key == '5') {
        newKey = true;
        caesarDecryptTextField("5");
        keysPressed = false;
      } else if (key == '6') {
        newKey = true;
        caesarDecryptTextField("6");
        keysPressed = false;
      } else if (key == '7') {
        newKey = true;
        caesarDecryptTextField("7");
        keysPressed = false;
      } else if (key == '8') {
        newKey = true;
        caesarDecryptTextField("8");
        keysPressed = false;
      } else if (key == '9') {
        newKey = true;
        caesarDecryptTextField("9");
        keysPressed = false;
      } else if (key == '!') {
        newKey = true;
        caesarDecryptTextField("!");
        keysPressed = false;
      } else if (key == '@') {
        newKey = true;
        caesarDecryptTextField("@");
        keysPressed = false;
      } else if (key == '#') {
        newKey = true;
        caesarDecryptTextField("#");
        keysPressed = false;
      } else if (key == '£') {
        newKey = true;
        caesarDecryptTextField("£");
        keysPressed = false;
      } else if (key == '$') {
        newKey = true;
        caesarDecryptTextField("$");
        keysPressed = false;
      } else if (key == '&') {
        newKey = true;
        caesarDecryptTextField("&");
        keysPressed = false;
      } else if (key == '¤') {
        newKey = true;
        caesarDecryptTextField("¤");
        keysPressed = false;
      } else if (key == '?') {
        newKey = true;
        caesarDecryptTextField("?");
        keysPressed = false;
      } else if (key == '/') {
        newKey = true;
        caesarDecryptTextField("/");
        keysPressed = false;
      } else if (key == '\\') {
        newKey = true;
        caesarDecryptTextField("\\");
        keysPressed = false;
      } else if (key == 'a') {
        newKey = true;
        caesarDecryptTextField("a");
        keysPressed = false;
      } else if (key == 'b') {
        newKey = true;
        caesarDecryptTextField("b");
        keysPressed = false;
      } else if (key == 'c') {
        newKey = true;
        caesarDecryptTextField("c");
        keysPressed = false;
      } else if (key == 'd') {
        newKey = true;
        caesarDecryptTextField("d");
        keysPressed = false;
      } else if (key == 'e') {
        newKey = true;
        caesarDecryptTextField("e");
        keysPressed = false;
      } else if (key == 'f') {
        newKey = true;
        caesarDecryptTextField("f");
        keysPressed = false;
      } else if (key == 'g') {
        newKey = true;
        caesarDecryptTextField("g");
        keysPressed = false;
      } else if (key == 'h') {
        newKey = true;
        caesarDecryptTextField("h");
        keysPressed = false;
      } else if (key == 'i') {
        newKey = true;
        caesarDecryptTextField("i");
        keysPressed = false;
      } else if (key == 'j') {
        newKey = true;
        caesarDecryptTextField("j");
        keysPressed = false;
      } else if (key == 'k') {
        newKey = true;
        caesarDecryptTextField("k");
        keysPressed = false;
      } else if (key == 'l') {
        newKey = true;
        caesarDecryptTextField("l");
        keysPressed = false;
      } else if (key == 'm') {
        newKey = true;
        caesarDecryptTextField("m");
        keysPressed = false;
      } else if (key == 'n') {
        newKey = true;
        caesarDecryptTextField("n");
        keysPressed = false;
      } else if (key == 'o') {
        newKey = true;
        caesarDecryptTextField("o");
        keysPressed = false;
      } else if (key == 'p') {
        newKey = true;
        caesarDecryptTextField("p");
        keysPressed = false;
      } else if (key == 'q') {
        newKey = true;
        caesarDecryptTextField("q");
        keysPressed = false;
      } else if (key == 'r') {
        newKey = true;
        caesarDecryptTextField("r");
        keysPressed = false;
      } else if (key == 's') {
        newKey = true;
        caesarDecryptTextField("s");
        keysPressed = false;
      } else if (key == 't') {
        newKey = true;
        caesarDecryptTextField("t");
        keysPressed = false;
      } else if (key == 'u') {
        newKey = true;
        caesarDecryptTextField("u");
        keysPressed = false;
      } else if (key == 'v') {
        newKey = true;
        caesarDecryptTextField("v");
        keysPressed = false;
      } else if (key == 'w') {
        newKey = true;
        caesarDecryptTextField("w");
        keysPressed = false;
      } else if (key == 'x') {
        newKey = true;
        caesarDecryptTextField("x");
        keysPressed = false;
      } else if (key == 'y') {
        newKey = true;
        caesarDecryptTextField("y");
        keysPressed = false;
      } else if (key == 'z') {
        newKey = true;
        caesarDecryptTextField("z");
        keysPressed = false;
      } else if (key == 'A') {
        newKey = true;
        caesarDecryptTextField("A");
        keysPressed = false;
      } else if (key == 'B') {
        newKey = true;
        caesarDecryptTextField("B");
        keysPressed = false;
      } else if (key == 'C') {
        newKey = true;
        caesarDecryptTextField("C");
        keysPressed = false;
      } else if (key == 'D') {
        newKey = true;
        caesarDecryptTextField("D");
        keysPressed = false;
      } else if (key == 'E') {
        newKey = true;
        caesarDecryptTextField("E");
        keysPressed = false;
      } else if (key == 'F') {
        newKey = true;
        caesarDecryptTextField("F");
        keysPressed = false;
      } else if (key == 'G') {
        newKey = true;
        caesarDecryptTextField("G");
        keysPressed = false;
      } else if (key == 'H') {
        newKey = true;
        caesarDecryptTextField("H");
        keysPressed = false;
      } else if (key == 'I') {
        newKey = true;
        caesarDecryptTextField("I");
        keysPressed = false;
      } else if (key == 'J') {
        newKey = true;
        caesarDecryptTextField("J");
        keysPressed = false;
      } else if (key == 'K') {
        newKey = true;
        caesarDecryptTextField("K");
        keysPressed = false;
      } else if (key == 'L') {
        newKey = true;
        caesarDecryptTextField("L");
        keysPressed = false;
      } else if (key == 'M') {
        newKey = true;
        caesarDecryptTextField("M");
        keysPressed = false;
      } else if (key == 'N') {
        newKey = true;
        caesarDecryptTextField("N");
        keysPressed = false;
      } else if (key == 'O') {
        newKey = true;
        caesarDecryptTextField("O");
        keysPressed = false;
      } else if (key == 'P') {
        newKey = true;
        caesarDecryptTextField("P");
        keysPressed = false;
      } else if (key == 'Q') {
        newKey = true;
        caesarDecryptTextField("Q");
        keysPressed = false;
      } else if (key == 'R') {
        newKey = true;
        caesarDecryptTextField("R");
        keysPressed = false;
      } else if (key == 'S') {
        newKey = true;
        caesarDecryptTextField("S");
        keysPressed = false;
      } else if (key == 'T') {
        newKey = true;
        caesarDecryptTextField("T");
        keysPressed = false;
      } else if (key == 'U') {
        newKey = true;
        caesarDecryptTextField("U");
        keysPressed = false;
      } else if (key == 'V') {
        newKey = true;
        caesarDecryptTextField("V");
        keysPressed = false;
      } else if (key == 'W') {
        newKey = true;
        caesarDecryptTextField("W");
        keysPressed = false;
      } else if (key == 'X') {
        newKey = true;
        caesarDecryptTextField("X");
        keysPressed = false;
      } else if (key == 'Y') {
        newKey = true;
        caesarDecryptTextField("Y");
        keysPressed = false;
      } else if (key == 'Z') {
        newKey = true;
        caesarDecryptTextField("Z");
        keysPressed = false;
      } else if (key == ' ') {
        newKey = true;
        caesarDecryptTextField(" ");
        keysPressed = false;
      }
    }
  }

  void Encrypttextfieldcontroller() {
    if (keysPressed && editable) {
      if (key == BACKSPACE) {
        newKey = true;
        caesarEncryptTextFieldDeleteText();
        keysPressed = false;
      }
      if (key == ENTER) {
        editable = false;
        keysPressed = false;
      }
      if (key == '1') {
        newKey = true;
        caesarEncryptTextField("1");
        keysPressed = false;
      } else if (key == '2') {
        newKey = true;
        caesarEncryptTextField("2");
        keysPressed = false;
      } else if (key == '3') {
        newKey = true;
        caesarEncryptTextField("3");
        keysPressed = false;
      } else if (key == '4') {
        newKey = true;
        caesarEncryptTextField("4");
        keysPressed = false;
      } else if (key == '5') {
        newKey = true;
        caesarEncryptTextField("5");
        keysPressed = false;
      } else if (key == '6') {
        newKey = true;
        caesarEncryptTextField("6");
        keysPressed = false;
      } else if (key == '7') {
        newKey = true;
        caesarEncryptTextField("7");
        keysPressed = false;
      } else if (key == '8') {
        newKey = true;
        caesarEncryptTextField("8");
        keysPressed = false;
      } else if (key == '9') {
        newKey = true;
        caesarEncryptTextField("9");
        keysPressed = false;
      } else if (key == '!') {
        newKey = true;
        caesarEncryptTextField("!");
        keysPressed = false;
      } else if (key == '@') {
        newKey = true;
        caesarEncryptTextField("@");
        keysPressed = false;
      } else if (key == '#') {
        newKey = true;
        caesarEncryptTextField("#");
        keysPressed = false;
      } else if (key == '£') {
        newKey = true;
        caesarEncryptTextField("£");
        keysPressed = false;
      } else if (key == '$') {
        newKey = true;
        caesarEncryptTextField("$");
        keysPressed = false;
      } else if (key == '&') {
        newKey = true;
        caesarEncryptTextField("&");
        keysPressed = false;
      } else if (key == '¤') {
        newKey = true;
        caesarEncryptTextField("¤");
        keysPressed = false;
      } else if (key == '?') {
        newKey = true;
        caesarEncryptTextField("?");
        keysPressed = false;
      } else if (key == '/') {
        newKey = true;
        caesarEncryptTextField("/");
        keysPressed = false;
      } else if (key == '\\') {
        newKey = true;
        caesarEncryptTextField("\\");
        keysPressed = false;
      } else if (key == 'a') {
        newKey = true;
        caesarEncryptTextField("a");
        keysPressed = false;
      } else if (key == 'b') {
        newKey = true;
        caesarEncryptTextField("b");
        keysPressed = false;
      } else if (key == 'c') {
        newKey = true;
        caesarEncryptTextField("c");
        keysPressed = false;
      } else if (key == 'd') {
        newKey = true;
        caesarEncryptTextField("d");
        keysPressed = false;
      } else if (key == 'e') {
        newKey = true;
        caesarEncryptTextField("e");
        keysPressed = false;
      } else if (key == 'f') {
        newKey = true;
        caesarEncryptTextField("f");
        keysPressed = false;
      } else if (key == 'g') {
        newKey = true;
        caesarEncryptTextField("g");
        keysPressed = false;
      } else if (key == 'h') {
        newKey = true;
        caesarEncryptTextField("h");
        keysPressed = false;
      } else if (key == 'i') {
        newKey = true;
        caesarEncryptTextField("i");
        keysPressed = false;
      } else if (key == 'j') {
        newKey = true;
        caesarEncryptTextField("j");
        keysPressed = false;
      } else if (key == 'k') {
        newKey = true;
        caesarEncryptTextField("k");
        keysPressed = false;
      } else if (key == 'l') {
        newKey = true;
        caesarEncryptTextField("l");
        keysPressed = false;
      } else if (key == 'm') {
        newKey = true;
        caesarEncryptTextField("m");
        keysPressed = false;
      } else if (key == 'n') {
        newKey = true;
        caesarEncryptTextField("n");
        keysPressed = false;
      } else if (key == 'o') {
        newKey = true;
        caesarEncryptTextField("o");
        keysPressed = false;
      } else if (key == 'p') {
        newKey = true;
        caesarEncryptTextField("p");
        keysPressed = false;
      } else if (key == 'q') {
        newKey = true;
        caesarEncryptTextField("q");
        keysPressed = false;
      } else if (key == 'r') {
        newKey = true;
        caesarEncryptTextField("r");
        keysPressed = false;
      } else if (key == 's') {
        newKey = true;
        caesarEncryptTextField("s");
        keysPressed = false;
      } else if (key == 't') {
        newKey = true;
        caesarEncryptTextField("t");
        keysPressed = false;
      } else if (key == 'u') {
        newKey = true;
        caesarEncryptTextField("u");
        keysPressed = false;
      } else if (key == 'v') {
        newKey = true;
        caesarEncryptTextField("v");
        keysPressed = false;
      } else if (key == 'w') {
        newKey = true;
        caesarEncryptTextField("w");
        keysPressed = false;
      } else if (key == 'x') {
        newKey = true;
        caesarEncryptTextField("x");
        keysPressed = false;
      } else if (key == 'y') {
        newKey = true;
        caesarEncryptTextField("y");
        keysPressed = false;
      } else if (key == 'z') {
        newKey = true;
        caesarEncryptTextField("z");
        keysPressed = false;
      } else if (key == 'A') {
        newKey = true;
        caesarEncryptTextField("A");
        keysPressed = false;
      } else if (key == 'B') {
        newKey = true;
        caesarEncryptTextField("B");
        keysPressed = false;
      } else if (key == 'C') {
        newKey = true;
        caesarEncryptTextField("C");
        keysPressed = false;
      } else if (key == 'D') {
        newKey = true;
        caesarEncryptTextField("D");
        keysPressed = false;
      } else if (key == 'E') {
        newKey = true;
        caesarEncryptTextField("E");
        keysPressed = false;
      } else if (key == 'F') {
        newKey = true;
        caesarEncryptTextField("F");
        keysPressed = false;
      } else if (key == 'G') {
        newKey = true;
        caesarEncryptTextField("G");
        keysPressed = false;
      } else if (key == 'H') {
        newKey = true;
        caesarEncryptTextField("H");
        keysPressed = false;
      } else if (key == 'I') {
        newKey = true;
        caesarEncryptTextField("I");
        keysPressed = false;
      } else if (key == 'J') {
        newKey = true;
        caesarEncryptTextField("J");
        keysPressed = false;
      } else if (key == 'K') {
        newKey = true;
        caesarEncryptTextField("K");
        keysPressed = false;
      } else if (key == 'L') {
        newKey = true;
        caesarEncryptTextField("L");
        keysPressed = false;
      } else if (key == 'M') {
        newKey = true;
        caesarEncryptTextField("M");
        keysPressed = false;
      } else if (key == 'N') {
        newKey = true;
        caesarEncryptTextField("N");
        keysPressed = false;
      } else if (key == 'O') {
        newKey = true;
        caesarEncryptTextField("O");
        keysPressed = false;
      } else if (key == 'P') {
        newKey = true;
        caesarEncryptTextField("P");
        keysPressed = false;
      } else if (key == 'Q') {
        newKey = true;
        caesarEncryptTextField("Q");
        keysPressed = false;
      } else if (key == 'R') {
        newKey = true;
        caesarEncryptTextField("R");
        keysPressed = false;
      } else if (key == 'S') {
        newKey = true;
        caesarEncryptTextField("S");
        keysPressed = false;
      } else if (key == 'T') {
        newKey = true;
        caesarEncryptTextField("T");
        keysPressed = false;
      } else if (key == 'U') {
        newKey = true;
        caesarEncryptTextField("U");
        keysPressed = false;
      } else if (key == 'V') {
        newKey = true;
        caesarEncryptTextField("V");
        keysPressed = false;
      } else if (key == 'W') {
        newKey = true;
        caesarEncryptTextField("W");
        keysPressed = false;
      } else if (key == 'X') {
        newKey = true;
        caesarEncryptTextField("X");
        keysPressed = false;
      } else if (key == 'Y') {
        newKey = true;
        caesarEncryptTextField("Y");
        keysPressed = false;
      } else if (key == 'Z') {
        newKey = true;
        caesarEncryptTextField("Z");
        keysPressed = false;
      } else if (key == ' ') {
        newKey = true;
        caesarEncryptTextField(" ");
        keysPressed = false;
      }
    }
  }
}

void keyPressed() {
  keysPressed = true;
}
