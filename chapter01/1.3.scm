#lang scheme

(define (square x) (* x x))

(define (sum-of-squares a b)
  (+ (square a) (square b)))

(define (sum-of-squares-of-largest-numbers a b c)
  (if (< a b)
      (sum-of-squares b
                      (if (< a c)
                          c
                          a))
      (sum-of-squares a
                      (if (< b c)
                          c
                          b))))

;;tests

(sum-of-squares-of-largest-numbers 3 4 5)
(sum-of-squares-of-largest-numbers 0 0 1)
(sum-of-squares-of-largest-numbers 3 1 3)
