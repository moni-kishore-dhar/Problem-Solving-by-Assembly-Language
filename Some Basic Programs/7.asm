;5+8+12+17+23       


mov ax,6
mov cx,5
mov bx,23
mov dx,0
sum:
    add dx,bx
    sub bx,ax
    sub ax,1
    loop sum     