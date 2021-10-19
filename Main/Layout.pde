// Start Menu
String pathS = "StartMenu//";
PImage[] loadingIcon;
PImage StartMenuText, StartMenuConnectBtn, StartMenuConnectBtnHighlight, ETA;

// Caesar Menu
String pathD = "Dashboard//";
PImage[] keyImages;
PImage HeadText, DecryptRed, DecryptWhite, EncryptRed, EncryptWhite, H_Caesar, Caesar, H_Poly, Poly,
CryptionMethods, BorderMethods, CaesarText, PolyCaesarText, Border,
EncryptionKey, DecryptionKey, KeyField, Up, Down, TextInput, TextInputBox,
DecryptedText, EncryptedText, LastActivity, TextBox, H_TextBox;

class Layout {

  void loadAllImages() {
    loadingIcon = new PImage[3];
    for (int i = 0; i < 3; i++) {
      loadingIcon[i] = loadImage(pathS + "loadingIcon" + i + ".png");
    }
    StartMenuText = loadImage(pathS + "CryptionHeader.png");
    StartMenuConnectBtn = loadImage(pathS + "ConnectButton.png");
    StartMenuConnectBtnHighlight = loadImage(pathS + "HighLightedConnectButton.png");
    ETA = loadImage(pathS + "ETA.png");

    HeadText = loadImage(pathD + "Cryption Program.png");
    DecryptRed = loadImage(pathD + "DECRYPT_R.png");
    DecryptWhite = loadImage(pathD + "DECRYPT_W.png");
    EncryptRed = loadImage(pathD + "ENCRYPT_R.png");
    EncryptWhite = loadImage(pathD + "ENCRYPT_W.png");
    
    H_Poly = loadImage(pathD + "H_Poly.png");
    Poly = loadImage(pathD + "Poly.png");
    H_Caesar = loadImage(pathD + "H_Caesar.png");
    Caesar = loadImage(pathD + "Caesar.png");
    CryptionMethods = loadImage(pathD + "Cryption Methods.png");
    BorderMethods = loadImage(pathD + "BorderMethods.png");
    CaesarText = loadImage(pathD + "CAESARText.png");
    PolyCaesarText = loadImage(pathD + "POLY CAESARText.png");
    Border = loadImage(pathD + "Border.png");
    EncryptionKey = loadImage(pathD + "ENCRYPTION KEY.png");
    KeyField = loadImage(pathD + "KeyField.png");
    Up = loadImage(pathD + "Polygon 1.png");
    Down = loadImage(pathD + "Polygon 2.png");
    TextInput = loadImage(pathD + "Text INPUT.png");
    TextInputBox = loadImage(pathD + "TextInputBox.png");
    DecryptionKey = loadImage(pathD + "DECRYPTION KEY.png");
    EncryptedText = loadImage(pathD + "ENCRYPTED TEXT.png");
    DecryptedText = loadImage(pathD + "DECRYPTED TEXT.png");
    LastActivity = loadImage(pathD + "LAST ACTIVITY.png");
    TextBox = loadImage(pathD + "TextBox.png");
    H_TextBox = loadImage(pathD + "H_Textbox.png");
  

    keyImages = new PImage[46];
    for (int i = 0; i < keyImages.length; i++) {
      keyImages[i] = loadImage(pathD + i + ".png");
    }
  }

  void StartMenu() {
    image(StartMenuText, 480, 130);
    image(StartMenuConnectBtn, 725, 670);
  }

  void Dashboard() {
    image(HeadText, 100, 50);
    image(BorderMethods, 100, 160);
    image(CryptionMethods, 148, 192);
    image(Caesar, 216, 321);
    image(Poly, 216, 456);
    
    if (caesarEncrypt && encryption == "Caesar") {
      image(EncryptRed, 656, 50);
      image(DecryptWhite, 1006, 50);
    } else if (!caesarEncrypt && encryption == "Caesar") {
      image(EncryptWhite, 656, 50);
      image(DecryptRed, 1006, 50);
    }
  }
}
