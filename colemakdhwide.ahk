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

SC020 & SC018::ü
SC020 & SC027::ı
SC020 & SC028::ö
SC020 & SC01F::ç
SC020 & SC022::ğ
SC020 & SC021::ş

RAlt::RShift

SC028 & SC014::=
SC028 & SC013::)
SC028 & SC012::(
SC028 & SC011::&
SC028 & SC010:::
SC028 & SC022::%
SC028 & SC021::!
SC028 & SC020::"
SC028 & SC01F::?
SC028 & SC01E::'
SC028 & SC02F::#
SC028 & SC02E::-
SC028 & SC02D::_
SC028 & SC02C::@
SC028 & SC056::*

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
SC01F & SC036::F12

SC01E & SC025::Send "{Left}"
SC01E & SC026::Send "{Up}"
SC01E & SC027::Send "{Right}"
SC01E & SC028::Send "{Down}"

#SuspendExempt true
<^SC029:: {
Suspend()
}
#SuspendExempt false

#HotIf GetKeyState("Numlock", "T")
{
    SC010::Send("{sc033}")
    +SC010::Send("+{sc033}")
    SC011::Send("{sc01b}")
    +SC011::Send("+{sc01b}")
    SC02C::Send("{sc01a}")
    +SC02C::Send("+{sc01a}")
    SC01A::Send("{sc027}")
    +SC01A::Send("+{sc027}")
    SC01B::Send("{sc034}")
    +SC01B::Send("+{sc034}")
    SC02B::Send("{sc017}")
    +SC02B::Send("+{sc017}")
}