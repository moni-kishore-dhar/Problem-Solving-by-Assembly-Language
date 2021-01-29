;take two input ax & cx

;if ax and cx both are even then bx=1
;if ax and cx both are odd then bx=2
;else bx=3




mov ax,5
mov cx,5


mov bx,2


div bx
cmp dx,0
je ax_even
jne ax_odd




ax_even:
    mov ax,cx
    div bx
    cmp dx,0
    je both_even
    jmp other_case


ax_odd:
    mov ax,cx
    div bx
    cmp dx,0
    jne both_odd
    jmp other_case




both_even:
    mov bx,1 
    jmp exit 

both_odd:
    mov bx,2 
    jmp exit

other_case:
    mov bx,3



exit: