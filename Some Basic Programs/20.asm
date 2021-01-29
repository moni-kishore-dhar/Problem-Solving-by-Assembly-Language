;Check if a number is prime or not. 
; if prime di=1
; if not prime di=0

mov bx,14
cmp bx,2
je prime  ;2 is a prime number


mov cx,bx
sub cx,1

mov dx,0
loop1:
    mov ax,bx
    div cx
    cmp dx,0
    je not_prime
    mov dx,0
    sub cx,1
    cmp cx,2
    jge loop1
prime:    
    mov di,1 
    jmp exit
not_prime:
    mov di,0
    
exit:  
