#! /usr/local/bin/guile -s
!#

(define (fact n)
  (if (zero? n) 1
    (* n (fact (- n 1)))))

(define (factorial n)
  (define (iter prod cont)
    (if (> cont n)
      prod
      (iter (* cont prod)
            (+ cont 1))))
  (iter 1 1)
)




(display (fact (string->number (cadr (command-line)))))
(newline)
