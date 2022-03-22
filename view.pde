class View {
  float x, y;
  int tryk = int(key);
  View(float x, float y) {
    this.x = x;
    this.y = y;

    fill(0);
  }

  void printEncrypt(char encrypt) {
    text(Encrypted, x, y);
  }
  
  void printDecrypt(char encrypt) {
    text(Decrypted, x+100, y);
  }
  
  int getKeyboard(){
  return this.tryk;
  }
}
