#lang scheme

(define (square x) (* x x))

(define (runtime) (current-milliseconds))

(define (smallest-divisor n) (find-divisor n 2))

(define (find-divisor n test-divisor)
  (cond ((> (square test-divisor) n) n)
        ((divides? test-divisor n) test-divisor)
        (else (find-divisor n (+ test-divisor 1)))))

(define (divides? a b) (= (remainder b a) 0))

(define (prime? n)
  (= n (smallest-divisor n)))


(define (timed-prime-test n)
  (newline)
  (display n)
  (start-prime-test n (runtime)))

(define (start-prime-test n start-time)
  (if (prime? n)
      (report-prime (- (runtime) start-time)) (void)))

(define (report-prime elapsed-time)
  (display " *** ")
  (display elapsed-time))

(define (search-for-primes from to)
  (cond ((= from to) (timed-prime-test from) (display " \nDone searching for primes...\n "))
        ((even? from) (search-for-primes (+ from 1) to))
        ((< from to) (timed-prime-test from) (search-for-primes (+ from 2) to))))


(search-for-primes 10 20)
(search-for-primes 1000 1019)       
(search-for-primes 10000 10037)      
(search-for-primes 100000 100043)  
(search-for-primes 1000000 1000037)

;; There is hardly any difference

(search-for-primes 1000000000 1000000021)     
(search-for-primes 10000000000 10000000061)    
(search-for-primes 100000000000 100000000057) 
(search-for-primes 1000000000000 1000000000063)

;; Yes, the timing data bears this out. Thus the programs on my machine
;; do run in time proportional to the number of steps required for the
;; computation. 