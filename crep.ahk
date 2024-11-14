#Requires AutoHotkey v2.0 

SC029::Send "meow"
SC002::Tab
SC003::Escape
SC004::Enter
SC00B::.
+SC00B::;
SC00C::LWin

SC010::b
SC011::f
SC012::d
SC013::p	
SC014::g											
SC017::j
SC018::l
SC019::o
SC01A::u
SC01B::,
+SC01B::"

SC01E::n
SC01F::s
SC020::t 
SC021::c
<+SC020::‾
<+SC021::&
SC022::y
SC025::m
SC026::h
SC027::a
>+SC026::%
>+SC027::\
SC028::e
SC02B::i
+SC02B::I

SC056::x
SC02c::z
SC02d::k
SC02e::v
<+SC02e:: ̈
SC02f::w
<+SC02f:: ̂
SC030::!
SC032::/
SC033::?
SC034::- 
SC035::'

>+SC030::$
<+SC032::=
<+SC033::*
>+SC033::̧
<+SC034::_
>+SC034::̆
<+SC035::Send ":"


SC00F::Send "qu"
+SC00F::Send "Qu"
Left::Lalt

SC03A::backspace
SC029::LAlt
LAlt::LCtrl

IsRumLayer := false
HoldTime := 0.01

*RCtrl:: {
While GetKeyState("RCtrl","P") {
        
    if KeyWait("RCtrl", "T" HoldTime) {
        return
    } 
    
    global IsRumLayer := true
    KeyWait("RCtrl")
    global IsRumLayer := false
}
}
#HotIf IsRumLayer

SC004::>
SC00B::<
+SC004::≥
+SC00B::≤
Enter::,
SC01E::6
SC01F::5
SC020::0
SC021::3
SC022::8
SC025::9
SC026::2
SC027::1
SC028::4
SC02B::7
SC010::+ 
SC011::#
SC012::[
SC013::(
SC014::Send "{{}"
SC017::Send "{}}"
SC018::)
SC019::] 
SC01A::@
SC01B::-
+SC010::±
+SC011::§
+SC012::~
+SC013::₺
+SC014::`
+SC017::™
+SC018::|
+SC019::°
+SC01A::¶
+SC01B::—
SC02C::Reload
SC02D::Printscreen
SC02E::CapsLock
+SC02E::Numlock
SC02F::.
SC033::,
SC034::Alt
+SC01E::F6
+SC01F::F5
+SC020::F10
+SC021::F3
+SC022::F8
+SC025::F9
+SC026::F2
+SC027::F1
+SC028::F4
+SC02B::F7
+Enter::F11
+SC03A::F12
Left::Lalt
SC038::RCtrl

#HotIf

IsVumLayer := false
BoldTime := 0.01

*Enter:: {
While GetKeyState("Enter","P") {
        
    if KeyWait("Enter", "T" BoldTime) {
        return
    } 
    
    global IsVumLayer := true
    KeyWait("Enter")
    global IsVumLayer := false
}
}
#HotIf IsVumLayer

SC03A::Send "{RCtrl down}{backspace}{RCtrl up}"
SC01E::Down
SC01F::Left
SC020::Up
SC021::Right
SC022::Media_Play_Pause
SC00B::Media_Next
SC026::LButton
SC027::RButton
SC028::MButton
SC00F::Delete
SC010::Tab
SC011::Escape
SC012::LWin
SC013::Media_Prev
SC014::Media_Next
SC018::WheelDown
SC019::WheelUp
SC01A::Insert
SC056::Home
SC02C::End
SC02D::Volume_Mute
SC02E::Volume_Down
SC02F::Volume_Up
SC004::Media_Prev
SC033::PgDn
SC034::Pgup
SC035::Delete

#HotIf

#HotIf GetKeyState("Numlock", "T")
{
SC02f::ş
Enter::ı
+Enter::I
SC02B::i
+SC02B::İ
SC01B::ü
SC033::ç
SC034::ğ
SC035::ö
+SC033::Ç
+SC034::Ğ
+SC035::Ö
}
#HotIf
RAlt::r
#HotIf GetKeyState("CapsLock", "T")
{
SC02B::Send "I"
+SC02B::Send "i"
}
#HotIf
