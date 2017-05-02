' LBTemp Convert *** version 1.0a
' By: Joe Cole
' Program Created with Liberty BASIC v4.01
' Form Created with Liberty BASIC Workshop v4.4.5
' Date Created: 5/30/2005
' Date Last Modified: 2/15/2013
' Temperature conversion program for converting between Fahrenheit and Celsius
'*********************************************************************************************

    True = 1 : False = 0

[InitColors]
    'Please use default colors when possible.
    'ForegroundColor$ = "Black"
    'BackgroundColor$ = "Buttonface"
    'TexteditorColor$ = "White"
    'TextboxColor$    = "White"
    'ComboboxColor$   = "White"
    'ListboxColor$    = "White"

[WindowSetup]
    NOMAINWIN
    WindowWidth = 520 : WindowHeight = 349
    UpperLeftX = INT((DisplayWidth-WindowWidth)/2)
    UpperLeftY = INT((DisplayHeight-WindowHeight)/2)

[ControlSetup]
statictext  #main.static1, "Simple Temperature Conversion Program", 135, 15, 255, 20
statictext  #main.static2, "°F", 185, 85, 15, 20
statictext  #main.static3, "°C", 410, 85, 15, 20
statictext  #main.static4, "°C", 185, 200, 15, 20
statictext  #main.static5, "°F", 410, 200, 15, 20
stylebits   #main.btn1, _BS_MULTILINE, 0, 0, 0
button      #main.btn1, "CONVERT", [btn1.click], UL, 220, 80, 80, 30
stylebits   #main.btn2, _BS_MULTILINE, 0, 0, 0
button      #main.btn2, "CONVERT", [btn2.click], UL, 220, 195, 80, 30
stylebits   #main.btn3, _BS_MULTILINE, 0, 0, 0
button      #main.btn3, "CLEAR", [btn3.click], UL, 165, 270, 80, 30
stylebits   #main.btn4, _BS_MULTILINE, 0, 0, 0
button      #main.btn4, "EXIT", [btn4.click], UL, 275, 270, 80, 30
stylebits   #main.textbox1, _ES_CENTER, 0, 0, 0
textbox     #main.textbox1, 100, 80, 80, 30
stylebits   #main.textbox2, _ES_CENTER, 0, 0, 0
textbox     #main.textbox2, 325, 80, 80, 30
stylebits   #main.textbox3, _ES_CENTER, 0, 0, 0
textbox     #main.textbox3, 100, 195, 80, 30
stylebits   #main.textbox4, _ES_CENTER, 0, 0, 0
textbox     #main.textbox4, 325, 195, 80, 30
groupbox    #main.group1, "Fahrenheit to Celsius", 60, 50, 395, 90
groupbox    #main.group2, "Celsius to Fahrenheit", 60, 160, 395, 90

Open "LBTemp Conversion v1.0a" for Window as #main
    #main "trapclose [quit]"
    #main "font arial 10"

[loop]
    Wait

[quit]
    close #main : END

'Convert Fahrenheit to Celsius
[btn1.click]
    print #main.textbox1, "!contents? F$"
    F = Val(F$)
    if F$ <> "0" and F=0 then
    notice "You must enter a number for the temperature!"
    end if
    print #main.textbox2, (5/9)*(F-32)
    wait

'Convert Celsius to Fahrenheit
[btn2.click]
    print #main.textbox3, "!contents? C$"
    C = Val(C$)
    if C$ <> "0" and C=0 then
    notice "You must enter a number for the temperature!"
    end if
    print #main.textbox4, (9/5)* C+32
    wait

'Clear All Text Boxes
[btn3.click]
    print #main.textbox1, ""
    print #main.textbox2, ""
    print #main.textbox3, ""
    print #main.textbox4, ""
    wait

'Close Program
[btn4.click]
    close #main
    wait


