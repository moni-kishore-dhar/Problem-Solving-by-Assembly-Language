;Name: Moni Kishore Dhar
;ID: 2016-2-60-099
;Solution of Problem No: 2

;Capital letters and spaces will be ignored in the output    




org 100h
.stack 100h

.data

n_line db 0AH,0DH,"$"

msg1 db "Enter a sentence: $"
msg2 db "Your Sentece is: $" 
msg3 db ": $" 


  

store_letter_array dw 2000 dup(?)    ;In this array the string will be stored

count_letter_array db 26 dup(0)    ;In this array the number of each letter of string will be stored



starting_address_of_store_letter_array dw 1

starting_address_of_count_letter_array dw 1

length_of_string dw 1 

;counting_array dw 1
   
   
.code  

start proc
    
mov ax,@data
mov ds,ax



mov ah,9
lea dx,msg1
int 21h   

mov si,offset store_letter_array

mov cx,0 





input:                                       ;Here Input has taken
    mov ah,1
    int 21h   
    
    cmp al,13
    je exit1
    
    inc cx
    
    mov [si],al  
    inc si    
    
    jmp input
    


exit1:
    

mov [length_of_string],cx     ;Here the length of string including the space has been store. 
                                ;Later I will not count the space
    

call print_entered_string


start endp






print_entered_string proc
    



mov si,offset store_letter_array              ;Here the string has printed       

lea dx,n_line    ;new line printing
mov ah,9
int 21h


mov ah,9
lea dx,msg2
int 21h   

 
loop1:
    mov al,[si]
    
    
    
    
    
    mov dl,al
    mov ah,2
    int 21h 
    inc si
    loop loop1 
    

 
print_entered_string endp    








count_letter proc


 
lea dx,n_line    ;new line printing
mov ah,9
int 21h
 



;Here I am storing the starting address of both array

mov si,offset store_letter_array
mov [starting_address_of_store_letter_array],si

mov si,offset count_letter_array
mov [starting_address_of_count_letter_array],si

 
 
 
 
mov cx,[length_of_string]

mov bx,0 
 
letter_count_loop:
    
    mov si,[starting_address_of_store_letter_array]
    mov bl,[si] 
    
    ;if bl is less than the ascii value of 'a' then it can be a space or capital letter. cause the ascii value of space and capital letter is less than the ascii value of all small letter
    
    
    cmp bl,'a'
    jl continue_loop_this_is_may_be_space_or_capital_letter_as_input_so_dont_need_to_count  ;for ignoring the spaces and capital letter 
    
    
    
    sub bl,'a'                  ;by subtracting there will be store the serial number of letter. (0 to 25) for (a to z)                                           
     
    
    mov si,[starting_address_of_count_letter_array]
    
    add si,bx                  ;Here si is being add with the serial index number of letter (0 to 25) 
    
    add [si],1                 ;Here the value is increasing in the count_letter_array where index number(si)= starting address of the array + serial number of letter(0 to 25)               
    
    
    
    continue_loop_this_is_may_be_space_or_capital_letter_as_input_so_dont_need_to_count:
    
    
    
    add [starting_address_of_store_letter_array],1       ;here 1 is adding with starting address of array for going to next address
     
    
    loop letter_count_loop
    
 

lea dx,n_line    ;new line printing
mov ah,9
int 21h


 
 
 

lea dx,n_line    ;new line printing
mov ah,9
int 21h

    
    

mov si,offset count_letter_array 


;mov di,10  



mov bp,0 

print_count_letter_loop: 

    mov ax,0 
    mov bx,0
    mov al,[si]     
    cmp al,0
    je continue                          ;If any letter is absence in sentence then the count number of it is 0. So here it will be ignored for not printing.
    
    
    mov bx,si
    sub bx,starting_address_of_count_letter_array    ;By subtracting from bx to si I will get the serial number of letter, (0 to 25) for (a to z)
                                                     ;we know, index number(si)=starting adrress of the array + serial number of letter(0 to 25)
                                                     ;so that, serial number of letter(0 to 25)=index number(si) - starting adrress of the array
    
    
    
    
    
    mov al,bl                
    add al,'a'         ;Here the name  letter has printed
    mov dl,al
            
    mov ah,2
    int 21h
    
    
    
    
    mov ah,9
    lea dx,msg3         ;for printing ": "
    int 21h 
    
    
    
    
    ;mov al,[si]
    ;add al,'0'          ;Here the number of each letter has printed
    ;mov dl,al
            
    ;mov ah,2
    ;int 21h
    mov ax,0
    mov al,[si]
    mov cx,0
    mov di,10
    extract_digit:
        cmp al,0
        je exit5
        
        xor dx,dx ;mov dx, 0
        div di
        
        push dx 
        
        inc cx
        jmp extract_digit
    
    exit5:
        print:
            pop ax
            add al,'0'; add ax, 48
            
            mov dl,al
            
            mov ah,2
            int 21h
            
            loop print
     
    
    
    
    lea dx,n_line    ;new line printing
    mov ah,9
    int 21h
 
    
     
    
    continue: 
    
    inc si
     
    add bp,1  
    cmp bp,26
    jl print_count_letter_loop 
    
     

    

        
count_letter endp    
    
    


code_exit:
mov ah,4ch
int 21h

   



















 