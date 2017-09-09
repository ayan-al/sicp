#lang scheme

(define (pascal-triangle-number row column)
  (if (or (= row 1) (= column 1) (= column row))
    1
    (+ (pascal-triangle-number (- row 1) (- column 1))
       (pascal-triangle-number (- row 1) column))))

(pascal-triangle-number 5 3)

  
