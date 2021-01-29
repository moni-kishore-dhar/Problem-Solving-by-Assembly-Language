;Count number of factors of a given number.



mov bx,80


mov di,0 ; here total number of factor will be store

mov si,1

loop1:
    mov ax,bx
    mov dx,0
    div si
    cmp dx,0
    jne not_factor
    add di,1
    
    
    not_factor: 
    
    add si,1
    cmp si,bx
    jle loop1
    
    
        
