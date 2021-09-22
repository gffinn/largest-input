
.model small    ;Defining the size of the listing
.stack 100h     ;Defining the size of the stack in bytes - optional
.data           ;Defines where variables are in memory

.code
  mov ah,00h ;set the configuration to video mode
  mov al,13h ;choose video mode
  int 10h     ;BIOS interrupt to execute

  mov ah,0bh ;set the configuration
  mov bh,15h ;background color
  mov bl,15h  ;choose background color
  int 10h     ;BIOS interrupt to execute

  mov ah,0ch  ;configuration to write the pixel
  mov al,0fh  ; choose color
  mov bh,00h  ;set the page number to a single page
  mov cx,0ah  ;set the column (x)
  mov dx,0ah  ;set the line (y)
  int 10h     ;BIOS interrupt to execute

  ret 




  end
