#lang sicp
;; use newton's method to approximate guess to cube-root
(define (cube-root-iter old-guess x)
  (let ((new-guess (improve old-guess x)))
   (if (good-enough? old-guess new-guess)
      new-guess
      (cube-root-iter new-guess x))))

>(define (improve guess x)
  (/ (+ (/ x
           (square guess))
        (* 2 guess))
     3))

(define (good-enough? old-guess new-guess)
  (> 0.01
     (/ (abs (- new-guess old-guess))
        old-guess)))

(define (square x)
  (* x x))

(define (cube-root x)
  (cube-root-iter 1.0 x))


(cube-root 27)
(cube-root (* 7 7 7))