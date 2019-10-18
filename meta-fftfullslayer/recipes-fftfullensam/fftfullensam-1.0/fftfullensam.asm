default rel

global main: ;function

extern __stack_chk_fail                                 ; near
extern sin                                              ; near
extern cos                                              ; near
extern puts                                             ; near
extern log2                                             ; near
extern __isoc99_scanf                                   ; near
extern printf                                           ; near
extern _GLOBAL_OFFSET_TABLE_                            ; byte


SECTION .text   ;align=1 execute                         ; section number 1, code

main:   ; Function begin
        push    rbp                                     ; 0000 _ 55
        mov     rbp, rsp                                ; 0001 _ 48: 89. E5
        push    r15                                     ; 0004 _ 41: 57
        push    r14                                     ; 0006 _ 41: 56
        push    r13                                     ; 0008 _ 41: 55
        push    r12                                     ; 000A _ 41: 54
        push    rbx                                     ; 000C _ 53
        sub     rsp, 168                                ; 000D _ 48: 81. EC, 000000A8
; Note: Address is not rip-relative
; Note: Absolute memory address without relocation
        mov     rax, qword [fs:abs 28H]                 ; 0014 _ 64 48: 8B. 04 25, 00000028
        mov     qword [rbp-38H], rax                    ; 001D _ 48: 89. 45, C8
        xor     eax, eax                                ; 0021 _ 31. C0
        mov     rax, rsp                                ; 0023 _ 48: 89. E0
        mov     rbx, rax                                ; 0026 _ 48: 89. C3
        lea     rdi, [rel ?_019]                        ; 0029 _ 48: 8D. 3D, 00000000(rel)
        mov     eax, 0                                  ; 0030 _ B8, 00000000
        call    printf                                  ; 0035 _ E8, 00000000(PLT r)
        lea     rax, [rbp-0A4H]                         ; 003A _ 48: 8D. 85, FFFFFF5C
        mov     rsi, rax                                ; 0041 _ 48: 89. C6
        lea     rdi, [rel ?_020]                        ; 0044 _ 48: 8D. 3D, 00000000(rel)
        mov     eax, 0                                  ; 004B _ B8, 00000000
        call    __isoc99_scanf                          ; 0050 _ E8, 00000000(PLT r)
        mov     eax, dword [rbp-0A4H]                   ; 0055 _ 8B. 85, FFFFFF5C
        cvtsi2sd xmm0, eax                              ; 005B _ F2: 0F 2A. C0
        call    log2                                    ; 005F _ E8, 00000000(PLT r)
        cvttsd2si eax, xmm0                             ; 0064 _ F2: 0F 2C. C0
        mov     dword [rbp-8CH], eax                    ; 0068 _ 89. 85, FFFFFF74
        mov     eax, dword [rbp-0A4H]                   ; 006E _ 8B. 85, FFFFFF5C
        movsxd  rdx, eax                                ; 0074 _ 48: 63. D0
        sub     rdx, 1                                  ; 0077 _ 48: 83. EA, 01
        mov     qword [rbp-80H], rdx                    ; 007B _ 48: 89. 55, 80
        movsxd  rdx, eax                                ; 007F _ 48: 63. D0
        mov     qword [rbp-0C0H], rdx                   ; 0082 _ 48: 89. 95, FFFFFF40
        mov     qword [rbp-0B8H], 0                     ; 0089 _ 48: C7. 85, FFFFFF48, 00000000
        movsxd  rdx, eax                                ; 0094 _ 48: 63. D0
        mov     qword [rbp-0D0H], rdx                   ; 0097 _ 48: 89. 95, FFFFFF30
        mov     qword [rbp-0C8H], 0                     ; 009E _ 48: C7. 85, FFFFFF38, 00000000
        cdqe                                            ; 00A9 _ 48: 98
        shl     rax, 3                                  ; 00AB _ 48: C1. E0, 03
        lea     rdx, [rax+7H]                           ; 00AF _ 48: 8D. 50, 07
        mov     eax, 16                                 ; 00B3 _ B8, 00000010
        sub     rax, 1                                  ; 00B8 _ 48: 83. E8, 01
        add     rax, rdx                                ; 00BC _ 48: 01. D0
        mov     ecx, 16                                 ; 00BF _ B9, 00000010
        mov     edx, 0                                  ; 00C4 _ BA, 00000000
        div     rcx                                     ; 00C9 _ 48: F7. F1
        imul    rax, rax, 16                            ; 00CC _ 48: 6B. C0, 10
        sub     rsp, rax                                ; 00D0 _ 48: 29. C4
        mov     rax, rsp                                ; 00D3 _ 48: 89. E0
        add     rax, 7                                  ; 00D6 _ 48: 83. C0, 07
        shr     rax, 3                                  ; 00DA _ 48: C1. E8, 03
        shl     rax, 3                                  ; 00DE _ 48: C1. E0, 03
        mov     qword [rbp-78H], rax                    ; 00E2 _ 48: 89. 45, 88
        mov     eax, dword [rbp-0A4H]                   ; 00E6 _ 8B. 85, FFFFFF5C
        movsxd  rdx, eax                                ; 00EC _ 48: 63. D0
        sub     rdx, 1                                  ; 00EF _ 48: 83. EA, 01
        mov     qword [rbp-70H], rdx                    ; 00F3 _ 48: 89. 55, 90
        movsxd  rdx, eax                                ; 00F7 _ 48: 63. D0
        mov     r14, rdx                                ; 00FA _ 49: 89. D6
        mov     r15d, 0                                 ; 00FD _ 41: BF, 00000000
        movsxd  rdx, eax                                ; 0103 _ 48: 63. D0
        mov     r12, rdx                                ; 0106 _ 49: 89. D4
        mov     r13d, 0                                 ; 0109 _ 41: BD, 00000000
        cdqe                                            ; 010F _ 48: 98
        shl     rax, 3                                  ; 0111 _ 48: C1. E0, 03
        lea     rdx, [rax+7H]                           ; 0115 _ 48: 8D. 50, 07
        mov     eax, 16                                 ; 0119 _ B8, 00000010
        sub     rax, 1                                  ; 011E _ 48: 83. E8, 01
        add     rax, rdx                                ; 0122 _ 48: 01. D0
        mov     ecx, 16                                 ; 0125 _ B9, 00000010
        mov     edx, 0                                  ; 012A _ BA, 00000000
        div     rcx                                     ; 012F _ 48: F7. F1
        imul    rax, rax, 16                            ; 0132 _ 48: 6B. C0, 10
        sub     rsp, rax                                ; 0136 _ 48: 29. C4
        mov     rax, rsp                                ; 0139 _ 48: 89. E0
        add     rax, 7                                  ; 013C _ 48: 83. C0, 07
        shr     rax, 3                                  ; 0140 _ 48: C1. E8, 03
        shl     rax, 3                                  ; 0144 _ 48: C1. E0, 03
        mov     qword [rbp-68H], rax                    ; 0148 _ 48: 89. 45, 98
        lea     rdi, [rel ?_021]                        ; 014C _ 48: 8D. 3D, 00000000(rel)
        call    puts                                    ; 0153 _ E8, 00000000(PLT r)
        mov     dword [rbp-94H], 0                      ; 0158 _ C7. 85, FFFFFF6C, 00000000
        jmp     ?_002                                   ; 0162 _ EB, 32

?_001:  mov     eax, dword [rbp-94H]                    ; 0164 _ 8B. 85, FFFFFF6C
        cdqe                                            ; 016A _ 48: 98
        lea     rdx, [rax*8]                            ; 016C _ 48: 8D. 14 C5, 00000000
        mov     rax, qword [rbp-78H]                    ; 0174 _ 48: 8B. 45, 88
        add     rax, rdx                                ; 0178 _ 48: 01. D0
        mov     rsi, rax                                ; 017B _ 48: 89. C6
        lea     rdi, [rel ?_022]                        ; 017E _ 48: 8D. 3D, 00000000(rel)
        mov     eax, 0                                  ; 0185 _ B8, 00000000
        call    __isoc99_scanf                          ; 018A _ E8, 00000000(PLT r)
        add     dword [rbp-94H], 1                      ; 018F _ 83. 85, FFFFFF6C, 01
?_002:  mov     eax, dword [rbp-0A4H]                   ; 0196 _ 8B. 85, FFFFFF5C
        cmp     dword [rbp-94H], eax                    ; 019C _ 39. 85, FFFFFF6C
        jl      ?_001                                   ; 01A2 _ 7C, C0
        lea     rdi, [rel ?_023]                        ; 01A4 _ 48: 8D. 3D, 00000000(rel)
        call    puts                                    ; 01AB _ E8, 00000000(PLT r)
        mov     dword [rbp-94H], 0                      ; 01B0 _ C7. 85, FFFFFF6C, 00000000
        jmp     ?_004                                   ; 01BA _ EB, 32

?_003:  mov     eax, dword [rbp-94H]                    ; 01BC _ 8B. 85, FFFFFF6C
        cdqe                                            ; 01C2 _ 48: 98
        lea     rdx, [rax*8]                            ; 01C4 _ 48: 8D. 14 C5, 00000000
        mov     rax, qword [rbp-68H]                    ; 01CC _ 48: 8B. 45, 98
        add     rax, rdx                                ; 01D0 _ 48: 01. D0
        mov     rsi, rax                                ; 01D3 _ 48: 89. C6
        lea     rdi, [rel ?_022]                        ; 01D6 _ 48: 8D. 3D, 00000000(rel)
        mov     eax, 0                                  ; 01DD _ B8, 00000000
        call    __isoc99_scanf                          ; 01E2 _ E8, 00000000(PLT r)
        add     dword [rbp-94H], 1                      ; 01E7 _ 83. 85, FFFFFF6C, 01
?_004:  mov     eax, dword [rbp-0A4H]                   ; 01EE _ 8B. 85, FFFFFF5C
        cmp     dword [rbp-94H], eax                    ; 01F4 _ 39. 85, FFFFFF6C
        jl      ?_003                                   ; 01FA _ 7C, C0
        mov     dword [rbp-98H], 0                      ; 01FC _ C7. 85, FFFFFF68, 00000000
        mov     eax, dword [rbp-0A4H]                   ; 0206 _ 8B. 85, FFFFFF5C
        mov     edx, eax                                ; 020C _ 89. C2
        shr     edx, 31                                 ; 020E _ C1. EA, 1F
        add     eax, edx                                ; 0211 _ 01. D0
        sar     eax, 1                                  ; 0213 _ D1. F8
        mov     dword [rbp-90H], eax                    ; 0215 _ 89. 85, FFFFFF70
        mov     dword [rbp-94H], 1                      ; 021B _ C7. 85, FFFFFF6C, 00000001
        jmp     ?_009                                   ; 0225 _ E9, 00000106

?_005:  mov     eax, dword [rbp-90H]                    ; 022A _ 8B. 85, FFFFFF70
        mov     dword [rbp-0A0H], eax                   ; 0230 _ 89. 85, FFFFFF60
        jmp     ?_007                                   ; 0236 _ EB, 21

?_006:  mov     eax, dword [rbp-0A0H]                   ; 0238 _ 8B. 85, FFFFFF60
        sub     dword [rbp-98H], eax                    ; 023E _ 29. 85, FFFFFF68
        mov     eax, dword [rbp-0A0H]                   ; 0244 _ 8B. 85, FFFFFF60
        mov     edx, eax                                ; 024A _ 89. C2
        shr     edx, 31                                 ; 024C _ C1. EA, 1F
        add     eax, edx                                ; 024F _ 01. D0
        sar     eax, 1                                  ; 0251 _ D1. F8
        mov     dword [rbp-0A0H], eax                   ; 0253 _ 89. 85, FFFFFF60
?_007:  mov     eax, dword [rbp-98H]                    ; 0259 _ 8B. 85, FFFFFF68
        cmp     eax, dword [rbp-0A0H]                   ; 025F _ 3B. 85, FFFFFF60
        jge     ?_006                                   ; 0265 _ 7D, D1
        mov     eax, dword [rbp-0A0H]                   ; 0267 _ 8B. 85, FFFFFF60
        add     dword [rbp-98H], eax                    ; 026D _ 01. 85, FFFFFF68
        mov     eax, dword [rbp-94H]                    ; 0273 _ 8B. 85, FFFFFF6C
        cmp     eax, dword [rbp-98H]                    ; 0279 _ 3B. 85, FFFFFF68
        jge     ?_008                                   ; 027F _ 0F 8D, 000000A4
        mov     rax, qword [rbp-78H]                    ; 0285 _ 48: 8B. 45, 88
        mov     edx, dword [rbp-94H]                    ; 0289 _ 8B. 95, FFFFFF6C
        movsxd  rdx, edx                                ; 028F _ 48: 63. D2
        movsd   xmm0, qword [rax+rdx*8]                 ; 0292 _ F2: 0F 10. 04 D0
        movsd   qword [rbp-48H], xmm0                   ; 0297 _ F2: 0F 11. 45, B8
        mov     rax, qword [rbp-78H]                    ; 029C _ 48: 8B. 45, 88
        mov     edx, dword [rbp-98H]                    ; 02A0 _ 8B. 95, FFFFFF68
        movsxd  rdx, edx                                ; 02A6 _ 48: 63. D2
        movsd   xmm0, qword [rax+rdx*8]                 ; 02A9 _ F2: 0F 10. 04 D0
        mov     rax, qword [rbp-78H]                    ; 02AE _ 48: 8B. 45, 88
        mov     edx, dword [rbp-94H]                    ; 02B2 _ 8B. 95, FFFFFF6C
        movsxd  rdx, edx                                ; 02B8 _ 48: 63. D2
        movsd   qword [rax+rdx*8], xmm0                 ; 02BB _ F2: 0F 11. 04 D0
        mov     rax, qword [rbp-78H]                    ; 02C0 _ 48: 8B. 45, 88
        mov     edx, dword [rbp-98H]                    ; 02C4 _ 8B. 95, FFFFFF68
        movsxd  rdx, edx                                ; 02CA _ 48: 63. D2
        movsd   xmm0, qword [rbp-48H]                   ; 02CD _ F2: 0F 10. 45, B8
        movsd   qword [rax+rdx*8], xmm0                 ; 02D2 _ F2: 0F 11. 04 D0
        mov     rax, qword [rbp-68H]                    ; 02D7 _ 48: 8B. 45, 98
        mov     edx, dword [rbp-94H]                    ; 02DB _ 8B. 95, FFFFFF6C
        movsxd  rdx, edx                                ; 02E1 _ 48: 63. D2
        movsd   xmm0, qword [rax+rdx*8]                 ; 02E4 _ F2: 0F 10. 04 D0
        movsd   qword [rbp-48H], xmm0                   ; 02E9 _ F2: 0F 11. 45, B8
        mov     rax, qword [rbp-68H]                    ; 02EE _ 48: 8B. 45, 98
        mov     edx, dword [rbp-98H]                    ; 02F2 _ 8B. 95, FFFFFF68
        movsxd  rdx, edx                                ; 02F8 _ 48: 63. D2
        movsd   xmm0, qword [rax+rdx*8]                 ; 02FB _ F2: 0F 10. 04 D0
        mov     rax, qword [rbp-68H]                    ; 0300 _ 48: 8B. 45, 98
        mov     edx, dword [rbp-94H]                    ; 0304 _ 8B. 95, FFFFFF6C
        movsxd  rdx, edx                                ; 030A _ 48: 63. D2
        movsd   qword [rax+rdx*8], xmm0                 ; 030D _ F2: 0F 11. 04 D0
        mov     rax, qword [rbp-68H]                    ; 0312 _ 48: 8B. 45, 98
        mov     edx, dword [rbp-98H]                    ; 0316 _ 8B. 95, FFFFFF68
        movsxd  rdx, edx                                ; 031C _ 48: 63. D2
        movsd   xmm0, qword [rbp-48H]                   ; 031F _ F2: 0F 10. 45, B8
        movsd   qword [rax+rdx*8], xmm0                 ; 0324 _ F2: 0F 11. 04 D0
?_008:  add     dword [rbp-94H], 1                      ; 0329 _ 83. 85, FFFFFF6C, 01
?_009:  mov     eax, dword [rbp-0A4H]                   ; 0330 _ 8B. 85, FFFFFF5C
        sub     eax, 1                                  ; 0336 _ 83. E8, 01
        cmp     dword [rbp-94H], eax                    ; 0339 _ 39. 85, FFFFFF6C
        jl      ?_005                                   ; 033F _ 0F 8C, FFFFFEE5
        mov     dword [rbp-0A0H], 0                     ; 0345 _ C7. 85, FFFFFF60, 00000000
        mov     dword [rbp-90H], 1                      ; 034F _ C7. 85, FFFFFF70, 00000001
        mov     dword [rbp-94H], 0                      ; 0359 _ C7. 85, FFFFFF6C, 00000000
        jmp     ?_015                                   ; 0363 _ E9, 0000023C

?_010:  mov     eax, dword [rbp-90H]                    ; 0368 _ 8B. 85, FFFFFF70
        mov     dword [rbp-0A0H], eax                   ; 036E _ 89. 85, FFFFFF60
        shl     dword [rbp-90H], 1                      ; 0374 _ D1. A5, FFFFFF70
        cvtsi2sd xmm0, dword [rbp-90H]                  ; 037A _ F2: 0F 2A. 85, FFFFFF70
        movsd   xmm1, qword [rel ?_030]                 ; 0382 _ F2: 0F 10. 0D, 00000000(rel)
        divsd   xmm1, xmm0                              ; 038A _ F2: 0F 5E. C8
        movapd  xmm0, xmm1                              ; 038E _ 66: 0F 28. C1
        movsd   qword [rbp-60H], xmm0                   ; 0392 _ F2: 0F 11. 45, A0
        pxor    xmm0, xmm0                              ; 0397 _ 66: 0F EF. C0
        movsd   qword [rbp-88H], xmm0                   ; 039B _ F2: 0F 11. 85, FFFFFF78
        mov     dword [rbp-98H], 0                      ; 03A3 _ C7. 85, FFFFFF68, 00000000
        jmp     ?_014                                   ; 03AD _ E9, 000001D9

?_011:  mov     rax, qword [rbp-88H]                    ; 03B2 _ 48: 8B. 85, FFFFFF78
        mov     qword [rbp-0C0H], rax                   ; 03B9 _ 48: 89. 85, FFFFFF40
        movsd   xmm0, qword [rbp-0C0H]                  ; 03C0 _ F2: 0F 10. 85, FFFFFF40
        call    cos                                     ; 03C8 _ E8, 00000000(PLT r)
        movq    rax, xmm0                               ; 03CD _ 66 48: 0F 7E. C0
        mov     qword [rbp-58H], rax                    ; 03D2 _ 48: 89. 45, A8
        mov     rax, qword [rbp-88H]                    ; 03D6 _ 48: 8B. 85, FFFFFF78
        mov     qword [rbp-0C0H], rax                   ; 03DD _ 48: 89. 85, FFFFFF40
        movsd   xmm0, qword [rbp-0C0H]                  ; 03E4 _ F2: 0F 10. 85, FFFFFF40
        call    sin                                     ; 03EC _ E8, 00000000(PLT r)
        movq    rax, xmm0                               ; 03F1 _ 66 48: 0F 7E. C0
        mov     qword [rbp-50H], rax                    ; 03F6 _ 48: 89. 45, B0
        movsd   xmm0, qword [rbp-88H]                   ; 03FA _ F2: 0F 10. 85, FFFFFF78
        addsd   xmm0, qword [rbp-60H]                   ; 0402 _ F2: 0F 58. 45, A0
        movsd   qword [rbp-88H], xmm0                   ; 0407 _ F2: 0F 11. 85, FFFFFF78
        mov     eax, dword [rbp-98H]                    ; 040F _ 8B. 85, FFFFFF68
        mov     dword [rbp-9CH], eax                    ; 0415 _ 89. 85, FFFFFF64
        jmp     ?_013                                   ; 041B _ E9, 00000152

?_012:  mov     edx, dword [rbp-9CH]                    ; 0420 _ 8B. 95, FFFFFF64
        mov     eax, dword [rbp-0A0H]                   ; 0426 _ 8B. 85, FFFFFF60
        add     edx, eax                                ; 042C _ 01. C2
        mov     rax, qword [rbp-78H]                    ; 042E _ 48: 8B. 45, 88
        movsxd  rdx, edx                                ; 0432 _ 48: 63. D2
        movsd   xmm0, qword [rax+rdx*8]                 ; 0435 _ F2: 0F 10. 04 D0
        mulsd   xmm0, [rbp-58H]                   ; 043A _ F2: 0F 59. 45, A8
        mov     edx, dword [rbp-9CH]                    ; 043F _ 8B. 95, FFFFFF64
        mov     eax, dword [rbp-0A0H]                   ; 0445 _ 8B. 85, FFFFFF60
        add     edx, eax                                ; 044B _ 01. C2
        mov     rax, qword [rbp-68H]                    ; 044D _ 48: 8B. 45, 98
        movsxd  rdx, edx                                ; 0451 _ 48: 63. D2
        movsd   xmm1, qword [rax+rdx*8]                 ; 0454 _ F2: 0F 10. 0C D0
        mulsd   xmm1, [rbp-50H]                   ; 0459 _ F2: 0F 59. 4D, B0
        subsd   xmm0, xmm1                              ; 045E _ F2: 0F 5C. C1
        movsd   qword [rbp-48H], xmm0                   ; 0462 _ F2: 0F 11. 45, B8
        mov     edx, dword [rbp-9CH]                    ; 0467 _ 8B. 95, FFFFFF64
        mov     eax, dword [rbp-0A0H]                   ; 046D _ 8B. 85, FFFFFF60
        add     edx, eax                                ; 0473 _ 01. C2
        mov     rax, qword [rbp-78H]                    ; 0475 _ 48: 8B. 45, 88
        movsxd  rdx, edx                                ; 0479 _ 48: 63. D2
        movsd   xmm0, qword [rax+rdx*8]                 ; 047C _ F2: 0F 10. 04 D0
        movapd  xmm1, xmm0                              ; 0481 _ 66: 0F 28. C8
        mulsd   xmm1, [rbp-50H]                   ; 0485 _ F2: 0F 59. 4D, B0
        mov     edx, dword [rbp-9CH]                    ; 048A _ 8B. 95, FFFFFF64
        mov     eax, dword [rbp-0A0H]                   ; 0490 _ 8B. 85, FFFFFF60
        add     edx, eax                                ; 0496 _ 01. C2
        mov     rax, qword [rbp-68H]                    ; 0498 _ 48: 8B. 45, 98
        movsxd  rdx, edx                                ; 049C _ 48: 63. D2
        movsd   xmm0, qword [rax+rdx*8]                 ; 049F _ F2: 0F 10. 04 D0
        mulsd   xmm0, [rbp-58H]                   ; 04A4 _ F2: 0F 59. 45, A8
        addsd   xmm0, xmm1                              ; 04A9 _ F2: 0F 58. C1
        movsd   qword [rbp-40H], xmm0                   ; 04AD _ F2: 0F 11. 45, C0
        mov     rax, qword [rbp-78H]                    ; 04B2 _ 48: 8B. 45, 88
        mov     edx, dword [rbp-9CH]                    ; 04B6 _ 8B. 95, FFFFFF64
        movsxd  rdx, edx                                ; 04BC _ 48: 63. D2
        movsd   xmm0, qword [rax+rdx*8]                 ; 04BF _ F2: 0F 10. 04 D0
        mov     edx, dword [rbp-9CH]                    ; 04C4 _ 8B. 95, FFFFFF64
        mov     eax, dword [rbp-0A0H]                   ; 04CA _ 8B. 85, FFFFFF60
        add     edx, eax                                ; 04D0 _ 01. C2
        subsd   xmm0, [rbp-48H]                   ; 04D2 _ F2: 0F 5C. 45, B8
        mov     rax, qword [rbp-78H]                    ; 04D7 _ 48: 8B. 45, 88
        movsxd  rdx, edx                                ; 04DB _ 48: 63. D2
        movsd   qword [rax+rdx*8], xmm0                 ; 04DE _ F2: 0F 11. 04 D0
        mov     rax, qword [rbp-68H]                    ; 04E3 _ 48: 8B. 45, 98
        mov     edx, dword [rbp-9CH]                    ; 04E7 _ 8B. 95, FFFFFF64
        movsxd  rdx, edx                                ; 04ED _ 48: 63. D2
        movsd   xmm0, qword [rax+rdx*8]                 ; 04F0 _ F2: 0F 10. 04 D0
        mov     edx, dword [rbp-9CH]                    ; 04F5 _ 8B. 95, FFFFFF64
        mov     eax, dword [rbp-0A0H]                   ; 04FB _ 8B. 85, FFFFFF60
        add     edx, eax                                ; 0501 _ 01. C2
        subsd   xmm0, [rbp-40H]                   ; 0503 _ F2: 0F 5C. 45, C0
        mov     rax, qword [rbp-68H]                    ; 0508 _ 48: 8B. 45, 98
        movsxd  rdx, edx                                ; 050C _ 48: 63. D2
        movsd   qword [rax+rdx*8], xmm0                 ; 050F _ F2: 0F 11. 04 D0
        mov     rax, qword [rbp-78H]                    ; 0514 _ 48: 8B. 45, 88
        mov     edx, dword [rbp-9CH]                    ; 0518 _ 8B. 95, FFFFFF64
        movsxd  rdx, edx                                ; 051E _ 48: 63. D2
        movsd   xmm0, qword [rax+rdx*8]                 ; 0521 _ F2: 0F 10. 04 D0
        addsd   xmm0, qword [rbp-48H]                   ; 0526 _ F2: 0F 58. 45, B8
        mov     rax, qword [rbp-78H]                    ; 052B _ 48: 8B. 45, 88
        mov     edx, dword [rbp-9CH]                    ; 052F _ 8B. 95, FFFFFF64
        movsxd  rdx, edx                                ; 0535 _ 48: 63. D2
        movsd   qword [rax+rdx*8], xmm0                 ; 0538 _ F2: 0F 11. 04 D0
        mov     rax, qword [rbp-68H]                    ; 053D _ 48: 8B. 45, 98
        mov     edx, dword [rbp-9CH]                    ; 0541 _ 8B. 95, FFFFFF64
        movsxd  rdx, edx                                ; 0547 _ 48: 63. D2
        movsd   xmm0, qword [rax+rdx*8]                 ; 054A _ F2: 0F 10. 04 D0
        addsd   xmm0, qword [rbp-40H]                   ; 054F _ F2: 0F 58. 45, C0
        mov     rax, qword [rbp-68H]                    ; 0554 _ 48: 8B. 45, 98
        mov     edx, dword [rbp-9CH]                    ; 0558 _ 8B. 95, FFFFFF64
        movsxd  rdx, edx                                ; 055E _ 48: 63. D2
        movsd   qword [rax+rdx*8], xmm0                 ; 0561 _ F2: 0F 11. 04 D0
        mov     eax, dword [rbp-90H]                    ; 0566 _ 8B. 85, FFFFFF70
        add     dword [rbp-9CH], eax                    ; 056C _ 01. 85, FFFFFF64
?_013:  mov     eax, dword [rbp-0A4H]                   ; 0572 _ 8B. 85, FFFFFF5C
        cmp     dword [rbp-9CH], eax                    ; 0578 _ 39. 85, FFFFFF64
        jl      ?_012                                   ; 057E _ 0F 8C, FFFFFE9C
        add     dword [rbp-98H], 1                      ; 0584 _ 83. 85, FFFFFF68, 01
?_014:  mov     eax, dword [rbp-98H]                    ; 058B _ 8B. 85, FFFFFF68
        cmp     eax, dword [rbp-0A0H]                   ; 0591 _ 3B. 85, FFFFFF60
        jl      ?_011                                   ; 0597 _ 0F 8C, FFFFFE15
        add     dword [rbp-94H], 1                      ; 059D _ 83. 85, FFFFFF6C, 01
?_015:  mov     eax, dword [rbp-94H]                    ; 05A4 _ 8B. 85, FFFFFF6C
        cmp     eax, dword [rbp-8CH]                    ; 05AA _ 3B. 85, FFFFFF74
        jl      ?_010                                   ; 05B0 _ 0F 8C, FFFFFDB2
        lea     rdi, [rel ?_024]                        ; 05B6 _ 48: 8D. 3D, 00000000(rel)
        mov     eax, 0                                  ; 05BD _ B8, 00000000
        call    printf                                  ; 05C2 _ E8, 00000000(PLT r)
        mov     eax, dword [rbp-0A4H]                   ; 05C7 _ 8B. 85, FFFFFF5C
        mov     esi, eax                                ; 05CD _ 89. C6
        lea     rdi, [rel ?_020]                        ; 05CF _ 48: 8D. 3D, 00000000(rel)
        mov     eax, 0                                  ; 05D6 _ B8, 00000000
        call    printf                                  ; 05DB _ E8, 00000000(PLT r)
        lea     rdi, [rel ?_025]                        ; 05E0 _ 48: 8D. 3D, 00000000(rel)
        call    puts                                    ; 05E7 _ E8, 00000000(PLT r)
        lea     rdi, [rel ?_026]                        ; 05EC _ 48: 8D. 3D, 00000000(rel)
        mov     eax, 0                                  ; 05F3 _ B8, 00000000
        call    printf                                  ; 05F8 _ E8, 00000000(PLT r)
        mov     dword [rbp-94H], 0                      ; 05FD _ C7. 85, FFFFFF6C, 00000000
        jmp     ?_017                                   ; 0607 _ E9, 00000086

?_016:  mov     rax, qword [rbp-78H]                    ; 060C _ 48: 8B. 45, 88
        mov     edx, dword [rbp-94H]                    ; 0610 _ 8B. 95, FFFFFF6C
        movsxd  rdx, edx                                ; 0616 _ 48: 63. D2
        mov     rax, qword [rax+rdx*8]                  ; 0619 _ 48: 8B. 04 D0
        mov     qword [rbp-0C0H], rax                   ; 061D _ 48: 89. 85, FFFFFF40
        movsd   xmm0, qword [rbp-0C0H]                  ; 0624 _ F2: 0F 10. 85, FFFFFF40
        lea     rdi, [rel ?_027]                        ; 062C _ 48: 8D. 3D, 00000000(rel)
        mov     eax, 1                                  ; 0633 _ B8, 00000001
        call    printf                                  ; 0638 _ E8, 00000000(PLT r)
        lea     rdi, [rel ?_028]                        ; 063D _ 48: 8D. 3D, 00000000(rel)
        mov     eax, 0                                  ; 0644 _ B8, 00000000
        call    printf                                  ; 0649 _ E8, 00000000(PLT r)
        mov     rax, qword [rbp-68H]                    ; 064E _ 48: 8B. 45, 98
        mov     edx, dword [rbp-94H]                    ; 0652 _ 8B. 95, FFFFFF6C
        movsxd  rdx, edx                                ; 0658 _ 48: 63. D2
        mov     rax, qword [rax+rdx*8]                  ; 065B _ 48: 8B. 04 D0
        mov     qword [rbp-0C0H], rax                   ; 065F _ 48: 89. 85, FFFFFF40
        movsd   xmm0, qword [rbp-0C0H]                  ; 0666 _ F2: 0F 10. 85, FFFFFF40
        lea     rdi, [rel ?_027]                        ; 066E _ 48: 8D. 3D, 00000000(rel)
        mov     eax, 1                                  ; 0675 _ B8, 00000001
        call    printf                                  ; 067A _ E8, 00000000(PLT r)
        lea     rdi, [rel ?_029]                        ; 067F _ 48: 8D. 3D, 00000000(rel)
        call    puts                                    ; 0686 _ E8, 00000000(PLT r)
        add     dword [rbp-94H], 1                      ; 068B _ 83. 85, FFFFFF6C, 01
?_017:  mov     eax, dword [rbp-0A4H]                   ; 0692 _ 8B. 85, FFFFFF5C
        cmp     dword [rbp-94H], eax                    ; 0698 _ 39. 85, FFFFFF6C
        jl      ?_016                                   ; 069E _ 0F 8C, FFFFFF68
        mov     eax, 0                                  ; 06A4 _ B8, 00000000
        mov     rsp, rbx                                ; 06A9 _ 48: 89. DC
        mov     rcx, qword [rbp-38H]                    ; 06AC _ 48: 8B. 4D, C8
; Note: Address is not rip-relative
; Note: Absolute memory address without relocation
        xor     rcx, qword [fs:abs 28H]                 ; 06B0 _ 64 48: 33. 0C 25, 00000028
        jz      ?_018                                   ; 06B9 _ 74, 05
        call    __stack_chk_fail                        ; 06BB _ E8, 00000000(PLT r)
?_018:  lea     rsp, [rbp-28H]                          ; 06C0 _ 48: 8D. 65, D8
        pop     rbx                                     ; 06C4 _ 5B
        pop     r12                                     ; 06C5 _ 41: 5C
        pop     r13                                     ; 06C7 _ 41: 5D
        pop     r14                                     ; 06C9 _ 41: 5E
        pop     r15                                     ; 06CB _ 41: 5F
        pop     rbp                                     ; 06CD _ 5D
        ret                                             ; 06CE _ C3
; main End of function


SECTION .data   ;align=1 noexecute                       ; section number 2, data


SECTION .bss    ;align=1 noexecute                       ; section number 3, bss


SECTION .rodata ;align=8 noexecute                       ; section number 4, const

?_019:                                                  ; byte
        db 46H, 46H, 54H, 3AH, 20H, 49H, 6EH, 64H       ; 0000 _ FFT: Ind
        db 69H, 71H, 75H, 65H, 20H, 6CH, 61H, 20H       ; 0008 _ ique la 
        db 63H, 61H, 6EH, 74H, 69H, 64H, 61H, 64H       ; 0010 _ cantidad
        db 20H, 64H, 65H, 20H, 70H, 75H, 6EH, 74H       ; 0018 _  de punt
        db 6FH, 73H, 20H, 00H                           ; 0020 _ os .

?_020:                                                  ; byte
        db 25H, 64H, 00H, 00H                           ; 0024 _ %d..

?_021:                                                  ; byte
        db 46H, 46H, 54H, 3AH, 49H, 6EH, 64H, 69H       ; 0028 _ FFT:Indi
        db 71H, 75H, 65H, 20H, 6CH, 61H, 20H, 70H       ; 0030 _ que la p
        db 61H, 72H, 74H, 65H, 20H, 72H, 65H, 61H       ; 0038 _ arte rea
        db 6CH, 20H, 64H, 65H, 20H, 6CH, 6FH, 73H       ; 0040 _ l de los
        db 20H, 70H, 75H, 6EH, 74H, 6FH, 73H, 0AH       ; 0048 _  puntos.
        db 20H, 28H, 75H, 6EH, 6FH, 20H, 61H, 20H       ; 0050 _  (uno a 
        db 6CH, 61H, 20H, 76H, 65H, 7AH, 2CH, 20H       ; 0058 _ la vez, 
        db 70H, 72H, 65H, 73H, 69H, 6FH, 6EH, 65H       ; 0060 _ presione
        db 20H, 65H, 6EH, 74H, 65H, 72H, 29H, 00H       ; 0068 _  enter).

?_022:                                                  ; byte
        db 25H, 6CH, 66H, 00H, 00H, 00H, 00H, 00H       ; 0070 _ %lf.....

?_023:                                                  ; byte
        db 46H, 46H, 54H, 3AH, 49H, 6EH, 64H, 69H       ; 0078 _ FFT:Indi
        db 71H, 75H, 65H, 20H, 6CH, 61H, 20H, 70H       ; 0080 _ que la p
        db 61H, 72H, 74H, 65H, 20H, 69H, 6DH, 61H       ; 0088 _ arte ima
        db 67H, 69H, 6EH, 61H, 72H, 69H, 61H, 20H       ; 0090 _ ginaria 
        db 64H, 65H, 20H, 6CH, 6FH, 73H, 20H, 70H       ; 0098 _ de los p
        db 75H, 6EH, 74H, 6FH, 73H, 0AH, 20H, 28H       ; 00A0 _ untos. (
        db 75H, 6EH, 6FH, 20H, 61H, 20H, 6CH, 61H       ; 00A8 _ uno a la
        db 20H, 76H, 65H, 7AH, 2CH, 20H, 70H, 72H       ; 00B0 _  vez, pr
        db 65H, 73H, 69H, 6FH, 6EH, 65H, 20H, 65H       ; 00B8 _ esione e
        db 6EH, 74H, 65H, 72H, 29H, 00H                 ; 00C0 _ nter).

?_024:                                                  ; byte
        db 46H, 46H, 54H, 20H, 70H, 61H, 72H, 61H       ; 00C6 _ FFT para
        db 3AH, 20H, 00H                                ; 00CE _ : .

?_025:                                                  ; byte
        db 20H, 70H, 75H, 6EH, 74H, 6FH, 73H, 00H       ; 00D1 _  puntos.

?_026:                                                  ; byte
        db 58H, 5BH, 6BH, 5DH, 3DH, 7BH, 00H            ; 00D9 _ X[k]={.

?_027:                                                  ; byte
        db 25H, 66H, 00H                                ; 00E0 _ %f.

?_028:                                                  ; byte
        db 20H, 2BH, 20H, 00H                           ; 00E3 _  + .

?_029:                                                  ; byte
        db 6AH, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00E7 _ j.......
        db 00H                                          ; 00EF _ .

?_030:  dq 0C01921FB54442D18H                           ; 00F0 _ -6.283185307179586 


