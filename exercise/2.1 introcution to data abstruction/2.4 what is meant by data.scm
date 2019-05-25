#lang sicp
(define (cons x y)
  (lambda (m) (m x y)))
;;cons takes x and y as parameters, and build a built-in process,
;;which can take a procedure 'm' and do the process (m x y)

(define (car z)
  (z (lambda (p q) p)))
;;car 

(define (cdr z)
  (z (lambda (p q) q)))

;;test
(car (cons 1 2))
(cdr (cons 1 2))

;;my explain
;;use subsititution to analysis
((cons x y) (lambda (p q) p))
;;cons生成一个lambda需要一个函数作为参数m, 这个函数来自于(lambda (p q) p)
;;即两个输入参数p q中选择p参数返回

;;web explain
(car (cons 1 2))
(car (lambda (m) (m 1 2)))          ; 展开 cons
((lambda (z) (z (lambda (p q) p)))  ; 展开 car ,代换 z
    (lambda (m) (m 1 2)))
((lambda (m) (m 1 2))               ; 代换 m
    (lambda (p q) p))
((lambda (p q) p)                   ; 代换 p
    1 2)
