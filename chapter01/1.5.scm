#lang scheme

(define (p) (p))
(define (test x y)
(if (= x 0) 0 y))

(test 0 (p))

;; If the interpreter uses normal-order evaluations the ouput would be 0.
;; If the interpreter uses applicative-order evaluation, the script is
;; stuck in a infinite loop. 
