.model small
.stack 100h
.data
a db 10,13,"Enter number $"
b db 10,13,"The Number is Even $"
c db 10,13,"The Number is Odd $"
.code
main proc
    mov ax,@data
    mov ds,ax
    mov ah,9
    lea dx,a
    int 21h
    mov ah,1
    int 21h
    mov bl,2
    div bl
    cmp ah,0
    je even
    mov ah,9
    lea dx,c
    int 21h
    mov ah,4ch
    int 21h
    even:
    mov ah,9
    lea dx,b
    int 21h
    main endp
end main