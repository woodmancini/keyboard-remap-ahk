; Backlash key sends nothing (it's now a layer key)
*\::return

; force CapsLock to stay off globally
SetCapsLockState "AlwaysOff"

CapsLock::LAlt
RAlt::Shift

; intercept LAlt (and Shift+LAlt) so it does nothing when pressed alone
*LAlt::return

; Backslash layer: arrow keys, navigation
#HotIf GetKeyState("\", "P")

    ; arrow keys - defaults to Ctrl + Left/Right
    i::Up
    k::Down
    j::^Left
    l::^Right

    ; Text navigation and editing - defaults to Ctrl + BackSpace
    u::Home
    o::End
    p::^BackSpace
    `;::Enter
    h::PgUp
    n::PgDn
    f::Tab
    d::Delete

#HotIf

; Left Alt layer: number/punctuation layer
#HotIf GetKeyState("LAlt", "P")

    q::1
    w::2
    e::3
    r::4
    t::5
    y::6
    u::7
    i::8
    o::9
    p::0
    m::\
    j::-
    k::=
    l::#
    
#HotIf