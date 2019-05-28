#lang sicp

(define (sqrt-iter guess x)
  (if (good-enough? guess (improve guess x))
      (improve guess x)
      (sqrt-iter (improve guess x)
                 x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? old-guess new-guess)
  (> 0.01
     (/ (abs (- new-guess old-guess))
        old-guess)))

(define (square x)
  (* x x))

(define (sqrt x)
  (sqrt-iter 1.0 x))

; instead check the diff between sqare of guess and x
; we check the rate of new-guess and old guess
; then we can compute small or big number by this method
(sqrt 0.00009)
(sqrt 9000000000000000000000000000000000000000)