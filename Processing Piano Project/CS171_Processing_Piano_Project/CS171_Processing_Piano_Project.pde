// importing the sound library, this library enables the use of sound and audio files and without it the piano loses its main purpose
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
 
 // most of this code is adapted from my lab8 drum code which was my guide as it uses the mouse cursor to click on circles and get a sound from them
 // unlike the drum code my code prgrams the mouse to click on the exact key/flat that the sound should come from and notthe region/quadrant it comes from
 
Minim minim; 
// the 12 audio files that are used in this code which consist of 7 mp3 audio files and 5 wav audio files
AudioSample k1; 
AudioSample k2; 
AudioSample k3; 
AudioSample k4;
AudioSample k5;
AudioSample k6;
AudioSample k7;
AudioSample f1;
AudioSample f2;
AudioSample f3;
AudioSample f4;
AudioSample f5;

AudioOutput out; 
 
// track when a key has been struck 
boolean key1; 
boolean key2; 
boolean key3; 
boolean key4;
boolean key5;
boolean key6;
boolean key7;
boolean flat1;
boolean flat2;
boolean flat3;
boolean flat4;
boolean flat5;

void setup()
{
    // initialize the screen 
  size(800,800);
  smooth(); 
  
  // initialize sound 
  minim = new Minim(this); 
  out = minim.getLineOut(); 
  
  // this is the code used to import the audio files into the code
  k1 = minim.loadSample("key1.mp3"); 
  k2 = minim.loadSample("key2.mp3");
  k3 = minim.loadSample("key3.mp3");
  k4 = minim.loadSample("key4.mp3");
  k5 = minim.loadSample("key5.mp3");
  k6 = minim.loadSample("key6.mp3");
  k7 = minim.loadSample("key7.mp3");
  f1 = minim.loadSample("flat1.wav");
  f2 = minim.loadSample("flat2.wav");
  f3 = minim.loadSample("flat3.wav");
  f4 = minim.loadSample("flat4.wav");
  f5 = minim.loadSample("flat5.wav");

  // set boolean variables to initialize the graphics 
  // the boolean idea was adapted from my lab8 drum code
  key1 = false; 
  key2 = false; 
  key3 = false; 
  key4 = false;
  key5 = false;
  key6 = false;
  key7 = false;
  flat1 = false;
  flat2 = false;
  flat3 = false;
  flat4 = false;
  flat5 = false;
}

void draw()
{
  background(128); // making the colour of the background grey
  
  // THIS IS THE HEADING OF THE CODE
  textSize(64); // size of the piano text
  fill(0); // colour of the piano text
  text("PIANO", 325, 100); // positioning of the piano text
  
  //the keys are being drawn. If they are struck then they will change colour, if not they will remain white
  // key 1 
  if (key1 == true) { 
    fill(192); // the colour the key changes to when it has been struck 
    key1 = false; 
  } else { 
    fill(255);  //key remains the same colour when not struck
  } 
  rect(85, 150, 90, 500); // positioning the and drawing the first key 
  
    // key 2 
  if (key2 == true) { 
    fill(192);  // the colour the key changes to when it has been struck
    key2 = false; 
  } else { 
    fill(255);  //key remains the same colour when not struck
  }
  rect(175, 150, 90, 500); // positioning and drawing the second key
  
    // key 3 
  if (key3 == true) { 
    fill(192);  // the colour the key changes to when it has been struck
    key3 = false; 
  } else { 
    fill(255);  //key remains the same colour when not struck
  }
  rect(265, 150, 90, 500); // positioning and drawing the third key
  
    // key 4 
  if (key4 == true) { 
    fill(192);  // the colour the key changes to when it has been struck
    key4 = false; 
  } else { 
    fill(255);  //key remains the same colour when not struck
  }
  rect(355, 150, 90, 500); // positioning and drawing the fourth key
  
    // key 5 
  if (key5 == true) { 
    fill(192);  // the colour the key changes to when it has been struck
    key5 = false; 
  } else { 
    fill(255);  //key remains the same colour when not struck
  }
  rect(445, 150, 90, 500); // positioning and drawing the fifth key
  
    // key 6 
  if (key6 == true) { 
    fill(192);  // the colour the key changes to when it has been struck
    key6 = false; 
  } else { 
    fill(255);  //key remains the same colour when not struck
  }
  rect(535, 150, 90, 500); // positioning and drawing the sixth key
  
    // key 7 
  if (key7 == true) { 
    fill(192);  // the colour the key changes to when it has been struck
    key7 = false; 
  } else { 
    fill(255);  //key remains the same colour when not struck
  }
  rect(625, 150, 90, 500); // positioning and drawing the seventh key
  
  //the flats are being drawn. If they are struck then they will change colour, if not they will remain black
      // flat 1 
  if (flat1 == true) { 
    fill(64);  // the colour the flat changes to when it has been struck
    flat1 = false; 
  } else { 
    fill(0);  //flat remains the same colour when not struck
  }
  rect(152.5, 150, 45, 300); // positioning and drawing the first flat key
  
        // flat 2
  if (flat2 == true) { 
    fill(64);  // the colour the flat changes to when it has been struck
    flat2 = false; 
  } else { 
    fill(0);  //flat remains the same colour when not struck
  }
  rect(242.5, 150, 45, 300); // positioning and drawing the second flat key
  
        // flat 3 
  if (flat3 == true) { 
    fill(64);  // the colour the flat changes to when it has been struck
    flat3 = false; 
  } else { 
    fill(0);  //flat remains the same colour when not struck
  }
  rect(422.5, 150, 45, 300); // positioning and drawing the third flat key
  
        // flat 4 
  if (flat4 == true) { 
    fill(64);  // the colour the flat changes to when it has been struck
    flat4 = false; 
  } else { 
    fill(0);  //flat remains the same colour when not struck
  }
  rect(512.5, 150, 45, 300); // positioning and drawing the fourth flat key
  
        // flat 5
  if (flat5 == true) { 
    fill(64);  // the colour the flat changes to when it has been struck
    flat5 = false; 
  } else { 
    fill(0);  //flat remains the same colour when not struck
  }
  rect(602.5, 150, 45, 300); // positioning and drawing the fifth flat key
  
  // this if statement will display the word live anytime the keyboard is being played
  if(mousePressed && mouseX>85 && mouseX<715 && mouseY>150 && mouseY<650)/* where the mouse must click for the live text to be displayed*/{
    textSize(64); // size of the live text
    fill(255, 0, 0); //colour of the live text
    text("LIVE", 600, 100); // positioning of the live text
  }
}

// the mousePressed function gives the user the chance to interact with the piano using their mouse
void mousePressed(){
  if(mouseX>152.5 && mouseX<197.5 && mouseY>150 && mouseY<450)/* where the mouse must click for a sound to be heard*/{
    //triggering the sound
     f1.trigger();
       //set Boolean for flat1 to true 
       flat1 = true; 
  }
  else if(mouseX>242.5 && mouseX<287.5 && mouseY>150 && mouseY<450)/* where the mouse must click for a sound to be heard*/{
    //triggering the sound
     f2.trigger();
       //set Boolean for flat2 to true 
       flat2 = true; 
  }
  else if(mouseX>422.5 && mouseX<467.5 && mouseY>150 && mouseY<450)/* where the mouse must click for a sound to be heard*/{
    //triggering the sound
     f3.trigger();
       //set Boolean for flat3 to true 
       flat3 = true; 
  }
  else if(mouseX>512.5 && mouseX<557.5 && mouseY>150 && mouseY<450)/* where the mouse must click for a sound to be heard*/{
    //triggering the sound
     f4.trigger();
       //set Boolean for flat4 to true 
       flat4 = true; 
  }
  else if(mouseX>602.5 && mouseX<647.5 && mouseY>150 && mouseY<450/* where the mouse must click for a sound to be heard*/){
    //triggering the sound
     f5.trigger();
       //set Boolean for flat5 to true 
       flat5 = true; 
  }
  
  else if(mouseX>85 && mouseX<175 && mouseY>150 && mouseY<650)/* where the mouse must click for a sound to be heard*/{
    //triggering the sound
     k1.trigger();
       //set Boolean for key1 to true 
       key1 = true; 
  }  
  else if(mouseX>175 && mouseX<265 && mouseY>150 && mouseY<650/* where the mouse must click for a sound to be heard*/){
    //triggering the sound
     k2.trigger();
       //set Boolean for key2 to true 
       key2 = true; 
  } 
  else if(mouseX>265 && mouseX<355 && mouseY>150 && mouseY<650)/* where the mouse must click for a sound to be heard*/{
    //triggering the sound
     k3.trigger();
       //set Boolean for key3 to true 
       key3 = true; 
  } 
  else if(mouseX>355 && mouseX<445 && mouseY>150 && mouseY<650)/* where the mouse must click for a sound to be heard*/{
    //triggering the sound
     k4.trigger();
       //set Boolean for key4 to true 
       key4 = true; 
  } 
  else if(mouseX>445 && mouseX<535 && mouseY>150 && mouseY<650)/* where the mouse must click for a sound to be heard*/{
    //triggering the sound
     k5.trigger();
       //set Boolean for key5 to true 
       key5 = true; 
  } 
  else if(mouseX>535 && mouseX<625 && mouseY>150 && mouseY<650)/* where the mouse must click for a sound to be heard*/{
    //triggering the sound
     k6.trigger();
       //set Boolean for key6 to true 
       key6 = true; 
  } 
  else if(mouseX>625 && mouseX<715 && mouseY>150 && mouseY<650)/* where the mouse must click for a sound to be heard*/{
    //triggering the sound
     k7.trigger();
       //set Boolean for key7 to true 
       key7 = true; 
  }  
}

// the keyPressed method is used in this situation to stop the program if the userdoes not want to use ut anymore, this can be done by pressing the letter s on the keyboard
// I used a lab of mine from topic 3 to guide me with this code
void keyPressed(){
  if((key == 's') || (key == 'S')){
    exit();
  }
}
