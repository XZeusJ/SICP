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

(define (f n) (A 0 n))


;; a version about display a sequence
;; we can use this display process to see what (f n) would print out
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

;; another version about display a sequence
#|
(let countdown ((i 10))
 (if (= i 0)
     'liftoff
      (begin
        (display i)
        (newline)
        (countdown (- i 1)))))
|#

