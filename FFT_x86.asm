; Disassembly of file: fftlibro.o
; Wed Oct 16 18:14:27 2019
; Mode: 64 bits
; Syntax: YASM/NASM
; Instruction set: SSE2, x64

default rel

global _start: 

extern __stack_chk_fail                                 ; near
extern printf                                           ; near
extern sin                                              ; near
extern cos                                              ; near
extern _GLOBAL_OFFSET_TABLE_                            ; byte


SECTION .text  ;align=1 execute                           section number 1, code

_start:   ; Function begin
        push    rbp                                     ; 0000 _ 55
        mov     rbp, rsp                                ; 0001 _ 48: 89. E5
        sub     rsp, 240                                ; 0004 _ 48: 81. EC, 000000F0
; Note: Address is not rip-relative
; Note: Absolute memory address without relocation
        mov     rax, qword [fs:abs 28H]                 ; 000B _ 64 48: 8B. 04 25, 00000028
        mov     qword [rbp-8H], rax                     ; 0014 _ 48: 89. 45, F8
        xor     eax, eax                                ; 0018 _ 31. C0
        mov     dword [rbp-0C8H], 8                     ; 001A _ C7. 85, FFFFFF38, 00000008
        mov     dword [rbp-0C4H], 3                     ; 0024 _ C7. 85, FFFFFF3C, 00000003
        movsd   xmm0, qword [rel ?_015]                 ; 002E _ F2: 0F 10. 05, 00000000(rel)
        movsd   qword [rbp-90H], xmm0                   ; 0036 _ F2: 0F 11. 85, FFFFFF70
        movsd   xmm0, qword [rel ?_016]                 ; 003E _ F2: 0F 10. 05, 00000000(rel)
        movsd   qword [rbp-88H], xmm0                   ; 0046 _ F2: 0F 11. 85, FFFFFF78
        movsd   xmm0, qword [rel ?_017]                 ; 004E _ F2: 0F 10. 05, 00000000(rel)
        movsd   qword [rbp-80H], xmm0                   ; 0056 _ F2: 0F 11. 45, 80
        movsd   xmm0, qword [rel ?_018]                 ; 005B _ F2: 0F 10. 05, 00000000(rel)
        movsd   qword [rbp-78H], xmm0                   ; 0063 _ F2: 0F 11. 45, 88
        movsd   xmm0, qword [rel ?_018]                 ; 0068 _ F2: 0F 10. 05, 00000000(rel)
        movsd   qword [rbp-70H], xmm0                   ; 0070 _ F2: 0F 11. 45, 90
        movsd   xmm0, qword [rel ?_017]                 ; 0075 _ F2: 0F 10. 05, 00000000(rel)
        movsd   qword [rbp-68H], xmm0                   ; 007D _ F2: 0F 11. 45, 98
        movsd   xmm0, qword [rel ?_016]                 ; 0082 _ F2: 0F 10. 05, 00000000(rel)
        movsd   qword [rbp-60H], xmm0                   ; 008A _ F2: 0F 11. 45, A0
        movsd   xmm0, qword [rel ?_015]                 ; 008F _ F2: 0F 10. 05, 00000000(rel)
        movsd   qword [rbp-58H], xmm0                   ; 0097 _ F2: 0F 11. 45, A8
        mov     qword [rbp-50H], 0                      ; 009C _ 48: C7. 45, B0, 00000000
        mov     qword [rbp-48H], 0                      ; 00A4 _ 48: C7. 45, B8, 00000000
        mov     qword [rbp-40H], 0                      ; 00AC _ 48: C7. 45, C0, 00000000
        mov     qword [rbp-38H], 0                      ; 00B4 _ 48: C7. 45, C8, 00000000
        mov     qword [rbp-30H], 0                      ; 00BC _ 48: C7. 45, D0, 00000000
        mov     qword [rbp-28H], 0                      ; 00C4 _ 48: C7. 45, D8, 00000000
        mov     qword [rbp-20H], 0                      ; 00CC _ 48: C7. 45, E0, 00000000
        mov     qword [rbp-18H], 0                      ; 00D4 _ 48: C7. 45, E8, 00000000
        mov     dword [rbp-0D8H], 0                     ; 00DC _ C7. 85, FFFFFF28, 00000000
        mov     eax, dword [rbp-0C8H]                   ; 00E6 _ 8B. 85, FFFFFF38
        mov     edx, eax                                ; 00EC _ 89. C2
        shr     edx, 31                                 ; 00EE _ C1. EA, 1F
        add     eax, edx                                ; 00F1 _ 01. D0
        sar     eax, 1                                  ; 00F3 _ D1. F8
        mov     dword [rbp-0CCH], eax                   ; 00F5 _ 89. 85, FFFFFF34
        mov     dword [rbp-0DCH], 1                     ; 00FB _ C7. 85, FFFFFF24, 00000001
        jmp     ?_005                                   ; 0105 _ E9, 000000FE

?_001:  mov     eax, dword [rbp-0CCH]                   ; 010A _ 8B. 85, FFFFFF34
        mov     dword [rbp-0D0H], eax                   ; 0110 _ 89. 85, FFFFFF30
        jmp     ?_003                                   ; 0116 _ EB, 21

?_002:  mov     eax, dword [rbp-0D0H]                   ; 0118 _ 8B. 85, FFFFFF30
        sub     dword [rbp-0D8H], eax                   ; 011E _ 29. 85, FFFFFF28
        mov     eax, dword [rbp-0D0H]                   ; 0124 _ 8B. 85, FFFFFF30
        mov     edx, eax                                ; 012A _ 89. C2
        shr     edx, 31                                 ; 012C _ C1. EA, 1F
        add     eax, edx                                ; 012F _ 01. D0
        sar     eax, 1                                  ; 0131 _ D1. F8
        mov     dword [rbp-0D0H], eax                   ; 0133 _ 89. 85, FFFFFF30
?_003:  mov     eax, dword [rbp-0D8H]                   ; 0139 _ 8B. 85, FFFFFF28
        cmp     eax, dword [rbp-0D0H]                   ; 013F _ 3B. 85, FFFFFF30
        jge     ?_002                                   ; 0145 _ 7D, D1
        mov     eax, dword [rbp-0D0H]                   ; 0147 _ 8B. 85, FFFFFF30
        add     dword [rbp-0D8H], eax                   ; 014D _ 01. 85, FFFFFF28
        mov     eax, dword [rbp-0DCH]                   ; 0153 _ 8B. 85, FFFFFF24
        cmp     eax, dword [rbp-0D8H]                   ; 0159 _ 3B. 85, FFFFFF28
        jge     ?_004                                   ; 015F _ 0F 8D, 0000009C
        mov     eax, dword [rbp-0DCH]                   ; 0165 _ 8B. 85, FFFFFF24
        cdqe                                            ; 016B _ 48: 98
        movsd   xmm0, qword [rbp+rax*8-90H]             ; 016D _ F2: 0F 10. 84 C5, FFFFFF70
        movsd   qword [rbp-0A0H], xmm0                  ; 0176 _ F2: 0F 11. 85, FFFFFF60
        mov     eax, dword [rbp-0D8H]                   ; 017E _ 8B. 85, FFFFFF28
        cdqe                                            ; 0184 _ 48: 98
        movsd   xmm0, qword [rbp+rax*8-90H]             ; 0186 _ F2: 0F 10. 84 C5, FFFFFF70
        mov     eax, dword [rbp-0DCH]                   ; 018F _ 8B. 85, FFFFFF24
        cdqe                                            ; 0195 _ 48: 98
        movsd   qword [rbp+rax*8-90H], xmm0             ; 0197 _ F2: 0F 11. 84 C5, FFFFFF70
        mov     eax, dword [rbp-0D8H]                   ; 01A0 _ 8B. 85, FFFFFF28
        cdqe                                            ; 01A6 _ 48: 98
        movsd   xmm0, qword [rbp-0A0H]                  ; 01A8 _ F2: 0F 10. 85, FFFFFF60
        movsd   qword [rbp+rax*8-90H], xmm0             ; 01B0 _ F2: 0F 11. 84 C5, FFFFFF70
        mov     eax, dword [rbp-0DCH]                   ; 01B9 _ 8B. 85, FFFFFF24
        cdqe                                            ; 01BF _ 48: 98
        movsd   xmm0, qword [rbp+rax*8-50H]             ; 01C1 _ F2: 0F 10. 44 C5, B0
        movsd   qword [rbp-0A0H], xmm0                  ; 01C7 _ F2: 0F 11. 85, FFFFFF60
        mov     eax, dword [rbp-0D8H]                   ; 01CF _ 8B. 85, FFFFFF28
        cdqe                                            ; 01D5 _ 48: 98
        movsd   xmm0, qword [rbp+rax*8-50H]             ; 01D7 _ F2: 0F 10. 44 C5, B0
        mov     eax, dword [rbp-0DCH]                   ; 01DD _ 8B. 85, FFFFFF24
        cdqe                                            ; 01E3 _ 48: 98
        movsd   qword [rbp+rax*8-50H], xmm0             ; 01E5 _ F2: 0F 11. 44 C5, B0
        mov     eax, dword [rbp-0D8H]                   ; 01EB _ 8B. 85, FFFFFF28
        cdqe                                            ; 01F1 _ 48: 98
        movsd   xmm0, qword [rbp-0A0H]                  ; 01F3 _ F2: 0F 10. 85, FFFFFF60
        movsd   qword [rbp+rax*8-50H], xmm0             ; 01FB _ F2: 0F 11. 44 C5, B0
?_004:  add     dword [rbp-0DCH], 1                     ; 0201 _ 83. 85, FFFFFF24, 01
?_005:  mov     eax, dword [rbp-0C8H]                   ; 0208 _ 8B. 85, FFFFFF38
        sub     eax, 1                                  ; 020E _ 83. E8, 01
        cmp     dword [rbp-0DCH], eax                   ; 0211 _ 39. 85, FFFFFF24
        jl      ?_001                                   ; 0217 _ 0F 8C, FFFFFEED
        mov     dword [rbp-0D0H], 0                     ; 021D _ C7. 85, FFFFFF30, 00000000
        mov     dword [rbp-0CCH], 1                     ; 0227 _ C7. 85, FFFFFF34, 00000001
        mov     dword [rbp-0DCH], 0                     ; 0231 _ C7. 85, FFFFFF24, 00000000
        jmp     ?_011                                   ; 023B _ E9, 00000248

?_006:  mov     eax, dword [rbp-0CCH]                   ; 0240 _ 8B. 85, FFFFFF34
        mov     dword [rbp-0D0H], eax                   ; 0246 _ 89. 85, FFFFFF30
        shl     dword [rbp-0CCH], 1                     ; 024C _ D1. A5, FFFFFF34
        cvtsi2sd xmm0, dword [rbp-0CCH]                 ; 0252 _ F2: 0F 2A. 85, FFFFFF34
        movsd   xmm1, qword [rel ?_019]                 ; 025A _ F2: 0F 10. 0D, 00000000(rel)
        divsd   xmm1, xmm0                              ; 0262 _ F2: 0F 5E. C8
        movapd  xmm0, xmm1                              ; 0266 _ 66: 0F 28. C1
        movsd   qword [rbp-0B8H], xmm0                  ; 026A _ F2: 0F 11. 85, FFFFFF48
        pxor    xmm0, xmm0                              ; 0272 _ 66: 0F EF. C0
        movsd   qword [rbp-0C0H], xmm0                  ; 0276 _ F2: 0F 11. 85, FFFFFF40
        mov     dword [rbp-0D8H], 0                     ; 027E _ C7. 85, FFFFFF28, 00000000
        jmp     ?_010                                   ; 0288 _ E9, 000001E2

?_007:  mov     rax, qword [rbp-0C0H]                   ; 028D _ 48: 8B. 85, FFFFFF40
        mov     qword [rbp-0E8H], rax                   ; 0294 _ 48: 89. 85, FFFFFF18
        movsd   xmm0, qword [rbp-0E8H]                  ; 029B _ F2: 0F 10. 85, FFFFFF18
        call    cos                                     ; 02A3 _ E8, 00000000(PLT r)
        movq    rax, xmm0                               ; 02A8 _ 66 48: 0F 7E. C0
        mov     qword [rbp-0B0H], rax                   ; 02AD _ 48: 89. 85, FFFFFF50
        mov     rax, qword [rbp-0C0H]                   ; 02B4 _ 48: 8B. 85, FFFFFF40
        mov     qword [rbp-0E8H], rax                   ; 02BB _ 48: 89. 85, FFFFFF18
        movsd   xmm0, qword [rbp-0E8H]                  ; 02C2 _ F2: 0F 10. 85, FFFFFF18
        call    sin                                     ; 02CA _ E8, 00000000(PLT r)
        movq    rax, xmm0                               ; 02CF _ 66 48: 0F 7E. C0
        mov     qword [rbp-0A8H], rax                   ; 02D4 _ 48: 89. 85, FFFFFF58
        movsd   xmm0, qword [rbp-0C0H]                  ; 02DB _ F2: 0F 10. 85, FFFFFF40
        addsd   xmm0, qword [rbp-0B8H]                  ; 02E3 _ F2: 0F 58. 85, FFFFFF48
        movsd   qword [rbp-0C0H], xmm0                  ; 02EB _ F2: 0F 11. 85, FFFFFF40
        mov     eax, dword [rbp-0D8H]                   ; 02F3 _ 8B. 85, FFFFFF28
        mov     dword [rbp-0D4H], eax                   ; 02F9 _ 89. 85, FFFFFF2C
        jmp     ?_009                                   ; 02FF _ E9, 00000152

?_008:  mov     edx, dword [rbp-0D4H]                   ; 0304 _ 8B. 95, FFFFFF2C
        mov     eax, dword [rbp-0D0H]                   ; 030A _ 8B. 85, FFFFFF30
        add     eax, edx                                ; 0310 _ 01. D0
        cdqe                                            ; 0312 _ 48: 98
        movsd   xmm0, qword [rbp+rax*8-90H]             ; 0314 _ F2: 0F 10. 84 C5, FFFFFF70
        mulsd   xmm0, [rbp-0B0H]                  ; 031D _ F2: 0F 59. 85, FFFFFF50
        mov     edx, dword [rbp-0D4H]                   ; 0325 _ 8B. 95, FFFFFF2C
        mov     eax, dword [rbp-0D0H]                   ; 032B _ 8B. 85, FFFFFF30
        add     eax, edx                                ; 0331 _ 01. D0
        cdqe                                            ; 0333 _ 48: 98
        movsd   xmm1, qword [rbp+rax*8-50H]             ; 0335 _ F2: 0F 10. 4C C5, B0
        mulsd   xmm1, [rbp-0A8H]                  ; 033B _ F2: 0F 59. 8D, FFFFFF58
        subsd   xmm0, xmm1                              ; 0343 _ F2: 0F 5C. C1
        movsd   qword [rbp-0A0H], xmm0                  ; 0347 _ F2: 0F 11. 85, FFFFFF60
        mov     edx, dword [rbp-0D4H]                   ; 034F _ 8B. 95, FFFFFF2C
        mov     eax, dword [rbp-0D0H]                   ; 0355 _ 8B. 85, FFFFFF30
        add     eax, edx                                ; 035B _ 01. D0
        cdqe                                            ; 035D _ 48: 98
        movsd   xmm0, qword [rbp+rax*8-90H]             ; 035F _ F2: 0F 10. 84 C5, FFFFFF70
        movapd  xmm1, xmm0                              ; 0368 _ 66: 0F 28. C8
        mulsd   xmm1, [rbp-0A8H]                  ; 036C _ F2: 0F 59. 8D, FFFFFF58
        mov     edx, dword [rbp-0D4H]                   ; 0374 _ 8B. 95, FFFFFF2C
        mov     eax, dword [rbp-0D0H]                   ; 037A _ 8B. 85, FFFFFF30
        add     eax, edx                                ; 0380 _ 01. D0
        cdqe                                            ; 0382 _ 48: 98
        movsd   xmm0, qword [rbp+rax*8-50H]             ; 0384 _ F2: 0F 10. 44 C5, B0
        mulsd   xmm0, [rbp-0B0H]                  ; 038A _ F2: 0F 59. 85, FFFFFF50
        addsd   xmm0, xmm1                              ; 0392 _ F2: 0F 58. C1
        movsd   qword [rbp-98H], xmm0                   ; 0396 _ F2: 0F 11. 85, FFFFFF68
        mov     eax, dword [rbp-0D4H]                   ; 039E _ 8B. 85, FFFFFF2C
        cdqe                                            ; 03A4 _ 48: 98
        movsd   xmm0, qword [rbp+rax*8-90H]             ; 03A6 _ F2: 0F 10. 84 C5, FFFFFF70
        mov     edx, dword [rbp-0D4H]                   ; 03AF _ 8B. 95, FFFFFF2C
        mov     eax, dword [rbp-0D0H]                   ; 03B5 _ 8B. 85, FFFFFF30
        add     eax, edx                                ; 03BB _ 01. D0
        subsd   xmm0, [rbp-0A0H]                  ; 03BD _ F2: 0F 5C. 85, FFFFFF60
        cdqe                                            ; 03C5 _ 48: 98
        movsd   qword [rbp+rax*8-90H], xmm0             ; 03C7 _ F2: 0F 11. 84 C5, FFFFFF70
        mov     eax, dword [rbp-0D4H]                   ; 03D0 _ 8B. 85, FFFFFF2C
        cdqe                                            ; 03D6 _ 48: 98
        movsd   xmm0, qword [rbp+rax*8-50H]             ; 03D8 _ F2: 0F 10. 44 C5, B0
        mov     edx, dword [rbp-0D4H]                   ; 03DE _ 8B. 95, FFFFFF2C
        mov     eax, dword [rbp-0D0H]                   ; 03E4 _ 8B. 85, FFFFFF30
        add     eax, edx                                ; 03EA _ 01. D0
        subsd   xmm0, [rbp-98H]                   ; 03EC _ F2: 0F 5C. 85, FFFFFF68
        cdqe                                            ; 03F4 _ 48: 98
        movsd   qword [rbp+rax*8-50H], xmm0             ; 03F6 _ F2: 0F 11. 44 C5, B0
        mov     eax, dword [rbp-0D4H]                   ; 03FC _ 8B. 85, FFFFFF2C
        cdqe                                            ; 0402 _ 48: 98
        movsd   xmm0, qword [rbp+rax*8-90H]             ; 0404 _ F2: 0F 10. 84 C5, FFFFFF70
        addsd   xmm0, qword [rbp-0A0H]                  ; 040D _ F2: 0F 58. 85, FFFFFF60
        mov     eax, dword [rbp-0D4H]                   ; 0415 _ 8B. 85, FFFFFF2C
        cdqe                                            ; 041B _ 48: 98
        movsd   qword [rbp+rax*8-90H], xmm0             ; 041D _ F2: 0F 11. 84 C5, FFFFFF70
        mov     eax, dword [rbp-0D4H]                   ; 0426 _ 8B. 85, FFFFFF2C
        cdqe                                            ; 042C _ 48: 98
        movsd   xmm0, qword [rbp+rax*8-50H]             ; 042E _ F2: 0F 10. 44 C5, B0
        addsd   xmm0, qword [rbp-98H]                   ; 0434 _ F2: 0F 58. 85, FFFFFF68
        mov     eax, dword [rbp-0D4H]                   ; 043C _ 8B. 85, FFFFFF2C
        cdqe                                            ; 0442 _ 48: 98
        movsd   qword [rbp+rax*8-50H], xmm0             ; 0444 _ F2: 0F 11. 44 C5, B0
        mov     eax, dword [rbp-0CCH]                   ; 044A _ 8B. 85, FFFFFF34
        add     dword [rbp-0D4H], eax                   ; 0450 _ 01. 85, FFFFFF2C
?_009:  mov     eax, dword [rbp-0D4H]                   ; 0456 _ 8B. 85, FFFFFF2C
        cmp     eax, dword [rbp-0C8H]                   ; 045C _ 3B. 85, FFFFFF38
        jl      ?_008                                   ; 0462 _ 0F 8C, FFFFFE9C
        add     dword [rbp-0D8H], 1                     ; 0468 _ 83. 85, FFFFFF28, 01
?_010:  mov     eax, dword [rbp-0D8H]                   ; 046F _ 8B. 85, FFFFFF28
        cmp     eax, dword [rbp-0D0H]                   ; 0475 _ 3B. 85, FFFFFF30
        jl      ?_007                                   ; 047B _ 0F 8C, FFFFFE0C
        add     dword [rbp-0DCH], 1                     ; 0481 _ 83. 85, FFFFFF24, 01
?_011:  mov     eax, dword [rbp-0DCH]                   ; 0488 _ 8B. 85, FFFFFF24
        cmp     eax, dword [rbp-0C4H]                   ; 048E _ 3B. 85, FFFFFF3C
        jl      ?_006                                   ; 0494 _ 0F 8C, FFFFFDA6
        mov     eax, dword [rbp-0C8H]                   ; 049A _ 8B. 85, FFFFFF38
        mov     esi, eax                                ; 04A0 _ 89. C6
        lea     rdi, [rel ?_013]                        ; 04A2 _ 48: 8D. 3D, 00000000(rel)
        mov     eax, 0                                  ; 04A9 _ B8, 00000000
        call    printf                                  ; 04AE _ E8, 00000000(PLT r)
        mov     rax, qword [rbp-90H]                    ; 04B3 _ 48: 8B. 85, FFFFFF70
        mov     qword [rbp-0E8H], rax                   ; 04BA _ 48: 89. 85, FFFFFF18
        movsd   xmm0, qword [rbp-0E8H]                  ; 04C1 _ F2: 0F 10. 85, FFFFFF18
        lea     rdi, [rel ?_014]                        ; 04C9 _ 48: 8D. 3D, 00000000(rel)
        mov     eax, 1                                  ; 04D0 _ B8, 00000001
        call    printf                                  ; 04D5 _ E8, 00000000(PLT r)
        mov     rax, qword [rbp-88H]                    ; 04DA _ 48: 8B. 85, FFFFFF78
        mov     qword [rbp-0E8H], rax                   ; 04E1 _ 48: 89. 85, FFFFFF18
        movsd   xmm0, qword [rbp-0E8H]                  ; 04E8 _ F2: 0F 10. 85, FFFFFF18
        lea     rdi, [rel ?_014]                        ; 04F0 _ 48: 8D. 3D, 00000000(rel)
        mov     eax, 1                                  ; 04F7 _ B8, 00000001
        call    printf                                  ; 04FC _ E8, 00000000(PLT r)
        mov     rax, qword [rbp-48H]                    ; 0501 _ 48: 8B. 45, B8
        mov     qword [rbp-0E8H], rax                   ; 0505 _ 48: 89. 85, FFFFFF18
        movsd   xmm0, qword [rbp-0E8H]                  ; 050C _ F2: 0F 10. 85, FFFFFF18
        lea     rdi, [rel ?_014]                        ; 0514 _ 48: 8D. 3D, 00000000(rel)
        mov     eax, 1                                  ; 051B _ B8, 00000001
        call    printf                                  ; 0520 _ E8, 00000000(PLT r)
        mov     rax, qword [rbp-80H]                    ; 0525 _ 48: 8B. 45, 80
        mov     qword [rbp-0E8H], rax                   ; 0529 _ 48: 89. 85, FFFFFF18
        movsd   xmm0, qword [rbp-0E8H]                  ; 0530 _ F2: 0F 10. 85, FFFFFF18
        lea     rdi, [rel ?_014]                        ; 0538 _ 48: 8D. 3D, 00000000(rel)
        mov     eax, 1                                  ; 053F _ B8, 00000001
        call    printf                                  ; 0544 _ E8, 00000000(PLT r)
        mov     rax, qword [rbp-78H]                    ; 0549 _ 48: 8B. 45, 88
        mov     qword [rbp-0E8H], rax                   ; 054D _ 48: 89. 85, FFFFFF18
        movsd   xmm0, qword [rbp-0E8H]                  ; 0554 _ F2: 0F 10. 85, FFFFFF18
        lea     rdi, [rel ?_014]                        ; 055C _ 48: 8D. 3D, 00000000(rel)
        mov     eax, 1                                  ; 0563 _ B8, 00000001
        call    printf                                  ; 0568 _ E8, 00000000(PLT r)
        mov     eax, 0                                  ; 056D _ B8, 00000000
        mov     rcx, qword [rbp-8H]                     ; 0572 _ 48: 8B. 4D, F8
; Note: Address is not rip-relative
; Note: Absolute memory address without relocation
        xor     rcx, qword [fs:abs 28H]                 ; 0576 _ 64 48: 33. 0C 25, 00000028
        jz      ?_012                                   ; 057F _ 74, 05
        call    __stack_chk_fail                        ; 0581 _ E8, 00000000(PLT r)
?_012:  leave                                           ; 0586 _ C9
        ret                                             ; 0587 _ C3
; _start End of function


SECTION .data   ;align=1 noexecute                        section number 2, data


SECTION .bss    ;align=1 noexecute                        section number 3, bss


SECTION .rodata ;align=8 noexecute                        section number 4, const

?_013:                                                  ; byte
        db 25H, 64H, 00H                                ; 0000 _ %d.

?_014:                                                  ; byte
        db 25H, 66H, 00H, 00H, 00H                      ; 0003 _ %f...

?_015:  dq 3FF0000000000000H                            ; 0008 _ 1.0 

?_016:  dq 4000000000000000H                            ; 0010 _ 2.0 

?_017:  dq 4008000000000000H                            ; 0018 _ 3.0 

?_018:  dq 4010000000000000H                            ; 0020 _ 4.0 

?_019:  dq 0C01921FB54442D18H                           ; 0028 _ -6.283185307179586 

