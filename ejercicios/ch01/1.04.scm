#! /usr/local/bin/guile -s
!#

(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b)
)

(display (a-plus-abs-b 10 20))
(newline)
(display (a-plus-abs-b 3 4))
(newline)
(display (a-plus-abs-b 15 -26))
(newline)
