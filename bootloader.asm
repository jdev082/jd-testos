;JaydenDev's digitally distributed computer operating system
;This is the bootloader component
mov ah, 0x0e ; tty mode
mov al, 'i'
int 0x10
mov al, 'n'
int 0x10
mov al, 'i'
int 0x10 ;
mov al, 't'
int 0x10

mov al, '_'
int 0x10

mov al, 's'
int 0x10
mov al, 'u'
int 0x10
mov al, 'c'
int 0x10
mov al, 'c'
int 0x10
mov al, 'e'
int 0x10
mov al, 's'
int 0x10
mov al, 's'
int 0x10

MOV dl, 10
MOV ah, 02h
INT 21h
MOV dl, 13
MOV ah, 02h
INT 21h

mov al, ' '
int 0x10
mov al, '$'
int 0x10

jmp $

times 510 - ($-$$) db 0
dw 0xaa55 

