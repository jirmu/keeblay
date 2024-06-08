SC010::q
SC011::w
SC012::f
SC013::p
SC014::b
SC015::ü
SC016::j
SC017::l
SC018::u
SC019::y
SC01A::;
+SC01A::ı
SC01E::a
SC01F::r
SC020::s
SC021::t
SC022::g
SC023::ö
SC024::m
SC025::n
SC026::e
SC027::i
+SC027::I
CapsLock & SC027::I
SC028::o
SC056::z
SC02c::x
SC02d::c
SC02e::d
SC02f::v
SC030::ş
SC031::ç
SC032::k
SC033::h
SC034::,
SC035::.
SC01B::/
+SC01B::\
SC03A::backspace
SC02B::'

SC02F & SC032::CapsLock

SC021 & SC017::1
SC021 & SC018::2
SC021 & SC019::3
SC021 & SC025::4
SC021 & SC026::5
SC021 & SC027::6
SC021 & SC033::7
SC021 & SC034::8
SC021 & SC035::9
SC021 & SC028::0

SC02B::RShift

SC025 & SC014::=
SC025 & SC013::)
SC025 & SC012::(
SC025 & SC011::&
SC025 & SC010:::
SC025 & SC022::%
SC025 & SC021::!
SC025 & SC020::"
SC025 & SC01F::?
SC025 & SC01E::'
SC025 & SC02F::#
SC025 & SC02E::-
SC025 & SC02D::_
SC025 & SC02C::@
SC025 & SC056::*
SC025 & SC018::+
SC025 & SC019::$
SC025 & SC01A::~
SC025 & SC01B::`
SC025 & SC026::[
SC025 & SC027::]
SC025 & SC028::Send "{{}"
SC025 & SC02B::Send "{}}"
SC025 & SC034::<
SC025 & SC035::>

SC01F & SC017::F1
SC01F & SC018::F2
SC01F & SC019::F3
SC01F & SC025::F4
SC01F & SC026::F5
SC01F & SC027::F6
SC01F & SC033::F7
SC01F & SC034::F8
SC01F & SC035::F9
SC01F & SC01A::F10
SC01F & SC028::F11
SC01F & RShift::F12

SC020 & SC017:: Send("{sc120}")
SC020 & SC018:: Send("{sc12e}")
SC020 & SC019:: Send("{sc130}")
SC020 & SC025:: Send("{sc110}")
SC020 & SC026:: Send("{sc122}")
SC020 & SC027:: Send("{sc119}")
SC020 & SC033:: Send("{sc12b}")
SC020 & SC034:: Send("{sc12c}")
SC020 & SC035:: Send("{Enter}")
SC020 & SC01A:: Send("{sc046}")
SC020 & SC028:: Send("{sc15b}")


SC01E & SC025::Send "{Left}"
SC01E & SC026::Send "{Up}"
SC01E & SC027::Send "{Right}"
SC01E & SC028::Send "{Down}"

#SuspendExempt true
<^SC029:: {
Suspend()
}
#SuspendExempt false

RAlt & SC028:: Send("{sc033}")
RAlt & SC018:: Send("{SC01B}")
RAlt & SC020:: Send("{SC027}")
RAlt & SC027:: Send("{SC017}")
RAlt & SC02D:: Send("{SC034}")
RAlt & SC022:: Send("{SC01A}")


Sendmode "Event"
SetKeyDelay 1, 1

MouseSpeed := 5 ; My Default is 5
ShiftAcceleration := 3 ; My Default is 3

SetCapsLockState "AlwaysOff"
CoordMode "ToolTip", "Screen"
CapsToggle := 0 ; Don't Touch

; CapsLock will Toggle the MouseKey Remap On/Off as well as display a Tooltip at the top-left corner of your screen.
*Tab::{
    Global CapsToggle := True
    ToolTip("MouseRemap On", 0, 0) ; dispalys tooltip
}
*Tab Up::{
    Global CapsToggle := False
    ToolTip() ; removes the tooltip
}



#HotIf CapsToggle and !GetKeyState("LCtrl", "P")

; Left Mouse Button
*SC017:: LButton
; Right Mouse Button
*SC019:: RButton
; Middle Mouse Button
*SC018:: MButton
; A Toggleable Left Click n' Drag if you can't hold your Left Mouse Button and MouseKeyRemaps at the same time. 
*f::{ 
    Static Toggle := 0
    (Toggle := !Toggle) ? Send("{LButton Down}") : Send("{LButton Up}")
}

; Edit the 4 Hotkeys here and also Edit the Fn_MouseKeyRemap's Parameters accordingly.
*SC026::
*SC025::
*SC028::
*SC027:: Fn_MouseKeyRemap("SC026", "SC025", "SC028", "SC027") ; Parameters are in order to represent the directions: Up, Left, Down, Right

; This Hotkey will increase the Speed of the mouse movement until released. Adjust the ShiftAcceleration variable at the top of the script.
*Space::{
    HotkeyDown := ThisHotkey
    HotkeyUp := ThisHotkey " Up"
    Global MouseSpeed += ShiftAcceleration
    Hotkey(HotkeyDown, "Off")
    Hotkey(HotkeyUp, InnerFunc_HotkeyUp, "On")
    Return

    InnerFunc_HotkeyUp(*){
        Hotkey(HotkeyDown, "On")
        Hotkey(HotkeyUp, InnerFunc_HotkeyUp, "Off")
        Global MouseSpeed -= ShiftAcceleration
    }
}

; Hotkeys below are enabled if Left Control is held down.
#HotIf CapsToggle and GetKeyState("SC022", "P")
*SC026:: Send "{WheelUp}"
*SC025:: Send "{Browser_Back}"
*SC028:: Send "{WheelDown}"
*SC027:: Send "{Browser_Forward}"

#HotIf


; ***** Functions are Written below ***********************************************************


Fn_MouseKeyRemap(Up, Left, Down, Right){
    Static myTimerIsRunning := false
    If !myTimerIsRunning{
        myTimerIsRunning := true
        SetTImer Timer_MouseMovement, 1
    }
    Return

    Timer_MouseMovement(){ ; Inner Function Definition.
        StateUp := GetKeyState(Up, "P")
        StateLeft := GetKeyState(Left, "P")
        StateDown := GetKeyState(Down, "P")
        StateRight := GetKeyState(Right, "P")
        If (CapsToggle) and (StateUp or StateLeft or StateDown or StateRight) ; remove "(Capstoggle) and" if you're using this Function without the CapsToggle.
        {
            MouseX := (StateRight - StateLeft) * MouseSpeed
            MouseY := (StateDown - StateUp) * MouseSpeed
            Dll_MouseEvent_Move(MouseX, MouseY)
        }
        Else
        {
            myTimerIsRunning := false
            SetTimer(, 0) ; Disable this Timer to save resources.
        }
    }
}

Dll_MouseEvent_Move(ParamX:=0, ParamY:=0){
    DllCall("mouse_event", "Int", 0x0001, "Int", ParamX, "int", ParamY)
}

