# Processing-Piano-Project
Introduction to my project

The topic I chose to work on for my project was the piano in the music in processing section. I chose 
this topic because I wanted to combine my passion for playing instruments with my passion for 
programming, and I wanted to see how these two would fit together.

What does my project do?

What the piano does is that when a user uses their mouse to click on a white or black key a sound is 
produced out for them. As they press the keys the word ‘live’ will be displayed as they are currently
using the piano.

How does my project work/ how I developed the program?

The first part of the code is the sound library ‘minim’, this is what allows the sound produced by the 
keys to be heard. The variables of the keys are created next in the format ‘AudioSample k1;’, this 
allows the program to know that the variable type is an audio.
A Boolean logic is then created to track when a key has been struck, when it is false nothing has 
happened, when it is true this means that a key has been struck and the colour of the key is supposed 
to change. The size of the screen was then set to 800 pixels by 800 pixels. The sound is initialised and 
after that the audio files that contain the sound are imported into the code, for this the audio files 
must be contained in the same folder as the code so that they can be located, and for the purpose of 
this program mp3 and wav audio file types were used. The name of the audio file in the folder must
be the same when it is in the code so that it can be recognised. All the keys are initially set to false 
(Boolean logic), so that the program can identify that they have not been struck yet.
The background of the page is now set to the colour grey and after this the title was drawn which is 
‘piano’, then keys are drawn. Before the keys are drawn an if and else statement is used in the sense 
that if the ‘key == true’ then this means it has been struck so therefore the colour should change to 
the colour assigned to it. Or else if the ‘key == false’ this means that the key was not struck so there 
for it should remain the same. Then just beneath the code the keys are created using the ‘rect’ function 
as they are rectangles. After all the keys have been created and correctly positioned another if 
statement is used. This is used because every time the user clicks on the piano the word live should
be displayed. This is done by navigating where the piano is positioned exactly, this can be done using 
the mouseX and mouseY function, once they are programmed to cover the region of the piano anytime 
the piano is clicked the word ‘live’ will be displayed.
The next part of the program is to program each key to produce a separate sound. This is done by 
using the ‘void mousePressed’ function and if and else if statements. The void mousePressed function 
allows the user to be able to interact with the piano via a mouse. The flat (black) keys are programmed 
first since they sit on top of the white keys. The first black key uses an if statement which states that 
if the mouseX and mouseY function cover the region of the key then it should produce a sound, the 
sound is produced by using the trigger function which triggers the sound, once again the key is set to 
be true so that the colour changes as the sound is triggered. This process is repeated for all the other 
black and white keys but else if statements are used, this is the case so that if a black key is on top of 
a white key only the sound of the black key will be heard.
The final step in the code was to give the user the option to opt out of the piano screen if they wanted 
to, I did this by using the keyboardPressed function which allows the user to interact with the piano 
via the keyboard. An if statement is used here, it states that if the user clicks on the letter s whether
a capital or small one then the window will close, the function that closes the window is the exit(); 
function.

Problems I had to solve?

The problems I encountered was that in the ‘void mousePressed’ section I only used if statements and 
affected the output because since the black keys are located on top of the white keys, anytime I clicked
the black keys, both the black and white keys would make sound. Once I realised that using an else if 
statement would make sure that only one sound would be produced when one key is clicked that 
solved the problem. The second problem I encountered was that the bit depth of the audio files I used 
were not 8 or 16, since those were the only bit depths that compatible with the processing app. To 
solve this problem, I went to the website I got the audio files from and filtered out my search so that
I would only have 8 and 16 bit depts as options and this solved the problem
