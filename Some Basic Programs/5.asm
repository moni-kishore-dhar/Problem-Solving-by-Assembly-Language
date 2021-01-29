        ;if ax=si=cx          then, bx=1
        ;if ax<si or cx<si    then, bx=2  
        ;if ax>cx and ax>si   then, bx=3
        ;if ax<cx and ax>si   then, bx=4
        ;else        bx=5
        
        
        
mov ax,8
mov si,8
mov cx,8

cmp ax,si

jl ax_less_than_si
jg ax_greater_than_si
je ax_si_equal   


checking_second_condition_of_or:
    cmp cx,si
    jl cx_less_than_si 
    
    mov bx,5
    jmp exit





  
cx_less_than_si:
    mov bx,2
    jmp exit   
    
    
    
    
    
ax_greater_than_si:
    cmp ax,cx
    jg ax_greater_than_cx
    jl ax_less_than_cx
    jmp checking_second_condition_of_or
    
    
    
    
    
    



ax_greater_than_cx:
    mov bx,3
    jmp exit


ax_less_than_cx:
    mov bx,4
    jmp exit


   
    
ax_less_than_si:
    mov bx,2
    jmp exit
        
    
    
    
ax_si_equal:
    cmp si,cx
    je all_equal
    jmp checking_second_condition_of_or





all_equal:
    mov bx,1
    jmp exit
    
    
exit:            