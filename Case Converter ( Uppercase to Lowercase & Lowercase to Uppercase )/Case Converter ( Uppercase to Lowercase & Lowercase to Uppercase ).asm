                                          

.model small
.stack 100h
.code

main proc  
     
    mov ah,1       
    int 21h
    mov bl,al 
   
    mov ah,2        
    mov dl,10
    int 21h
    mov dl,13
    int 21h
   
    cmp bl,97      
    jge L1
    jmp L2 
    
  
  

L1:  
        
     cmp bl,122      
     jle L5 
    
    
    
   
L2:  
        
     cmp bl,65      
     jge L3
     jmp EXIT
     
     
     
   
L3:  
        
     cmp bl,90      
     jle L4
     jmp EXIT   
 
    

L4:
         
    add bl,32       
    mov ah,2
    mov dl,bl
    int 21h
    jmp EXIT
 
   
L5:
    
    sub bl,32       
    mov ah,2
    mov dl,bl
    int 21h
    
EXIT:
    mov ah,2     
    mov dl,10
    int 21h
    mov dl,13
    int 21h 
    
    end main  