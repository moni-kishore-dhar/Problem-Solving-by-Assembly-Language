
;1^2 + (1^2+2^2) + (1^2+2^2+3^2) + (1^2+2^2+3^2+4^2)                            



mov di,0  ;answer will be stored

mov cx,4 



series:
    mov bx,1
    
    loop2:
        mov ax,bx
        mul bx
        add di,ax
        add bx,1
       
        cmp bx,cx
        jle loop2


    loop series
        