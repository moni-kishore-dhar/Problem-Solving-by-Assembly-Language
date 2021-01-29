
;if ax>bx and ax>cx then, dx=1 
;if bx>ax and bx>cx then, dx=2
;if cx>ax and cx>bx then, dx=3




mov ax,5
mov bx,8
mov cx,10



cmp ax,bx
jg L1
jl L3
jmp L8




L1:
    cmp ax,cx
    jg L2
    jmp L8
     
    


L2:
    mov dx,1
    jmp exit
    
    
L3:
    cmp bx,cx
    jg L4
    jmp L8



L4:
    mov dx,2
    jmp exit  
    


L8:
    cmp cx,ax
    jg L5
    jmp exit
    


L5:
    cmp cx,bx
    jg L6
    jmp exit


L6:
    mov dx,3  
    
    
    
exit:

    
    
       