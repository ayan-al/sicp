#lang scheme

(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
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
  (new-if (< x 0) (- 0 x) x))

(define (sqrt x)
  (sqrt-iter 1.0 x))

(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))


(new-if (= 2 3) 0 5)
(new-if (= 1 1) 0 5)

(sqrt 25)

;; The program gets stuck in an infinite loop. While if is a special form,
;; new-if is a procedure. We know that LISP
