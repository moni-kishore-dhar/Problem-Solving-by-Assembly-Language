;1+(1*2)+(1*2*3)+(1*2*3*4)




mov cx,4

 
mov di,0 ;ans will be stored


loop1:
    
    mov bx,1 
    mov ax,1
    loop2:
        mul bx
        
        add bx,1
        cmp bx,cx
        jle loop2
    add di,ax  
    loop loop1

    