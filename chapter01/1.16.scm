#lang scheme
(define (square x) (* x x))
(define (even? n)
  (= (remainder n 2) 0))
(define (fast-expt-iter b n a)
  (if (= n 1)
  a
  (fast-expt-iter  b (/ n 2) (* (square b) a))))
(define (fast-expt b n)
 (cond ((= n 0) 1)
       ((even? n) (fast-expt-iter b n b))
       (else (* b (fast-expt-iter b (- n 1) b)))) )

(fast-expt 5 4)
(fast-expt 2 4)
(fast-expt 6 0)
