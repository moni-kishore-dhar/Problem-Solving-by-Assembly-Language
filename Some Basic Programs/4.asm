;2*2+6*6+18*18+54*54


mov di,0


mov cx,4


mov si,3

mov bx,2


find_sum:
    mov ax,bx
    mul bx
    
    add di,ax
    
    mov ax,bx
    mul si  
    
    mov bx,ax
    
    
    loop find_sum