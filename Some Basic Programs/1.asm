;take two input ax & cx

;if ax>cx then bx=1
;if cx>ax then bx=2
;if ax=bx then bx=3




mov ax,5
mov cx,5


cmp ax,cx


je equal



jg greater


jl less




equal: mov bx,3

jmp exit
 
 
 

greater: mov bx,1

jmp exit 




less: mov bx,2



exit: int 3
               
               
        