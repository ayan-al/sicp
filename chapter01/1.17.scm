#lang scheme
(define (double x) (+ x x))
(define (halve x) (/ x 2))

(define (* a b)
  (cond ((or (= b 0) (= a 0)) 0)
        ((even? b) (double (* a (halve b))))
        (else (+ a (* a (- b 1))))))

(* 5 4)

;; This algorithm takes logarithmic number of steps. 