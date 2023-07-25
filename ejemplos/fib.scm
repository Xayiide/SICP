#! /usr/local/bin/guile -s
!#

(define (fib n)
  (cond ((= n 0) 0)
        ((= n 1) 1)
        (else (+ (fib (- n 1))
                 (fib (- n 2))))))


(display (fib 10)) (newline)

; Calcular fibonacci de esta forma es muy
; ineficiente porque se repiten un montón
; de cálculos. Por ejemplo, para calcular
; fib(5), fib(1) se calcula 5 veces y
; fib(0) otras 3.

; Para hacerlo iterativo:
(define (fib n)
  (fib-iter 1 0 n))

(define (fib-iter a b count)
  (if (= count 0)
    b
    (fib-iter (+ a b) a (- count 1))))
