; 1^1+2^2+3^3+4^4


mov di,0
mov cx,4   
 




find_sum:

    mov si,1
    
    mov ax,1
    
    
    
    inner_loop:
        mul cx
        add si,1
        cmp si,cx
        jle inner_loop
    
    
    
    add di,ax
            

    
    loop find_sum