#lang scheme
(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x) x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

  (define (good-enough? guess x)
    (< (abs(- (square guess) x)) 0.001))

(define (square x)
  (* x x))

(define (abs x)
  (if (< x 0) (- 0 x) x))

(define (sqrt x)
  (sqrt-iter 1.0 x))

(sqrt 0.00005)

;; The result given by the program is 0.031781009679092864.
;; The actual answer is 0.00707106781.
;; This happens because for very small numbers the good enough test gives false
;;positives. It terminates when the difference in the square of the guess and the
;;actual number is less than the tolerance value of 0.001, not necessarily when it
;;has found the square root.

(sqrt 79362571071989108)

;;The program runs into an infinite loop. This is because good enough
;; never gives a positive test whereas guess keeps producing the same
number. This is because the difference between large numbers is unlikely to
;; be less than the tolerance value of 0.001.
