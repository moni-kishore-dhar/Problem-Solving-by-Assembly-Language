;1*2*3+4*5*6+7*8*9+10*11*12

mov ax,0

mov bx,12

mov cx,4

mov si,0

series:
    mov ax,bx
    sub bx,1
    mul bx
    sub bx,1
    mul bx
    add si,ax
    sub bx,1
    loop series
    