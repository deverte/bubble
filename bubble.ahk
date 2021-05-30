; -----------------------------------------------------------------------------
; HELP
; -----------------------------------------------------------------------------
IniRead, x, %A_Scriptdir%\config.ini, style, x, Center
IniRead, y, %A_Scriptdir%\config.ini, style, y, Center
IniRead, width, %A_Scriptdir%\config.ini, style, width, 1280
IniRead, height, %A_Scriptdir%\config.ini, style, height, 366
IniRead, bgcolor, %A_Scriptdir%\config.ini, style, bgcolor, 35363A
IniRead, transparency, %A_Scriptdir%\config.ini, style, transparency, 255

Gui, -Caption +AlwaysOnTop
Gui, Color, %bgcolor%
Gui, Add, Picture, x0 y0 w%width% h%height%, %A_Scriptdir%\help.png
Gui, +Lastfound
WinSet, Transparent, %transparency%

IsHelpOpen := false

help()
{
    global IsHelpOpen
    global x
    global y
    if IsHelpOpen = true
    {
        Gui, Cancel
        IsHelpOpen = false
    }
    else
    {
        Gui, Show, x%x% y%y%
        IsHelpOpen = true
    }
}


; -----------------------------------------------------------------------------
; MATH / PHYSICS
; -----------------------------------------------------------------------------
deg := chr(176)         ; ` (left alt)  -- °
dagger := chr(8224)     ; 1 (left alt)  -- †
infin := chr(8734)      ; 2 (left alt)  -- ∞
plusmn := chr(177)      ; 3 (left alt)  -- ±
prod := chr(8719)       ; 4 (left alt)  -- ∏
oplus := chr(8853)      ; 5 (left alt)  -- ⊕
otimes := chr(8855)     ; 6 (left alt)  -- ⊗
times := chr(215)       ; 7 (left alt)  -- ×
middot := chr(183)      ; 8 (left alt)  -- ·
sum := chr(8721)        ; 9 (left alt)  -- ∑
int := chr(8747)        ; 0 (left alt)  -- ∫
mdash := chr(8212)      ; - (left alt)  -- —
ne := chr(8800)         ; = (left alt)  -- ≠
larrow := chr(8592)     ; [ (left alt)  -- ←
rarrow := chr(8594)     ; ] (left alt)  -- →
nabla := chr(8711)      ; \ (left alt)  -- ∇
laquo := chr(171)       ; ; (left alt)  -- «
raquo := chr(187)       ; ' (left alt)  -- »
lang := chr(9001)       ; , (left alt)  -- 〈
rang := chr(9002)       ; . (left alt)  -- 〉
                        ; / (left alt)  -- HELP
cap := chr(8745)        ; ` (right alt) -- ∩
cup := chr(8746)        ; 1 (right alt) -- ∪
forall := chr(8704)     ; 2 (right alt) -- ∀
exist := chr(8707)      ; 3 (right alt) -- ∃
mnplus := chr(8723)     ; 4 (right alt) -- ∓
radic := chr(8730)      ; 5 (right alt) -- √
para := chr(770)        ; 6 (right alt) -- ¶
sect := chr(772)        ; 7 (right alt) -- §
ang := chr(8736)        ; 8 (right alt) -- ∠
isin := chr(8712)       ; 9 (right alt) -- ∈
empty := chr(8709)      ; 0 (right alt) -- ∅
minus := chr(8722)      ; - (right alt) -- −
asymp := chr(8776)      ; = (right alt) -- ≈
larr := chr(8656)       ; [ (right alt) -- ⇐
rarr := chr(8658)       ; ] (right alt) -- ⇒
sub := chr(8834)        ; \ (right alt) -- ⊂
lt := chr(8810)         ; ; (right alt) -- ≪
gt := chr(8811)         ; ' (right alt) -- ≫
le := chr(8804)         ; , (right alt) -- ≤
ge := chr(8805)         ; . (right alt) -- ≥
                        ; / (right alt) -- HELP


; -----------------------------------------------------------------------------
; UPPERCASE (right alt)
; -----------------------------------------------------------------------------
aalpha := chr(913)   ; A    -- Α
bbeta := chr(914)    ; B    -- Β
ggamma := chr(915)   ; G    -- Γ
ddelta := chr(916)   ; D    -- Δ
eepsilon := chr(917) ; E    -- Ε
zzeta := chr(918)    ; Z    -- Ζ
eeta := chr(919)     ; V    -- Η
ttheta := chr(920)   ; Q    -- Θ
iiota := chr(921)    ; I    -- Ι
kkappa := chr(922)   ; K    -- Κ
llambda := chr(923)  ; L    -- Λ
mmu := chr(924)      ; M    -- Μ
nnu := chr(925)      ; N    -- Ν
xxi := chr(926)      ; J    -- Ξ
oomicron := chr(927) ; O    -- Ο
ppi := chr(928)      ; P    -- Π
rrho := chr(929)     ; R    -- Ρ
ssigma := chr(931)   ; S    -- Σ
ttau := chr(932)     ; T    -- Τ
uupsilon := chr(933) ; U    -- Υ
pphi := chr(934)     ; F    -- Φ
cchi := chr(935)     ; X    -- Χ
ppsi := chr(936)     ; Y    -- Ψ
oomega := chr(937)   ; W    -- Ω
part := chr(8706)    ; C    -- ∂

; -----------------------------------------------------------------------------
; LOWERCASE (left alt)
; -----------------------------------------------------------------------------
alpha := chr(945)   ; a -- α
beta := chr(946)    ; b -- β
gamma := chr(947)   ; g -- γ
delta := chr(948)   ; d -- δ
epsilon := chr(949) ; e -- ε
zeta := chr(950)    ; z -- ζ
eta := chr(951)     ; v -- η
theta := chr(952)   ; q -- θ
iota := chr(953)    ; i -- ι
kappa := chr(954)   ; k -- κ
lambda := chr(955)  ; l -- λ
mu := chr(956)      ; m -- μ
nu := chr(957)      ; n -- ν
xi := chr(958)      ; j -- ξ
omicron := chr(959) ; o -- ο
pi := chr(960)      ; p -- π
rho := chr(961)     ; r -- ρ
sigmaf := chr(962)  ; c -- ς
sigma := chr(963)   ; s -- σ
tau := chr(964)     ; t -- τ
upsilon := chr(965) ; u -- υ
phi := chr(966)     ; f -- φ
chi := chr(967)     ; x -- χ
psi := chr(968)     ; y -- ψ
omega := chr(969)   ; w -- ω
planck := chr(8463) ; h -- ℏ


; -----------------------------------------------------------------------------
; MATH / PHYSICS
; -----------------------------------------------------------------------------
<!SC29::
Send, %deg%
return

>!SC29::
Send, %cap%
return

<!1::
Send, %dagger%
return

>!1::
Send, %cup%
return

<!2::
Send, %infin%
return

>!2::
Send, %forall%
return

<!3::
Send, %plusmn%
return

>!3::
Send, %exist%
return

<!4::
Send, %prod%
return

>!4::
Send, %mnplus%
return

<!5::
Send, %oplus%
return

>!5::
Send, %radic%
return

<!6::
Send, %otimes%
return

>!6::
Send, %para%
return

<!7::
Send, %times%
return

>!7::
Send, %sect%
return

<!8::
Send, %middot%
return

>!8::
Send, %ang%
return

<!9::
Send, %sum%
return

>!9::
Send, %isin%
return

<!0::
Send, %int%
return

>!0::
Send, %empty%
return

<!SC0C::
Send, %mdash%
return

>!SC0C::
Send, %minus%
return

<!SC0D::
Send, %ne%
return

>!SC0D::
Send, %asymp%
return

<!SC1A::
Send, %larrow%
return

>!SC1A::
Send, %larr%
return

<!SC1B::
Send, %rarrow%
return

>!SC1B::
Send, %rarr%
return

<!SC2B::
Send, %nabla%
return

>!SC2B::
Send, %sub%
return

<!SC27::
Send, %laquo%
return

>!SC27::
Send, %lt%
return

<!SC28::
Send, %raquo%
return

>!SC28::
Send, %gt%
return

<!SC33::
Send, %lang%
return

>!SC33::
Send, %le%
return

<!SC34::
Send, %rang%
return

>!SC34::
Send, %ge%
return

<!SC35::
help()
return

>!SC35::
help()
return


; -----------------------------------------------------------------------------
; UPPERCASE
; -----------------------------------------------------------------------------
>!a::
Send, %aalpha%
return

>!b::
Send, %bbeta%
return

>!g::
Send, %ggamma%
return

>!d::
Send, %ddelta%
return

>!e::
Send, %eepsilon%
return

>!z::
Send, %zzeta%
return

>!v::
Send, %eeta%
return

>!q::
Send, %ttheta%
return

>!i::
Send, %iiota%
return

>!k::
Send, %kkappa%
return

>!l::
Send, %llambda%
return

>!m::
Send, %mmu%
return

>!n::
Send, %nnu%
return

>!j::
Send, %xxi%
return

>!o::
Send, %oomicron%
return

>!p::
Send, %ppi%
return

>!r::
Send, %rrho%
return

>!c::
Send, %part%
return

>!s::
Send, %ssigma%
return

>!t::
Send, %ttau%
return

>!u::
Send, %uupsilon%
return

>!f::
Send, %pphi%
return

>!x::
Send, %cchi%
return

>!y::
Send, %ppsi%
return

>!w::
Send, %oomega%
return


; -----------------------------------------------------------------------------
; LOWERCASE
; -----------------------------------------------------------------------------
<!a::
Send, %alpha%
return

<!b::
Send, %beta%
return

<!g::
Send, %gamma%
return

<!d::
Send, %delta%
return

<!e::
Send, %epsilon%
return

<!z::
Send, %zeta%
return

<!v::
Send, %eta%
return

<!q::
Send, %theta%
return

<!i::
Send, %iota%
return

<!k::
Send, %kappa%
return

<!l::
Send, %lambda%
return

<!m::
Send, %mu%
return

<!n::
Send, %nu%
return

<!j::
Send, %xi%
return

<!o::
Send, %omicron%
return

<!p::
Send, %pi%
return

<!r::
Send, %rho%
return

<!c::
Send, %sigmaf%
return

<!s::
Send, %sigma%
return

<!t::
Send, %tau%
return

<!u::
Send, %upsilon%
return

<!f::
Send, %phi%
return

<!x::
Send, %chi%
return

<!y::
Send, %psi%
return

<!w::
Send, %omega%
return

!h::
Send, %planck%
return