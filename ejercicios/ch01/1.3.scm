#! /usr/local/bin/guile -s
!#

; Procedimiento que toma 3 números y devuelve
; la suma de los cuadrados de los dos mayores

(define (cuadrado x)
  (* x x))

(define (suma-cuadrados x y)
  (+ (cuadrado x) (cuadrado y)))

(define (menor a b c)
  (cond ((and (<= a b) (<= a c)) a)
        ((and (<= b a) (<= b c)) b)
        ((and (<= c a) (<= c b)) c)
        (else (error "No se puede resolver" a b c))
  )
)

(define (procedimiento x y z)
  (cond ((= (menor x y z) x) (+ (cuadrado y) (cuadrado z)))
        ((= (menor x y z) y) (+ (cuadrado x) (cuadrado z)))
        ((= (menor x y z) z) (+ (cuadrado x) (cuadrado y)))
  )
)


(display (procedimiento 2 3 4))
(newline)
(display (procedimiento 3 4 5))
(newline)
(display (procedimiento 4 5 6))
(newline)
