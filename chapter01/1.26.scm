#lang scheme


;; Using the applicative order evaluation and the substitution model
;; we can see that (square (expmod base (/ exp 2) m)) will call expmod once.
;; Explicitly calling multiplication will call expmod twice which will then
;; uneccesarily cause a redundant recursion trail for every call made to multiplication.