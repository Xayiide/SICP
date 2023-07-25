#! /usr/local/bin/guile -s
!#

; Para probar si el intérprete utiliza
; evaluación de orden normal o evaluación de orden aplicativo

; Si tiene evaluación aplicativa quedará en un bucle infinito
; intentando evaluar (p) constantemente.

; Si tiene evaluación normal, el intérprete expandirá todo y
; luego reducirá. Esto es, el intérprete no evaluará los
; operandos hasta que sus valores se necesiten realmente:
; (test 0 (p)) evaluará a:
; (if (= 0 0) 0 (p))
; Como (= 0 0) es falso, (p) no se evaluará nunca

(define (p) (p))

(define (test x y)
  (if (= x 0) 0 y)
)


(test 0 (p))
