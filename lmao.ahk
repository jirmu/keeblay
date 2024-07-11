#Requires AutoHotkey v2.0  

IsNumLayer := false
HoldTime := 0.2

$Space:: {
    SendInput("{Space}")
    
    if KeyWait("Space", "T" HoldTime) {
        return
    } 
    
    SendInput("{BS}")
    global IsNumLayer := true
    KeyWait("Space")
    global IsNumLayer := false
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