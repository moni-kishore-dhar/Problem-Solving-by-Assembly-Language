;check armstrong . if armstrong then si=1, otherwise si=0;

mov bx,372
mov di,bx


mov dx,0
mov si,0

loop1:  
    
    mov cx,10
    mov ax,bx
    div cx 
    
    
    mov bx,ax
    
    mov cx,dx
    mov ax,cx
    mul cx
    mul cx
    
    
    
    add si,ax
    
    mov dx,0 
    
    cmp bx,0
    jg loop1     
    
cmp di,si
jne not_armstrong
mov si,1

jmp exit   

not_armstrong: 

mov si,0

exit:
    
    
    
    
    

    