;Find summation upto nth Fibonacci term.
;The first two fibonacci terms are 1, 1.
 
 
 
               


mov si,1 ;first fibonacci number f0
mov di,1 ;second fibonacci number f1

mov bx,0

mov ax,0 ;summation of fibonacci number

mov cx,7

add ax,si
add ax,di

fibonacci:
     
    mov bx,di
    add di,si
    mov si,bx
    
    add ax,di
    
    loop fibonacci
    
    





