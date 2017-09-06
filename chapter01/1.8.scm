#lang scheme
(define (cube-root-iter guess x)
  (if (good-enough? guess x)
      guess
      (cube-root-iter (improve guess x) x)))

(define (good-enough? guess x)
  (< (abs(- (improve guess x) guess)) 0.001))

(define (improve guess x)
  (average (/ x (square guess)) guess guess))

(define (abs x)
  (if (< x 0) (- 0 x) x))

(define (square x)
  (* x x))

(define (average x y z)
  (/ (+ x y z) 3))

(define (cube-root x)
  (if (< x 0) (- 0 (cube-root-iter 1.0 x)) (cube-root-iter 1.0 x)))

;;Testing
(cube-root 9)
(cube-root 27)
(cube-root 0.00005)
(cube-root 94987735928758937879)