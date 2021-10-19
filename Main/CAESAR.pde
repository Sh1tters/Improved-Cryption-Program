String encrypted = "";
String decrypted = "";


String[] splitEncryptText;

int endofAbc = 0;

class CAESAR {
  void encryption(String text) {
    splitText = text.split("");
    encrypted = "";
    for (int a = 0; a < splitText.length; a++) {
      for (int i = 0; i < abc.length; i++) {

        if (splitText[a].equalsIgnoreCase(abc[i])) {
          if (i + Key >= abc.length) {
            endofAbc = 1;
            int index = Math.abs(abc.length - Key - i);
            encrypted = encrypted + abc[index];
            endofAbc = 0;
          } else if (endofAbc != 1) {
            encrypted = encrypted + abc[i + Key];
          }
        }
      }
      if (splitText[a].equalsIgnoreCase(" ")) {
        encrypted = encrypted + " ";
      }
    }
  }
  
  void decryption(String text) {
    // decryption
    splitEncryptText = text.split("");
    decrypted = "";
    for (int a = 0; a < splitEncryptText.length; a++) {
      for (int i = 0; i < abc.length; i++) {
        if (splitEncryptText[a].equalsIgnoreCase(abc[i])) {
          if (i - Key <= -1) {
            endofAbc = 1;

            int index = Math.abs(abc.length - Key + i);
            decrypted = decrypted + abc[index];
            endofAbc = 0;
          } else if (endofAbc != 1) {
            decrypted = decrypted + abc[i - Key];
          }
        }
      }
      if (splitEncryptText[a].equalsIgnoreCase(" ")) {
        decrypted = decrypted +  " ";
      }
    }
  }
}
