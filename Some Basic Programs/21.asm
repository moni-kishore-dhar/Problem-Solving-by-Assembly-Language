;if a number is a square number then, si= 1. Otherwise, si= 0


mov bx,14


mov cx,bx
sub cx,1

loop1:
    mov ax,cx
    mul cx
    cmp ax,bx
    je square_number
    
    loop loop1
    
mov si,0

jmp exit                                                


square_number:
    mov si,1

exit:
    
    
    
    