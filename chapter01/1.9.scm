#lang scheme
(define (inc a) (+ a 1))
(define (dec a) (- a 1))
(define (+ a b)
  (if (= a 0) b (inc (+ (dec a) b))))
;;The above procedure will generate a linear recursive process.
;;We can easily infer this by using the substitution model of evaluation. The operand of inc operator [(+ (dec a) b)]
;; must be evaluated first. This calls the + procedure itself WHILE keeping the fact in memory that the
;; evaluation must be passed as an operand to inc. Similarly (+ (dec a) b) calls (+ (dec (dec a)) b).
(define (+ a b)
  (if (=a 0) b (+ (dec a) (inc b))))
;;The above procedure will generate a linear iterative process.
;;This is because the '+' procedure calls itself but NOT as a procedure for an OPERAND (which by virtue of the
;; substitution model of evaluation will cause a recursive process) rather as a procedure that is
;;executable as the <alternative> of the if special form. There is no requirement  of memory here.
