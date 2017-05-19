program LifeCommand;

//--------------------==============================Libraries==============================--------------------\\
 uses crt;
 
 Type
   inv = array[1..20]of string;//custom table variable made for the inventory

//--------------------==============================Variables==============================--------------------\\
var

username: string; //player's name
tribe: string; //player's tribe
mastery: string; //player's master (mage, archer, etc)
destination:string; //player's moving available options and current position
action:string; //player's available actions
tribeSTR: integer;//strength points given to player by tribe selection 
tribeAGI: integer;//agility points given to player by tribe selection
tribeWIS: integer;//wisdom points given to player by tribe selection
masterySTR: integer;//strength points given to player by mastery selection 
masteryAGI: integer;//agility points given to player by mastery selection
masteryWIS: integer;//wisdom points given to player by mastery selection
TotalSTR: integer;//total strength (tribeSTR + masterySTR)
TotalAGI: integer;//total agility (tribeAGI +masteryAGI)
TotalWIS: integer;//total wisdom (tribeWIS +masteryWIS)
meetthevillager:boolean;//variable that defines if the ironsmith NPC recognises you. (changes to TRUE after you first speak to him)
inventory: inv;//inventory table
i:integer;//general variable used for loops
//--------------------==============================Procedures==============================--------------------\\

//----------====================StatScreen====================----------\\
procedure StatScreen(TotalSTR, TotalAGI, TotalWIS: integer);
begin
writeln('           HUD');
writeln('--------------------------');
writeln('|',username,' the ',mastery,'(',tribe,')');
writeln('|STRENGHT: ',TotalSTR);
writeln('|AGILITY: ',TotalAGI);
writeln('|WISDOM: ',TotalWIS);
writeln('--------------------------');
writeln();
end;

//----------====================ShowInventory====================----------\\
procedure ShowInventory(inventory: inv);

begin
ClrScr;
writeln('INVENTORY');
writeln();
for i:=1 to 20 do
writeln(inventory[i]);
readln();
ClrScr;
end;
//----------====================Position 0====================----------\\
procedure destination_0(actionx: string);
begin
StatScreen(TotalSTR, TotalAGI, TotalWIS);
writeln ('There are four paths..           |<><><><><><><><><><><><><><><><><><><><><><><>|');
writeln ('                                 |                      *                       |');
writeln ('                                 |   /\~~~~~~~~~~~~~~~~~|~~~~~~~~~~~~~~~~~/\    |');
writeln ('(N)orth, to the DARK CAVE        |  (o )                .                ( o)   |');
writeln ('                                 |   \/               .` `.               \/    |');
writeln ('(S)outh, to the CLEAN RIVER      |   /\             .`     `.             /\    |');
writeln ('                                 |  (             .`         `.             )   |');
writeln ('(W)est, to the PEACEFUL VILLAGE  |   )          .`      N      `.          (    |');
writeln ('                                 |  (         .`   A    |        `.         )   |');
writeln ('(E)ast, to the NOISY FOREST      |   )      .`     <\> )|(         `.      (    |');
writeln ('                                 |  (     .`         \  |  (         `.     )   |');
writeln ('                                 |   )  .`         )  \ |    (         `.  (    |');
writeln ('                                 |    .`         )     \|      (         `.     |');
writeln ('                                 |  .`     W---)--------O--------(---E     `.   |');
writeln ('                                 |   `.          )      |\     (          .`    |');
writeln ('                                 |   ) `.          )    | \  (          .` (    |');
writeln ('                                 |  (    `.          )  |  \          .`    )   |');
writeln ('                                 |   )     `.          )|( <\>      .`     (    |');
writeln ('                                 |  (        `.         |         .`        )   |');
writeln ('                                 |   )         `.       S       .`         (    |');
writeln ('                                 |  (            `.           .`            )   |');
writeln ('                                 |   \/            `.       .`            \/    |');
writeln ('                                 |   /\              `.   .`              /\    |');
writeln ('                                 |  (o )               `.`               ( o)   |');
writeln ('                                 |   \/~~~~~~~~~~~~~~~~~|~~~~~~~~~~~~~~~~~\/    |');
writeln ('                                 |                     -|-                      |');
writeln ('                                 |<><><><><><><><><><><><><><><><><><><><><><><>|');
writeln ();
action:= ReadKey;
ClrScr;

If (action='i')  or (action='I') then
begin
ShowInventory(inventory);
end;

If (action= 'N') OR (action= 'n') then
begin
destination:='N';
end
else if (action= 'S') OR (action= 's') then
begin
destination:='S';
end
else if (action= 'W') OR (action= 'w') then
begin
destination:='W';
end
else if (action= 'E') OR (action= 'e') then
begin
destination:='E';
end;
end;

//----------====================Position N====================----------\\
procedure destination_N(action:string);
begin
StatScreen(TotalSTR, TotalAGI, TotalWIS);
writeln ('You have reached the DARK CAVE');
writeln ('You have two options');
writeln ();
writeln ('(1) Enter the CAVE');
writeln ('(2) Go Back');
action:= ReadKey;
ClrScr;

If (action='i')  or (action='I') then
begin
ShowInventory(inventory);
end;

If (action= '2') then
begin
destination:='0';
end;
end;

//----------====================Position S====================----------\\
procedure destination_S(action:string);
begin
StatScreen(TotalSTR, TotalAGI, TotalWIS);
writeln ('Reached the CLEAN RIVER');
writeln ('You have three options');
writeln ();
writeln ('(1) Drink Water');
writeln ('(2) Fish');
writeln ('(3) Go Back');
action:= ReadKey;
ClrScr;

If (action='i')  or (action='I') then
begin
ShowInventory(inventory);
end;

If (action= '1') then
begin
writeln ('You drank water from the River');
delay (2000);
writeln ();
writeln ('"Cold and refreshing!"');
delay (3000);
ClrScr;
end;

If (action= '2') then
begin
writeln ('You don''t have a fishing rod and..');
delay (1000);
writeln ('It doesn''t seem that you''re getting one for a long time..');
delay (2000);
ClrScr;
end;

If (action= '3') then
begin
destination:='0';
end;
end;

//----------====================Position W====================----------\\
procedure destination_W(action:string);

var
i:integer;
space:integer;

begin


StatScreen(TotalSTR, TotalAGI, TotalWIS);
writeln ('Reached the PEACEFUL VILLAGE');
writeln ('There''s a lot of people around, minding their business silently');
writeln (); 
writeln ('You have three options');
writeln ();
writeln ('(1) Talk to a villager');
writeln ('(2) Rest');
writeln ('(3) Go Back');
action:= ReadKey;
ClrScr;

If (action='i')  or (action='I') then
begin
ShowInventory(inventory);
end;

If (action='2') then
begin
writeln('You found a shady place to sit and relax..');
writeln();
writeln('Press <Enter> when you are done resting!');
readln();
ClrScr;
end;

If (action='1') then
begin

If (meetthevillager=TRUE) then
begin
repeat
writeln ('John: Hello, ',username,'! How can i be of service?');
delay(1000);
writeln ('John: Let me know if you need help with anything!');
delay(900);
writeln ('You have 2 options');
writeln ();
writeln ('(1) "Help me craft a TORCH, please"');
writeln ('(2) "How''s your day going?"');
writeln ();
action:= ReadKey;
ClrScr;
until (action='1') OR (action='2');
end;

If (meetthevillager=FALSE) then
begin
meetthevillager:=TRUE;
writeln ('Man: Hello, fellow ',tribe,'! Are you new around here? I am not sure I have ever seen you again..');
delay (1500);
writeln ('Man: Oh! Nice to meet you, ',username,'! My name is John.');
delay (1300);
writeln('John: I''m the ironsmith of this village,');
delay (1200);
repeat
writeln ('John: Let me know if you need help with anything!');
writeln ();
writeln ('You have 2 options');
writeln ();
writeln ('(1) "Help me craft a TORCH, please"');
writeln ('(2) "How''s your day going?"');
writeln ();
action:= ReadKey;
ClrScr;
until (action='1') OR (action='2');
end;

If (action='2') then
begin
writeln('Thanks for asking, ',username,'.. I''m tired but still have a lot of work to do..');
delay (2000);
writeln('I''m currently taking a short break.');
delay (2000);
ClrScr;
end;

If (action='1') then
begin

If (inventory[20] = 'FIREWOOD') then
begin
inventory[20]:= 'empty';
inventory[19]:='TORCH';

writeln('I believe that this piece will do the job..');
writeln ();
delay(1000);
writeln('Just give me a moment..');
writeln ();
delay(1500);
writeln('This goes around here..');
writeln ();
delay(1500);
writeln('That goes there..');
writeln ();
delay(2000);
writeln('Done!');
writeln ();
delay(2000);
writeln('A TORCH ready for use!');
writeln ();
delay(1000);
ClrScr;
writeln ();
writeln('           /|');
writeln('        /\/ |/\');
writeln('        \  ^   | /\  /\');
writeln('  (\/\  / ^   /\/  )/^ )');
writeln('   \  \/^ /\       ^  /');
writeln('    )^       ^ \     (');
writeln('   (   ^   ^      ^\  )');
writeln('    \___\/____/______/');
writeln('    [________________]');
writeln('     |              |');
writeln('     |     //\\     |');
writeln('     |    <<()>>    |');
writeln('     |     \\//     |');
writeln('      \____________/');
writeln('          |    |');
writeln('          |    |');
writeln('          |    |');
writeln('          |    |');
writeln('          |    |');
writeln('          |    |');
writeln('          |    |');

writeln();
writeln('There you have it!!');
writeln ();
delay(3000);
ClrScr;
end

else
begin
writeln('Bring me some FIREWOOD so i can turn it into a TORCH!');
delay (2000);
ClrScr;
end;
end;
end;

If (action= '3') then
begin
destination:='0';
end;
end;
//----------====================Position E====================----------\\
procedure destination_E(action:string);
begin

StatScreen(TotalSTR, TotalAGI, TotalWIS);
writeln ('Reached the NOISY FOREST');
writeln ();
writeln ('You have two options');
writeln ();
writeln ('(1) Go Deeper');
writeln ('(2) Go Back');
action:= ReadKey;
ClrScr;

If (action='i')  or (action='I') then
begin
ShowInventory(inventory);
end;

If (action= '1') then
begin
destination:= 'DE';
end;
If (action= '2') then
begin
destination:='0';
end;
end;

//----------====================Position DE====================----------\\
procedure destination_DE(action:string);
var
space:integer;
begin
StatScreen(TotalSTR, TotalAGI, TotalWIS);
writeln ('You moved DEEPER INTO THE NOISY FOREST');
writeln ('A place where all kinds of small animals live together');
writeln ();
writeln ('You have two options');
writeln ();
writeln ('(1) Search for useful items');
writeln('(2) Go Back');
action:= ReadKey;
ClrScr;

If (action='i')  or (action='I') then
begin
ShowInventory(inventory);
end;

If (action='1') then
begin
writeln('You''re searching for something useful..');
delay(3000);

If (inventory[20] = 'empty') then
begin
inventory[20]:='FIREWOOD';
writeln('You found a piece of FIREWOOD!');
delay (1600);
ClrScr;
end
else
begin
writeln('You found nothing..');
delay (1600);
ClrScr;
end;
end;
If (action= '2') then
begin
destination:='E';
end;
end;
//--------------------==============================CODING STARTS!==============================--------------------\\

begin
//--------------------==============================TEXT color LIGHTGREEN==============================--------------------\\
textcolor(LightGreen);
//--------------------==============================Welcome Message==============================--------------------\\
writeln ('SATURN STUDIOS');
//--------------------==============================TEXT color WHITE==============================--------------------\\
textcolor(White);
//--------------------==============================BACKGROUND color BLACK==============================--------------------\\
TextBackground(Black);
//--------------------==============================STUDIOS LOGO :D==============================--------------------\\
 writeln ('                                                                     ..;===+.');
 writeln ('                                                                 .:=iiiiii=+=');
 writeln ('                                                              .=i))=;::+)i=+,');
 writeln ('                                                           ,=i);)I)))I):=i=;');
 writeln ('                                                        .=i==))))ii)))I:i++');
 writeln ('                                                      +)+))iiiiiiii))I=i+:''');
 writeln ('                                 .,:;;++++++;:,.       )iii+:::;iii))+i=''');
 writeln ('                              .:;++=iiiiiiiiii=++;.    =::,,,:::=i));=+''');
 writeln ('                            ,;+==ii)))))))))))ii==+;,      ,,,:=i))+=:');
 writeln ('                          ,;+=ii))))))IIIIII))))ii===;.    ,,:=i)=i+');
 writeln ('                         ;+=ii)))IIIIITIIIIII))))iiii=+,   ,:=));=,');
 writeln ('                       ,+=i))IIIIIITTTTTITIIIIII)))I)i=+,,:+i)=i+');
 writeln ('                      ,+i))IIIIIITTTTTTTTTTTTI))IIII))i=::i))i=''');
 writeln ('                     ,=i))IIIIITLLTTTTTTTTTTIITTTTIII)+;+i)+i`');
 writeln ('                     =i))IIITTLTLTTTTTTTTTIITTLLTTTII+:i)ii:''');
 writeln ('                    +i))IITTTLLLTTTTTTTTTTTTLLLTTTT+:i)))=,');
 writeln ('                    =))ITTTTTTTTTTTLTTTTTTLLLLLLTi:=)IIiii;');
 writeln ('                   .i)IIITTTTTTTTLTTTITLLLLLLLT);=)I)))))i;');
 writeln ('                   :))IIITTTTTLTTTTTTLLHLLLLL);=)II)IIIIi=:');
 writeln ('                   :i)IIITTTTTTTTTLLLHLLHLL)+=)II)ITTTI)i=');
 writeln ('                   .i)IIITTTTITTLLLHHLLLL);=)II)ITTTTII)i+');
 writeln ('                   =i)IIIIIITTLLLLLLHLL=:i)II)TTTTTTIII)i''');
 writeln ('                 +i)i)))IITTLLLLLLLLT=:i)II)TTTTLTTIII)i;');
 writeln ('               +ii)i:)IITTLLTLLLLT=;+i)I)ITTTTLTTTII))i;');
 writeln ('              =;)i=:,=)ITTTTLTTI=:i))I)TTTLLLTTTTTII)i;');
 writeln ('            +i)ii::,  +)IIITI+:+i)I))TTTTLLTTTTTII))=,');
 writeln ('          :=;)i=:,,    ,i++::i))I)ITTTTTTTTTTIIII)=+''');
 writeln ('        .+ii)i=::,,   ,,::=i)))iIITTTTTTTTIIIII)=+');
 writeln ('       ,==)ii=;:,,,,:::=ii)i)iIIIITIIITIIII))i+:''');
 writeln ('      +=:))i==;:::;=iii)+)=  `:i)))IIIII)ii+''');
 writeln ('    .+=:))iiiiiiii)))+ii;');
 writeln ('   .+=;))iiiiii)));ii+');
 writeln ('  .+=i:)))))))=+ii+');
 writeln (' .;==i+::::=)i=;');
 writeln (' ,+==iiiiii+,');
 writeln (' `+=+++;`');
 writeln();
 writeln();
 //--------------------==============================TEXT color LIGHTGREEN==============================--------------------\\
textcolor(LightGreen);
 writeln ('presents..'); 
Delay(2500);
ClrScr;

writeln ();
writeln ('  _      _  __        _____                                          _ ');
writeln (' | |    (_)/ _|      / ____|                                        | |');
writeln (' | |     _| |_ ___  | |     ___  _ __ ___  _ __ ___   __ _ _ __   __| |');
writeln (' | |    | |  _/ _ \ | |    / _ \| ''_ ` _ \| ''_ ` _ \ / _` | ''_ \ / _` |');
writeln (' | |____| | ||  __/ | |___| (_) | | | | | | | | | | | (_| | | | | (_| |');
writeln (' |______|_|_| \___|  \_____\___/|_| |_| |_|_| |_| |_|\__,_|_| |_|\__,_|');
writeln ('Alpha Version: 0.8');
Delay(1200);
writeln ();
writeln ();
writeln ('TIPS:');
writeln ('When choosing a name, type it in and then press <Enter>');
writeln ('After entering a name, the <Enter> button is no longer needed in option controls');
writeln ('Use as options ONLY the letters included in the parentheses');
writeln ('Press "=" when done playing');
writeln ('Have Fun!');
writeln ();
writeln ();
Delay(800);

writeln ('Loading Game..');
Delay(5000); //Loading effect so player manages to read the tips
ClrScr;

//--------------------==============================BACKGROUND Color WHITE==============================--------------------\\
textbackground(white);

//--------------------==============================Text Color LIGHTBLUE==============================--------------------\\
textcolor(Black);
ClrScr;
//--------------------==============================Choose Username==============================--------------------\\
writeln();
writeln('   _____ _                                    _   _                      ');
writeln('  / ____| |                                  | \ | |                     ');
writeln(' | |    | |__   ___   ___  ___  ___    __ _  |  \| | __ _ _ __ ___   ___ ');
writeln(' | |    | ''_ \ / _ \ / _ \/ __|/ _ \  / _` | | . ` |/ _` | ''_ ` _ \ / _ \');
writeln(' | |____| | | | (_) | (_) \__ \  __/ | (_| | | |\  | (_| | | | | | |  __/');
writeln('  \_____|_| |_|\___/ \___/|___/\___|  \__,_| |_| \_|\__,_|_| |_| |_|\___|');
writeln();
readln (username);

If (username='creatorpanda') then
begin
writeln();
writeln('hello Programmer! Have fun!');
delay(1500);
end;
ClrScr;

//--------------------==============================Choose tribe==============================--------------------\\
repeat
writeln();
writeln('   _____ _                                    _______   _ _          ');
writeln('  / ____| |                                  |__   __| (_) |         ');
writeln(' | |    | |__   ___   ___  ___  ___    __ _     | |_ __ _| |__   ___ ');
writeln(' | |    | ''_ \ / _ \ / _ \/ __|/ _ \  / _` |    | | ''__| | ''_ \ / _ \');
writeln(' | |____| | | | (_) | (_) \__ \  __/ | (_| |    | | |  | | |_) |  __/');
writeln('  \_____|_| |_|\___/ \___/|___/\___|  \__,_|    |_|_|  |_|_.__/ \___|');

writeln();
writeln ('Available tribes: (1)Human, (2)Goblin, (3)Ork, (4)Elf');
writeln();
tribe:= ReadKey;
ClrScr;
until (tribe='1') OR (tribe='2') OR (tribe='3') OR (tribe='4');

If (tribe = '1') then
begin
tribe := 'human';
tribeSTR:=25;
tribeAGI:=20;
tribeWIS:=30;
end
else if (tribe = '2') then
begin
tribe := 'goblin';
tribeSTR:=15;
tribeAGI:=10;
tribeWIS:=5;
end
else if (tribe = '3') then
begin
tribe := 'ork';
tribeSTR:=50;
tribeAGI:=5;
tribeWIS:=10;
end
else if (tribe = '4') then
begin
tribe := 'elf';
tribeSTR:=20;
tribeAGI:=50;
tribeWIS:=50;
end;

//--------------------==============================Choose Mastery==============================--------------------\\
repeat
writeln();
writeln ('   _____ _                                    __  __            _                  ');
writeln ('  / ____| |                                  |  \/  |          | |                 ');
writeln (' | |    | |__   ___   ___  ___  ___    __ _  | \  / | __ _ ___ | |_ ___ _ __ _   _ ');
writeln (' | |    | ''_ \ / _ \ / _ \/ __|/ _ \  / _` | | |\/| |/ _` / __| __/ _ \ ''__| | | |');
writeln (' | |____| | | | (_) | (_) \__ \   __/| (_| | | |  | | (_| \__ \| |  __/ |  | |_| |');
writeln ('  \_____|_| |_|\___/ \___/|___/\___|  \__,_| |_|  |_|\__,_|___/\__\___|_|   \__, |');
writeln ('                                                                             __/ |');
writeln ('                                                                            |___/ ');
writeln();
writeln ('Available masteries: (1)warrior, (2)paladin, (3)archer, (4)mage');
mastery:= ReadKey;
ClrScr;
until (mastery='1') OR (mastery='2') OR (mastery='3') OR (mastery='4');

If tribe='human' then
begin
If (mastery = '1') then
begin
mastery := 'warrior';
masterySTR:=10;
end
else if (mastery = '2') then
begin
mastery := 'paladin';
masterySTR:=5;
masteryWIS:=5;
end
else if (mastery = '3') then
begin
mastery := 'archer';
masteryAGI:=10;
end
else if (mastery = '4') then
begin
mastery := 'mage';
masteryWIS:=20;
end;
end;

If tribe='goblin' then
begin
If (mastery = '1') then
begin
mastery := 'warrior';
masterySTR:=10;
end
else if (mastery = '2') then
begin
mastery := 'paladin';
masterySTR:=5;
masteryAGI:=5;
end
else if (mastery = '3') then
begin
mastery := 'archer';
masteryAGI:=10;
end
else if (mastery = '4') then
begin
mastery := 'mage';
masteryWIS:=15;
end;
end;

If tribe='ork' then
begin
If (mastery = '1') then
begin
mastery := 'warrior';
masterySTR:=20;
end
else if (mastery = '2') then
begin
mastery := 'paladin';
masterySTR:=5;
masteryAGI:=5;
end
else if (mastery = '3') then
begin
mastery := 'archer';
masteryAGI:=5;
end
else if (mastery = '4') then
begin
mastery := 'mage';
masteryWIS:=10;
end;
end;

If tribe='elf' then
begin
If (mastery = '1') then
begin
mastery := 'warrior';
masterySTR:=5;
masteryAGI:=5;
end
else if (mastery = '2') then
begin
mastery := 'paladin';
masterySTR:=10;
masteryAGI:=10;
end
else if (mastery = '3') then
begin
mastery := 'archer';
masteryAGI:=20;
end
else if (mastery = '4') then
begin
mastery := 'mage';
masteryWIS:=20;
end;
end;

TotalSTR:= tribeSTR + masterySTR;
TotalAGI:= tribeAGI + masteryAGI;
TotalWIS:= tribeWIS + masteryWIS;

//--------------------==============================Player Intro==============================--------------------\\
writeln ('Hello ',username, '! You are a(n) ', tribe, ', a skillful ',mastery);
delay(1500);
writeln();
writeln ('Your Journey Begins!');
writeln();
writeln ('Press <Enter> when you''re ready to go');
writeln();
writeln ('+8-=-=-=-=-=-8+');
writeln (' | ,.-''"''-., |');
writeln (' |/         \|');
writeln (' |\:.     .:/|');
writeln (' | \:::::::/ |');
writeln (' |  \:::::/  |');
writeln (' |   \:::/   |');
writeln (' |    ):(    |');
writeln (' |   / . \   |');
writeln (' |  /  .  \  |');
writeln (' | /   .   \ |');
writeln (' |/   .:.   \|');
writeln (' |\.:::::::./|');
writeln (' | ''--___--'' |');
writeln ('+8-=-=-=-=-=-8+');

readln();
ClrScr;

//--------------------==============================GAME START==============================--------------------\\

//--------------------==============================FIRST MAP==============================--------------------\\
destination:= '0';
for i:=1 to 20 do
begin
inventory[i]:=('empty');
end;
//--------------------==============================Loop Start==============================--------------------\\

repeat

//---------------====================DESTINATION 0====================---------------\\
If (destination= '0') then
begin
textcolor(black);
textbackground(white);
ClrScr;
writeln();
destination_0(action);
end;

//---------------====================DESTINATION N====================---------------\\
If ((destination= 'N') or (destination= 'n'))then
begin
textcolor(red);
textbackground(black);
ClrScr;
writeln();
destination_N(action);
end;

//---------------====================DESTINATION S====================---------------\\
If ((destination= 'S') or (destination= 's'))then
begin
textcolor(White);
textbackground(Blue);
ClrScr;
writeln();
destination_S(action);
end;

//---------------====================DESTINATION W====================---------------\\
If ((destination= 'W') or (destination= 'w')) then
begin
textcolor(Red);
textbackground(lightgreen);
ClrScr;
destination_W(action);
end;

//---------------====================DESTINATION E====================---------------\\
If (destination= 'E') or (destination= 'e') then
begin
textcolor(LightGreen);
textbackground(Green);
ClrScr;
writeln();
destination_E(action);
end;
//--------------------==============================DEEPER INTO THE FOREST==============================--------------------\\
If (destination= 'DE') then
begin
writeln();
destination_DE(action);
end;

//--------------------==============================GAME EXIT==============================--------------------\\
until  (action = '=');

//--------------------==============================GAME OUTRO==============================--------------------\\

//--------------------==============================Text Color RED==============================--------------------\\
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
//--------------------==============================Text Color WHITE==============================--------------------\\
textcolor(White);
writeln('I really hope you had fun!! :D');
writeln();
delay (1500);
If (username='creatorpanda') then
begin
writeln('PROGRAMMER DOWN!');
delay(1500);
end;
//--------------------==============================Text Color RED==============================--------------------\\ 
textcolor(Red);
writeln();
writeln('Press <Enter> to terminate the game');
readln();                
 end.
//writeln('Game under construction! Wait for the rest of it to come out!');
