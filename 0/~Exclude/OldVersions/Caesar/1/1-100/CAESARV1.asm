; Start of script
global _main
    extern  _GetStdHandle@4
    extern  _WriteFile@20
    extern  _ExitProcess@4

    section .text
_main:
    ; DWORD  bytes;    
    mov     ebp, esp
    sub     esp, 4

    ; hStdOut = GetstdHandle( STD_OUTPUT_HANDLE)
    push    -11
    call    _GetStdHandle@4
    mov     ebx, eax    

    ; WriteFile( hstdOut, message, length(message), &bytes, 0);
    push    0
    lea     eax, [ebp-4]
    push    eax
    push    (message_end - message)
    push    message
    push    ebx
    call    _WriteFile@20

    ; ExitProcess(0)
    push    0
    call    _ExitProcess@4

    ; never here
    hlt
message:
    stab 23 ; Caesar was stabbed 23 times, although this may not be valid syntax
    db      'Et tu, boot?', 10 ; Et tu, boot? or You too, Bootis?
message_end:

; File info
; File type: Assembly source file (*.asm)
; File version: 1 (Monday, 2021 September 20th at 2:24 pm)
; Line count (including blank lines and compiler line): 44

; End of script
