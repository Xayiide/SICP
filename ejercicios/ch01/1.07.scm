#! /usr/local/bin/guile -s
!#

; Una explicación detallada de por qué hay errores con el
; cálculo de la raíz cuadrada puede encontrarse en
; https://sicp-solutions.net/post/sicp-solution-exercise-1-7/

; Con números grandes provoca errores porque por la forma en la que
; se representan los flotantes, llega un punto en el que no tienen la
; precisión necesaria para dar saltos menores que el 0.001 marcado.
; Es decir, que con sólo sumar un bit, el número crece más de 0.001.
; Por ejemplo, en la iteración nº 28 de la raíz de 12345678901234,
; el valor de (- (square guess) x) es 0.001953125.
; Esto significa que si tenemos suerte, el redondeo será a 0.0 y la
; evaluación parará, pero si no la tenemos el redondeo dará 0.001 y
; good-enough? nunca será True.
; Aumentar la precisión a 0.0000001 dará problemas con valores más
; pequeños de x

; Con números pequeños el problema es distinto. Si el 0.001 está
; hardcodeado, no podremos calcular con precisión raíces si x es
; menor que 0.001. Deja de iterar rápido porque la comprobación de
; la precisión resulta dar True demasiado pronto.
; Es como medir el tamaño de una moneda con un error de másmenos un
; metro. No es útil.


(define PRECISION 0.00000000001)


(define (sqrt-iter guess x)
  (if (good-enough? guess (improve guess x))
    guess
    (sqrt-iter (improve guess x) x)
  )
)

(define (improve guess x)
  (average guess (/ x guess))
)

(define (average x y)
  (/ (+ x y) 2)
)

(define (square x) (* x x))

; (guess - previous)/guess < 0.00000000001 ?
(define (good-enough? previous-guess guess)
  (< (abs (/ (- guess previous-guess) guess)) PRECISION)
)

(define (sqrt x)
  (sqrt-iter 1.0 x)
)

(display (sqrt 123456789012345))
(newline)
(display (sqrt 0.00000000123456))
(newline)
