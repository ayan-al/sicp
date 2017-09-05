#lang scheme

(define (a-pls-abs-b a b)
  ((if (> b 0) + -) a b))

;; The above procedure gives the sum of a and the absolute value of b.
;; The if statement uses a predicate to switch between operators. 