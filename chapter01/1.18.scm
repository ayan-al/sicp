#lang scheme

(define (double x) (+ x x))
(define (halve x) (/ x 2))

(define (mult-iter a b c)
  (if (= b 1)
      c
      (mult-iter a (halve b) (+ c (double a)) )))
(define (* a b)
  (cond ((or (= a 0) (= b 0)) 0)
        ((even? b) (mult-iter a b 0.0))
        (else (mult-iter a (- b 1) a))))

(* 5 4)
(* 6 5)
(* 25 5)
