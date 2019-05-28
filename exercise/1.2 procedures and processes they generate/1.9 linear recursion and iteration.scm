#lang sicp
;;tow methods for adding two positive integers in terms of the procedures inc

; recursion version
(define (+ a b)
  (if (= a 0)
      b
      (inc (+ (dec a) b))))

; use substitution model to analysis recursion version
(+ 2 3)
(inc (+ 1 3))
(inc (inc (+ 0 3)))
(inc (inc 3))
(inc 4)
5

; iteration version
(define (+ a b)
  (if (= a 0)
      b
      (+ (dec a) (inc b))))

; use substitution model to analysis iteration version
(+ 2 3)
(+ 1 4)
(+ 0 5)
5