#lang scheme
(define (fib n)
  (fib-iter 1 0 0 1 n))
(define (fib-iter a b p q count)
  (cond ((= count 0) b)
        ((even? count)
         (fib-iter a
                   b
                   (+ (square p) (square q)); compute p
                   (+ (* 2 p q) (square q)); compute q
                   (/ count 2)))
        (else (fib-iter (+ (* b q) (* a q) (* a p))
                        (+ (* b p) (* a q))
                        p
                        q
                        (- count 1)))))
(define (square x) (* x x))

(fib 0)
(fib 1)
(fib 2)
(fib 3)
(fib 4)
