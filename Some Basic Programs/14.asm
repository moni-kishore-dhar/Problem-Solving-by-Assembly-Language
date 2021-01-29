;Count number of digits of a given number. 

mov si,348
mov bx,10
mov di,0
mov ax,si
count:
    div bx
    mov dx,0
    
    add di,1
     
    cmp ax,0
    
    jg count        
    
    
    
    