#Requires AutoHotkey >=2.1- <3.0
#SingleInstance Off
; #Include  <maxray\AHKPlusPlus___Folder\AHKPlusPlus___0_2__v>




m := Gui()

m.SetFont("s30", "Consolas" )
keyboredList := [ 
                "{LWin up}{RWin up}{Ctrl up}{Alt UP}"
                ,"{Lwin UP}" , "{Rwin UP}"
                , "{ctrl up}" , "{Alt UP}"
                ]



for key in keyboredList{
    m.Add("Button" , , key).OnEvent("Click", clickButtonAction)
    
}

clickButtonAction(button,*){
    SendInput(button.text)
    
    }


m.Add("Button", "" ,"Kill all 64-bit AHK process").OnEvent("Click", killAHK64)
killAHK64(*){
    run "cmd /k taskkill /im Autohotkey64.exe /f"
}



m.Add("Button", ,"Kill all 32-bit AHK").OnEvent("Click", killAHK64)
killAHK4(*){
    run "cmd /k taskkill /im Autohotkey.exe /f"
}



m.Show()

