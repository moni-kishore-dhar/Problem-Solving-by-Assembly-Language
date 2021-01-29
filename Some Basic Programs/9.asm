;3 - 5 + 7 - 9 + 11  
;using even odd


mov bx,11
mov cx,5
mov si,0
mov di,2
Series:
    
    mov ax,cx
    div di
    cmp dx,0
    je cx_even
    jne cx_odd
    
    
    
    
    cx_even:
        sub si,bx
        sub bx,2
        jmp exit
        
    
    
    
    
    
    cx_odd:
        add si,bx
        sub bx,2
        
    
    exit:
    
    loop series
    