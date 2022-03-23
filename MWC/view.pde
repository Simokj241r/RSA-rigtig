class View {
  float x, y;
  int tryk = int(key);
  // create a new button with name 'buttonA'
    
  
  
  
  View(float x, float y) {
    this.x = x;
    this.y = y;

    fill(0);
    
    // opret en knap til OK
    cp5.addButton("OK")
     //.setValue(0)
     .setPosition(200,100)
     .setSize(75,40)
     ;
     
     // opret et inputtext felt
   cp5.addTextfield("input")
     .setPosition(20,100)
     .setSize(200,40)
     .setFocus(true)
     .setColor(color(255))
     ;
  }

  void printEncrypt(char encrypt) {
    //text(Encrypted, x, y);
  }
  
  void printDecrypt(char encrypt) {
    //text(Decrypted, x+100, y);
  }
  
  int getKeyboard(){
  return this.tryk;
  }
  
  
  // Metode som er placeret i view for at overholde MVC principper. Den skriver ud ergo er det view
  void setText(String s){
    text(cp5.get(Textfield.class,"input").getText(), 360,130);
  text(s, 360,180);
  }
}
