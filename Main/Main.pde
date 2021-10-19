private static final byte countdown = 10;
private static int seconds, startTime;

boolean CountDownTimer = false;
String encryption = "Caesar";
boolean caesarEncrypt = true;

int Key = 3;

int state;
Layout layout = new Layout();
TextField textfield = new TextField();
KeyBox keybox = new KeyBox();
CAESAR caesar = new CAESAR();
Poly poly = new Poly();

String[] abc = {"a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "1", "2", "3", "4", "5", "6", "7", "8", "9", "!", "@", "#", "£", "$", "&", "¤", "?", "/", "\\"};
String[] splitText;
String data = "";


void setup() {
  fullScreen();
  startTime = millis()/1000 + countdown;
  layout.loadAllImages();
}


void draw() {
  background(#545252);
  if (state == 0) {
    layout.StartMenu();
    OnConnectClick(725, 670, 471, 142);
    HighLightConnect(725, 670, 471, 142);

    if (CountDownTimer) {
      seconds = startTime - millis()/1000;

      if (seconds < 0) {
        state = 1;
      } else {
        image(loadingIcon[frameCount%3], 881, 400);
        delay(400);
      }
      if (seconds > 0) {
        image(ETA, 820, 614);
        textSize(35);
        text(seconds <= 1 ? seconds + " second left" : seconds + " seconds left", 920, 645);
      }
    }
  }



  if (state == 1) {
    layout.Dashboard();
    HighLightButtons();
    HighLightTextBoxes();
    onClickButtons();
    onClickEncryptHandler();
    onPageHandler();
    keybox.main();
  }
}

void onPageHandler() {
  image(Border, 656, 160);

  //DecryptedText, EncryptedText, LastActivity, TextBox;
  if (encryption == "Caesar" && caesarEncrypt) {
    image(CaesarText, 1126, 179);
    image(TextInput, 724, 251);
    image(TextInputBox, 724, 318);
    image(EncryptionKey, 724, 468);
    image(Up, 718, 524);
    image(Down, 718, 580);
    image(KeyField, 796, 527);

    for (int i = 0; i < 46; i++) {
      int x = 834;
      if (i == Key) {
        if (Key >= 10) x = x - 14;
        image(keyImages[i], x, 540);
      }
    }

    image(EncryptedText, 718, 713);
    image(TextBox, 718, 765);
    //  image(LastActivity, 718, 866);

    // text field handler
    textfield.caesarEncryptField();
    onUpdateEncryptionText();
  } else if (encryption == "Caesar" && !caesarEncrypt) {
    image(CaesarText, 1126, 179);
    image(TextInput, 724, 251);
    image(TextInputBox, 724, 318);
    image(DecryptionKey, 724, 468);
    image(Up, 718, 524);
    image(Down, 718, 580);
    image(KeyField, 796, 527);

    for (int i = 0; i < 46; i++) {
      int x = 834;
      if (i == Key) {
        if (Key >= 10) x = x - 14;
        image(keyImages[i], x, 540);
      }
    }
    image(DecryptedText, 718, 713);
    image(TextBox, 718, 765);
    //image(LastActivity, 718, 866);

    // text field handler
    textfield.caesarDecryptField();
    onUpdateDecryptionText();
  } else if (encryption == "Poly") {
    image(PolyCaesarText, 1038, 179);
    image(TextInput, 724, 251);
    image(TextInputBox, 724, 318);

    image(EncryptedText, 718, 713);
    image(TextBox, 718, 765);
    // image(LastActivity, 718, 866);

    // text field handler
    textfield.polyCaesarField();
    textSize(35);
    text(polyCrypted, 765, 785, 1020, 90);
  }
}

void onUpdatePolyText() {
  poly.encryption(Polyraw);
}

void onUpdateEncryptionText() {
  caesar.encryption(raw);
  textSize(35);
  text(encrypted, 765, 785, 1020, 90);
}

void onUpdateDecryptionText() {
  caesar.decryption(Decryptraw);
  textSize(35);
  text(decrypted, 765, 785, 1020, 90);
}

void onClickEncryptHandler() {
  if (mousePressed) {
    if (mouseX > 656 && mouseX < 656 + 210 && mouseY > 51 && mouseY < 51 + 64) {
      caesarEncrypt = true;
    }
    if (mouseX > 1006 && mouseX < 1006 + 210 && mouseY > 51 && mouseY < 51 + 64) {
      caesarEncrypt = false;
    }
  }
}

void onClickButtons() {
  if (mousePressed) {
    if (mouseX > 216 && mouseX < 216 + 248 && mouseY > 321 && mouseY < 321 + 75) {
      encryption = "Caesar";
    }

    if (mouseX > 216 && mouseX < 216 + 248 && mouseY > 456 && mouseY < 456 + 75) {
      encryption = "Poly";
    }
  }
}




void HighLightTextBoxes() {
  if (encryption == "Caesar") {
    if (editable) {
      image(H_TextBox, 724, 318);
    } else image(TextBox, 724, 318);

    if (mouseX > 724 && mouseX < 724 + 1020 && mouseY > 318 && mouseY < 318 + 90) {
      image(H_TextBox, 724, 318);
    }
  }
  if (encryption == "Poly") {
    if (editable) {
      image(H_TextBox, 724, 318);
    } else image(TextBox, 724, 318);

    if (mouseX > 724 && mouseX < 724 + 1020 && mouseY > 318 && mouseY < 318 + 90) {
      image(H_TextBox, 724, 318);
    }
  }
}

void HighLightButtons() {
  if (mouseX > 216 && mouseX < 216 + 248 && mouseY > 321 && mouseY < 321 + 75) {
    image(H_Caesar, 216, 321);
  } else image(Caesar, 216, 321);

  if (mouseX > 216 && mouseX < 216 + 248 && mouseY > 456 && mouseY < 456 + 75) {
    image(H_Poly, 216, 456);
  } else image(Poly, 216, 456);

  if (encryption == "Caesar") {
    image(H_Caesar, 216, 321);
    image(Poly, 216, 456);
  } else if (encryption == "Poly") {
    image(Caesar, 216, 321);
    image(H_Poly, 216, 456);
  }
}

void OnConnectClick(float x, float y, float w, float h) {
  if (mousePressed && !CountDownTimer) {
    if (mouseX > x && mouseX < x + w) {
      if (mouseY > y && mouseY < y + h) {
        CountDownTimer = true;
      }
    }
  }
}

void HighLightConnect(float x, float y, float w, float h) {
  if (!CountDownTimer) {
    if (mouseX > x && mouseX < x + w) {
      if (mouseY > y && mouseY < y + h) {
        image(StartMenuConnectBtnHighlight, x, y);
      }
    }
  }
}




// count down timer starts before click event - bug
