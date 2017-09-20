#lang scheme

(define (square x)
  (display "squaring") (display x) (newline)
  (* x x))

(define (expmod base exp m)
  (cond ((= exp 0) 1)
        ((even? exp)
         (remainder
          (square (expmod base (/ exp 2) m))
          m))
        (else
         (remainder
          (* base (expmod base (- exp 1) m))
          m))))

(define (fast-expt b n)
  (cond ((= n 0) 1)
        ((even? n) (square (fast-expt b (/ n 2))))
        (else (* b (fast-expt b (- n 1))))))

(define (even? n)
  (= (remainder n 2) 0))

  (define (expmod-alyssa base exp m)
  (remainder (fast-expt base exp) m))

(expmod 4 59 59)
(expmod-alyssa 4 59 59)

;;We see that Alyssa's version computes squares of huge numbers.
;;The original expmod procedure makes sure that the number being squared
;;is less than the number tested for primality. 