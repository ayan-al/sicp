#lang scheme

(define (A x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (else (A (- x 1) (A x (- y 1))))))


(A 1 10)
;; Abswer: 1024
(A 2 4)
;; Answer: 65536
(A 3 3)
;; Answer: 65536

(define (f n) (A 0 n)) ;; 2*n 
(define (g n) (A 1 n));; 2^n
(define (h n) (A 2 n));; 2^2^2...(n-1 times)
(define (k n) (* 5 n n));; 5*(n^2)
