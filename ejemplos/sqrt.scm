#! /usr/local/bin/guile -s
!#

(define (average x y)
  (/ (+ x y) 2))

(define (square x) (* x x))

(define (sqrt x)
  (define (good-enough? guess)
    (< (abs (- (square guess) x)) 0.001))
  (define (improve guess)
    (average guess (/ x guess)))
  (define (sqrt-iter guess)
    (if (good-enough? guess)
      guess
      (sqrt-iter (improve guess))))
  (sqrt-iter 1.0)
)

(display (sqrt 0))
(newline)
(display (sqrt 2))
(newline)
(display (sqrt 9))
(newline)
(display (sqrt 16))
(newline)
(display (sqrt 25))
(newline)
(display (sqrt 3.14))
(newline)
(display (sqrt 10))
(newline)
