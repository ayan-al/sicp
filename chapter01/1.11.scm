#lang scheme

(define (f-recursive n)
  (if (< n 3) n (+ (f-recursive (- n 1))
                   (* 2.0
                      (f-recursive (- n 2)))
                   (* 3.0
                      (f-recursive (- n 3))))))

(define (f-iterative n)
  (define (f-iter a b c count)
    (if (= count 0)
        c
        (f-iter b c (+ (* 3 a)
                       (* 2 b)
                       c) (- count 1))))
  (f-iter 0.0 1.0 2.0 (- n 2)))

;;The answer to both te following is 25.0
(f-recursive 5)
(f-iterative 5)
