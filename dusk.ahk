#Requires AutoHotkey v2.0 

SC010::b
SC011::f
SC012::d
SC013::p
SC014::q
SC017::j
SC018::'
SC019::o
SC01A::u
SC01B::.

SC01E::n
SC01F::s
SC020::t
SC021::c
SC022::y
SC023::Send "{Enter}"
SC024::Send "{Tab}"
SC025::m
SC026::h
SC027::a
SC028::e
SC02B::i
+SC02B::I

SC056::x
SC02c::v
SC02d::k
SC02e::g
SC02f::w
SC033::z
SC034::l
SC035::,

RAlt::r

SC03A::backspace
SC00E::CapsLock
Tab::LCtrl
SC029::Ralt

>^SC010::+
>^SC011::=
>^SC012::_
>^SC013::$
>^SC014::%
>^SC017::Send "``"
>^SC018::[
>^SC019::]
>^SC01A::Send "{{}"
>^SC01B::Send "{}}"

>^SC01E::-
>^SC01F::'
>^SC020::"
>^SC021::!
>^SC022::?
>^SC025::)
>^SC026::(
>^SC027::&
>^SC028::#
>^SC02B::*

>^SC056:: Send "{RCtrl Down}{z}{RCtrl Up}"
>^SC02c:: Send "{RCtrl Down}{x}{RCtrl Up}"
>^SC02d:: Send "{RCtrl Down}{c}{RCtrl Up}"
>^SC02e::PrintScreen
>^SC02f:: Send "{RCtrl Down}{v}{RCtrl Up}"
>^SC03A:: Send "{RCtrl Down}{backspace}{RCtrl Up}"
>^SC033::^
>^SC034::/
>^SC035::@

SC14B & SC010::Escape
SC14B & SC011::Tab
SC14B & SC012:: Send "{sce05b}"
SC14B & SC013::<
SC14B & SC014::>

SC14B & SC01E::Down
SC14B & SC01F::Left
SC14B & SC020::Up
SC14B & SC021::Right

<!SC01E::1
<!SC01F::2
<!SC020::3
<!SC021::4
<!SC022::5
<!SC025::6
<!SC026::7
<!SC027::8
<!SC028::9
<!SC02B::0



#HotIf GetKeyState("Numlock", "T")
{
SC010::q
SC011::w
SC012::f
SC013::p
SC014::b
SC015::q
SC016::j
SC017::l
SC018::u
SC019::y
SC01A::;
SC01B::j

SC01E::a
SC01F::r
SC020::s
SC021::t
SC022::g
SC023::x
SC024::m
SC025::n
SC026::e
SC027::i
SC028::o
SC02B::g

SC056::z
SC02c::x
SC02d::c
SC02e::d
SC02f::v
SC030::w
SC031::<
SC032::k
SC033::h
SC034::,
SC035::.



SC03A::backspace
SC00E::CapsLock
Tab::LCtrl
SC029::Ralt
    
}

IsNumLayer := false
HoldTime := 0.4 ; specified in seconds (0.4 == 400ms)

$Space:: {
    if KeyWait("Space", "T" HoldTime) {
        SendInput("{Space Down}")
    } else {
        global IsNumLayer := true
    }
}

Space Up:: {
    if IsNumLayer {
        global IsNumLayer := false
    } else {
        SendInput("{Space Up}")
    }
}

#HotIf IsNumLayer

SC01E::1
SC01F::2
SC020::3
SC021::4
SC022::5
SC025::6
SC026::7
SC027::8
SC028::9
SC02B::0

#HotIf

