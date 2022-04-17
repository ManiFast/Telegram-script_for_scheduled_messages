;====================
; Created by Stas
;=================

Sleep, 2000

gotostart(yUP, xUP, inyUP, inxUP, ifDown)
{
	difference = 48
	
	;MsgBox, %toY%
	
	; Text
	Click, 810, 1035
	
	; Copy
	Send {Ctrl down}
	Send {a down}
	Send {a up}
	Send {Ctrl up}
	
	Send {Ctrl down}
	Send {v down}
	Send {v up}
	Send {Ctrl up}
	;Send /metr@DickMetrBot
	Sleep, 1

	; Shedule
	MouseMove, 1605, 1030
	;Send {RButton down}
	;Send {RButton up}
	Click, 1
	
	; Window position
	MouseMove, 50, 30
	Click, 1
	MouseMove, 890, 540
	Click, 1

	; Down arrow
	if (ifDown = 0)
	{
		; NO
	}
	else
	{
		countDown = 0
		
		while (countDown != ifDown)
		{
			Click, 1116, 382
			countDown += 1
			Sleep, 1
		}
	}

	; Start
	; y x + if not 0, plus number in parameters to y x
	MouseMove, yUP+inxUP, xUP+inyUP
	Sleep, 100
	Click, 1
	
	; Click to the right edge of button "Shedule"
	Click, 1138, 617
	; If day was gray click on empty place (more right of button)
	Click, 1206, 617
	
	Sleep, 1
}



;;;;;;;;;;;;;;;
; Main

; 813x457 Start pos (y, x) !!! not x y
;Screen:	1494, 479 (less often used)
;Window:	1357, 322 (default) I took it

; HOW TO USE !!!
; gotostart(x, y, +to Y, +to X, +month)

; +1 +2 +3  +4  +5  +6  
; 48 96 144 192 240 288 336

startY = 823
startX = 466

; Change this
monthUP = 0

up:

;======================================
; 01
gotostart(startY, startX, 0, 0, monthUP)
gotostart(startY, startX, 0, 48, monthUP)
gotostart(startY, startX, 0, 96, monthUP)
gotostart(startY, startX, 0, 144, monthUP)
gotostart(startY, startX, 0, 192, monthUP)
gotostart(startY, startX, 0, 240, monthUP)
gotostart(startY, startX, 0, 288, monthUP)
; 02
gotostart(startY, startX, 36, 0, monthUP)
gotostart(startY, startX, 36, 48, monthUP)
gotostart(startY, startX, 36, 96, monthUP)
gotostart(startY, startX, 36, 144, monthUP)
gotostart(startY, startX, 36, 192, monthUP)
gotostart(startY, startX, 36, 240, monthUP)
gotostart(startY, startX, 36, 288, monthUP)
; 03
gotostart(startY, startX, 82, 0, monthUP)
gotostart(startY, startX, 82, 48, monthUP)
gotostart(startY, startX, 82, 96, monthUP)
gotostart(startY, startX, 82, 144, monthUP)
gotostart(startY, startX, 82, 192, monthUP)
gotostart(startY, startX, 82, 240, monthUP)
gotostart(startY, startX, 82, 288, monthUP)
; 04
gotostart(startY, startX, 125, 0, monthUP)
gotostart(startY, startX, 125, 48, monthUP)
gotostart(startY, startX, 125, 96, monthUP)
gotostart(startY, startX, 125, 144, monthUP)
gotostart(startY, startX, 125, 192, monthUP)
gotostart(startY, startX, 125, 240, monthUP)
gotostart(startY, startX, 125, 288, monthUP)
; 05
gotostart(startY, startX, 164, 0, monthUP)
gotostart(startY, startX, 164, 48, monthUP)
gotostart(startY, startX, 164, 96, monthUP)
gotostart(startY, startX, 164, 144, monthUP)
gotostart(startY, startX, 164, 192, monthUP)
gotostart(startY, startX, 164, 240, monthUP)
gotostart(startY, startX, 164, 288, monthUP)
; 06
gotostart(startY, startX, 212, 0, monthUP)
gotostart(startY, startX, 212, 48, monthUP)
gotostart(startY, startX, 212, 96, monthUP)
gotostart(startY, startX, 212, 144, monthUP)
gotostart(startY, startX, 212, 192, monthUP)
gotostart(startY, startX, 212, 240, monthUP)
gotostart(startY, startX, 212, 288, monthUP)

monthUP += 1

Goto, up

return
pause