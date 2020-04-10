.model small
.data
    str dw 20 dup("$")
    msg db 10,13,"Enter some Digit : $"
    msg1 db 10,13,"Maximum number   : $"
 .code
    main proc
        lea ax,data
        mov ds,ax
       
        lea dx,msg
        mov ah,09h
        int 21h
       
        lea dx,str
        mov str,20
        mov ah,0Ah
        int 21h
       
        mov ax,0        
        mov bx,0
                
        mov si,2
        mov ax,str[si]
        inc si
       
        mov cx,str[1]
        mov ch,0
        dec cx
                                   
        Find:
           
            mov ah,0
            mov bx,str[si]
            mov bh,0
            cmp bx,ax
            jge max
            jl min
            max:
            mov ax,bx
            min:
            inc si
                
        loop Find
        mov bx,0
        mov bx,ax
       
        lea dx,msg1
        mov ah,09h
        int 21h
        
        mov ah,02h
        mov dl,bl
        int 21h
       
        mov ah,4ch
        int 21h  
       
    endp main