#lang sicp
;;根据构造函数cons的定义, 可以直接返回the product of 两个expt
(define (cons a b)
  (* (expt 2 a)
     (expt 3 b)))


(define (car x)
  (if (= 0 (remainder x 2))
      (+ 1 (car (/ x 2)))
      0))



(define (cdr x)
  (if (= 0 (remainder x 3))
      (+ 1 (car (/ x 3)))
      0))

;;test
(define z (cons 2 3))
(car z)
(cdr z)
         