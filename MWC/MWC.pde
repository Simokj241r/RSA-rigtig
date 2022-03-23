import controlP5.*; // importer GUI bibliotek

View v;
//skal have et tal fra view og derefter sende det til controller, ved ikke hvordan jeg gør det
int tast;

ControlP5 cp5; // Deklarerer cp5 af type ControlP5 

Model m = new Model();

float n;

String textValue = ""; // til at teste tekstfelter



void setup() {
  cp5 = new ControlP5(this); //initier cp5;
  size(800, 600);
  textSize(24);

  // initiering af mit view
  v = new View(100, 100);
}

void draw(){
  background(0);
  fill(255);
  // udskriv tekst fra felt til skærm
  v.setText(textValue);
}

// dette er en event som fanger hvis der bliver trykket på knappen eller alle knapper -> den kan kalde en funktion 
void controlEvent(ControlEvent theEvent) {
  if(theEvent.isAssignableFrom(Textfield.class)) {
    println("controlEvent: accessing a string from controller '"
            +theEvent.getName()+"': "
            +theEvent.getStringValue()
            );
  }
}

// funktion som bliver udført når der trykkes på knappen. Bemærk funktionen hedder det samme som knappen
public void OK(int theValue) {
  println("a button event from OK: "+theValue);
  
 
}
