#lang sicp

(define (fast-expt b n)
  (cond ((= n 0) 1)
        ((even? n) (square (fast-expt b (/ n 2))))
        (else (* b (fast-expt b (- n 1))))))

(define (square x)
  (* x x))

(define (even n)
  (= (remainder n 2) 0))

(define (remainder a b)
  (if (< a b)
      a
      (remainder (- a b)
                 b)))

(fast-expt 3 2)
