;Check if a number is perfect or not. (see definition of a perfect number) 
;if perfect then di=1
;if not perfect then di=0


mov bx,496

mov cx,bx
sub cx,1


mov si,0
mov dx,0

loop1: 
    mov ax,bx
    div cx
    cmp dx,0
    jne not_divisable 
    add si,cx
    not_divisable:
    
    mov dx,0
    loop loop1
    
cmp bx,si
jne not_perfect 
mov di,1
jmp exit

not_perfect:
mov di,0

exit:

    

    
        
        
    