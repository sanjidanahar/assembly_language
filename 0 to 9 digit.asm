.model small
.stack 100h
.code

main proc
    mov cx,10
    mov dx,48  
    
    L1:
    mov ah, 2
    int 21h
    inc dx
    loop L1
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main