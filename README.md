A simple decision making game developed on PASCAL.

My teacher kept asking for more complicated functions as the lessons kept going.
It first started out asking for name input and making the "map", and went on making an inventory, an HUD etc.

This is not the final product. It's something i started and keep updating when have free time. It's a development that can go forever.

suggestions are welcomed and appreciated.

The source file named "LifeCommand - game code.pas" containing all the code of the game is [here](https://github.com/creatorpanda/LifeCommand/blob/master/LifeCommand%20-%20game%20code.pas)

Wild notes appeared!:
1) There are many delays in the game. It's annoying that they are all around, but i believe they make the game way better than just shooting out all the chat and ascii art at once.
------------------------------------------------------------------------------------------------------------------------------------

2) input options that require typing are **writeln** commands, while input options that require a letter or a number are **ReadKey** commands.
```pascal
//choosing your name
readln (username);

//and choosing a tribe
writeln ('Available tribes: (1)Human, (2)Goblin, (3)Ork, (4)Elf');
writeln();
tribe:= ReadKey;
```
------------------------------------------------------------------------------------------------------------------------------------

3) As you may notice, the game lacks of saving function. I didn't want to leave the game like this, so i came up with an idea. Instead of just pressing the X button and closing the CMD, stopping the game violently, you have the option to return to the crossroad you started from and press the "=" button. The character you're controling dies, **without saving anything** but to be honest, the game is really short to consider it worth saving. Nothing special, just a 
```pascal
until  (action = '=');

textcolor(Red);
textbackground(white);
ClrScr;
Writeln ('"Goodbye Cruel World.. :("');
delay (1000);
Writeln ('*You took your own life*');
delay (1000);
Writeln();
Writeln (' _______ _            ______           _           .ed"""" """$$$$be.');
Writeln ('|__   __| |          |  ____|         | |        -"           ^""**$$$e.');
Writeln ('   | |  | |__   ___  | |__   _ __   __| |      /                      "4$$b');
Writeln ('   | |  | ''_ \ / _ \ |  __| | ''_ \ / _` |   d  3                      $$$$');
Writeln ('   | |  | | | |  __/ | |____| | | | (_| |     $  *                   .$$$$$$');
Writeln ('   |_|  |_| |_|\___| |______|_| |_|\__,_|    .$  ^c           $$$$$e$$$$$$$$.');
Writeln ('                                             d$L  4.         4$$$$$$$$$$$$$$b');
Writeln ('                                             $$$$b ^ceeeee.  4$$ECL.F*$$$$$$$');
Writeln ('                                             $$$$P d$$$$F $ $$$$$$$$$- $$$$$$');
Writeln ('                                             3$$$F "$$$$b   $"$$$$$$$  $$$$*"');
Writeln ('                                               $$P"  "$$b   .$ $$$$$...e$$');
Writeln ('                                              *c    ..    $$ 3$$$$$$$$$$eF');
Writeln ('                                               %ce""    $$$  $$$$$$$$$$*');
Writeln ('                                                *$e.    *** d$$$$$"L$$');
Writeln ('                                                 $$$      4J$$$$$% $$$');
Writeln ('                                                  $  *=%4.$ L L$ P3$$$F');
Writeln ('                                                  $   "%*ebJLzb$e$$$$$b');
Writeln ('                                                  %..      4$$$$$$$$$$');
Writeln ('                                                   $$$e   z$$$$$$$$$$ ');
Writeln ('                                                    "*$c  "$$$$$$$P"');
Writeln ('                                                      """*$$$$$$$"');
writeln();
delay (2000);
```
*this symbol mass is a skull right next to the phrase "The End". Trust me it works just fine when run the .exe file*
------------------------------------------------------------------------------------------------------------------------------------

*This last one is something like a walkthrough..*

3)I tried to make things in a way where you have to move around before you find out what to do.  Allthough the game is short (and also not finished), you first have to get wood from the **noisy forest**, before you can continue on making a torch in the **peaceful village** and after all that, get in the cave. The **clean river** is one of the four places i had to create, but there is nothing to do there. Nothing that adds to the history. It just exists.
