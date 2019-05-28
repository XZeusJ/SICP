#lang sicp

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x)
                 x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (square x)
  (* x x))

(define (sqrt x)
  (sqrt-iter 1.0 x))

; for small number like 0.0009, sqrt process can't give right answer
; for big number, sqrt would go dead-loop..
(sqrt 0.00009)
;;(sqrt 9000000000000000000000000000000000000000000000000000000)
