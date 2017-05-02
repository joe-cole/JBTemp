 ' JBTemp Convert *** version 1.0
 ' By: Joe Cole
 ' Program Created with Just BASIC v1.10
 ' Form Created with Freeform-J v1.0a for Just BASIC
 ' Date Created: 2/15/2013
 ' Date Last Modified:
 ' Temperature conversion program for converting between Fahrenheit and Celsius
 ' -This is the Just BASIC version of the same program I made in Liberty BASIC in 2005
 '*****************************************************************************************
 nomainwin

    WindowWidth = 520
    WindowHeight = 349
    UpperLeftX=INT((DisplayWidth-WindowWidth)/2)
    UpperLeftY=INT((DisplayHeight-WindowHeight)/2)

    statictext #main.statictext1, "Simple Temperature Converstion Program", 135, 15, 255, 20
    groupbox #main.groupbox2, "Fahrenheit to Celsius", 60, 50, 395, 90
    groupbox #main.groupbox3, "Celsius to Fahrenheit", 60, 160, 395, 90
    button #main.button4, "CONVERT", [button4Click], UL, 220, 80, 80, 30
    button #main.button5, "CONVERT", [button5Click], UL, 220, 195, 80, 30
    button #main.button6, "CLEAR", [button6Click], UL, 165, 270, 80, 30
    button #main.button7, "EXIT", [button7Click], UL, 275, 270, 80, 30
    textbox #main.textbox8, 100, 80, 80, 30
    textbox #main.textbox9, 325, 80, 80, 30
    textbox #main.textbox10, 100, 195, 80, 30
    textbox #main.textbox11, 325, 195, 80, 30
    statictext #main.statictext12, "°F", 185, 85, 15, 20
    statictext #main.statictext13, "°C", 410, 85, 15, 20
    statictext #main.statictext14, "°C", 185, 200, 15, 20
    statictext #main.statictext15, "°F", 410, 200, 15, 20
    open "JBTemp Conversion v1.0" for Window as #main
    print #main, "trapclose [quit]"
    print #main, "font arial 10"

[main.inputLoop]   'wait here for input event
    wait

[quit]
    close #main :END

[button4Click]   'Convert Fahrenheit to Celsius
    print #main.textbox8, "!contents? F$"
    F = Val(F$)
    if F$ <> "0" and F=0 then
    notice "You must enter a number for the temperature!"
    end if
    print #main.textbox9, (5/9)*(F-32)
    wait

[button5Click]   'Convert Celsius to Fahrenheit
    print #main.textbox10, "!contents? C$"
    C = Val(C$)
    if C$ <> "0" and C=0 then
    notice "You must enter a number for the temperature!"
    end if
    print #main.textbox11, (9/5)* C+32
    wait

[button6Click]   'Clear All Text Boxes
    print #main.textbox8, ""
    print #main.textbox9, ""
    print #main.textbox10, ""
    print #main.textbox11, ""
    wait

[button7Click]   'Close Program
    close #main
    wait

