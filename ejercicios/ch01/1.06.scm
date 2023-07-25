#! /usr/local/bin/guile -s
!#

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
    guess
    (sqrt-iter (improve guess x) x)
  )
)

(define (improve guess x)
  (average guess (/ x guess)) ; (guess + (x/guess))/2
)

(define (average x y)
  (/ (+ x y) 2)
)

(define (square x) (* x x))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001) ; (guess² - x) < 0.001
)

(define (sqrt x)
  (sqrt-iter 1.0 x)
)

(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)
  )
)

(define (sqrt-iter2 guess x)
  (new-if (good-enough? guess x)
          guess
          (sqrt-iter2 (improve guess x) x)
  )
)

(define (sqrt2 x)
  (sqrt-iter2 1.0 x)
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
(newline)
(newline)
(display (sqrt2 0))
(newline)
(display (sqrt2 2))
(newline)
(display (sqrt2 9))
(newline)
(display (sqrt2 16))
(newline)
