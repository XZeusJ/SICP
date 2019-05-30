#lang sicp

; the following procedure computes a mathematical function called Ackermann's function.

(define (A x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (else (A (- x 1)
                 (A x (- y 1))))))
;;(A 1 10)
;;(A 2 4)
;;(A 3 3)

; analysis (A 1 10)
#|
(A 1 10)
(A 0
   (A 1 9))
(A 0
   (A 0
      (A 1 8)))
(A 0
   (A 0
      ..
        (A 1 1))) ;; right now we have ten A to recurse
(A 0 (A 0 .. (A 0 2)))
(A 0 (A 0 .. 4))
2**10
|#




;; a version about display a sequence
;; we can use this display process to see what (f n) would print out
#|
(define (show n)
  (define (iter n counter)
    (if (> counter n) 'liftoff
        (begin
          (display counter)
          (display " ")
          (iter n
                (+ counter 1)))))
  (iter 10 0))
(show 10)
|#

(define (show-function f)
  (define (iter f n counter)
    (if (> counter n) 'liftoff
        (begin
          (display counter)
          (display " ")
          (display (f counter))
          (display "\n")
          (iter f n
                (+ counter 1)))))
  (iter f 10 0))

; TEST
(define (f n) (A 0 n))
(define (g n) (A 1 n))
(define (h n) (A 2 n))
(define (k n) (* 5 n n))

(show-function f) ;; (f n) computes 2*n
(show-function g) ;; (g n) computes 2**n
;(show-function h) ;; (h n) computes 2**(2**n)
(show-function k) ;; (k n) computes 5*n**2
