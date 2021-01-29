;Find the 21th Fibonacci term.

                


mov si,0 ;first fibonacci number f0
mov di,1 ;second fibonacci number f1
mov bx,0


mov cx,19



fibonacci:
     
    mov bx,di
    add di,si
    mov si,bx
    loop fibonacci
    
    





