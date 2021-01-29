;Reverse a given number. 

;if pallindrome bx=1 otherwise 0


mov bx,424
mov cx,bx    ;actual number
mov di,0     ;here reverse number will be store

mov si,10

loop1:  
    
    mov ax,di
    mul si
    mov di,ax  
    mov dx,0
    
    
    mov ax,bx
    div si
    mov bx,ax
    
    
    add di,dx
    
    
    mov dx,0
    
    
    
    
    cmp bx,0
    jg loop1
     
    
cmp cx,di
je pallindrome
mov bx,0

jmp exit

pallindrome:
    mov bx,1
    
exit:

    
    