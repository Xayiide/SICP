#! /usr/local/bin/guile -s
!#

(define PRECISION 0.00000000001)

(define (cube x) (x * x * x))


(define (good-enough? previous-guess guess)
  (< (abs (/ (- guess previous-guess) guess)) PRECISION)
)

; Método de Newton para la raíz cúbica:
; (x/y² + 2y)/3
(define (improve guess x)
  (/ (+ (/ x (* guess guess)) (* 2 guess)) 3))

(define (cbrt-iter guess x)
  (if (good-enough? (improve guess x) guess)
    guess
    (cbrt-iter (improve guess x) x))
)

(define (cbrt x)
  (cbrt-iter 1.0 x)
)

(display (cbrt 123456789012345))
(newline)
(display (cbrt 0.00000000123456))
(newline)
