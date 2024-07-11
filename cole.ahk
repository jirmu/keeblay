#Requires AutoHotkey v2.0 

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

SC01E::a
SC01F::r
SC020::s
SC021::t
SC022::g
SC023::ı
SC024::m
SC025::n
SC026::e
SC027::i
+SC027::I
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
SC00E::CapsLock
SC02B::RShift
Tab::LCtrl

<^>!SC010::+
<^>!SC011::=
<^>!SC012::_
<^>!SC013::$
<^>!SC014::%
<^>!SC015::6
<^>!SC016::^
<^>!SC017::[
<^>!SC018::]
<^>!SC019::Send "{{}"
<^>!SC01A::Send "{}}"
<^>!SC01B::Send "``"

<^>!SC01E::-
<^>!SC01F::'
<^>!SC020::"
<^>!SC021::!
<^>!SC022::?
<^>!SC024::)
<^>!SC025::(
<^>!SC026::&
<^>!SC027::#
<^>!SC028::*
<^>!SC02B::@

<^>!SC056:: Send "{RCtrl Down}{z}{RCtrl Up}"
<^>!SC02c:: Send "{RCtrl Down}{x}{RCtrl Up}"
<^>!SC02d:: Send "{RCtrl Down}{c}{RCtrl Up}"
<^>!SC02e::PrintScreen
<^>!SC02f:: Send "{RCtrl Down}{v}{RCtrl Up}"
<^>!SC03A:: Send "{RCtrl Down}{backspace}{RCtrl Up}"

>^SC010::Escape
>^SC011::Tab
>^SC012:: Send "{sce05b}"
>^SC013::<
>^SC014::>
>^SC015::6
>^SC016::^
>^SC017::1
>^SC018::2
>^SC019::3
>^SC01B::Send "``"

>^SC01E::Down
>^SC01F::Left
>^SC020::Up
>^SC021::Right
>^SC022::?
>^SC024:: Send "00"
>^SC025::4
>^SC026::5
>^SC027::6
>^SC028::0

>^SC033::7
>^SC034::8
>^SC035::9



SC008::6
SC009::7
SC00A::8
SC00B::9
SC00C::0

#HotIf GetKeyState("Numlock", "T")
{
SC010::u
SC011::e
SC012::ü
SC013::m
SC014::.
SC015::q
SC016::p
SC017::c
SC018::t
SC019::y
SC01A::h
SC01B::j

SC01E::i
SC01F::o
SC020::a
SC021::n
SC022::v
SC023::x
SC024::s
SC025::d
SC026::l
SC027::r
SC028::k
SC02B::g

SC056::ö
SC02c::ı
SC02d::,
SC02e::f
SC02f::b
SC030::w
SC031::<
SC032::ş
SC033::z
SC034::ç
SC035::ğ

SC03A::backspace
SC00E::CapsLock
Tab::LCtrl
    
}
