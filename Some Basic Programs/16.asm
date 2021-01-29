;Reverse a given number.


mov bx,4242
mov cx,10 
mov di,0; here reverse number will be store



loop1:  
    mov ax,bx
    div cx
    mov bx,ax    ;bx=bx/10 (In BX there will be store Quotient)
    
    mov si,dx    ;si=bx%10 (In CX there will be store remainder)
    mov dx,0
    
    mov ax,di     
    mul cx
    mov di,ax     ;di=di*10
    add di,si     ;di=di+si
    
    
    
    cmp bx,0
    jg loop1
     
    
    
    
    