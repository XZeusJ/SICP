#lang sicp
(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
          guess
          (sqrt-iter (improve guess x)
                     x)))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))
(define square (lambda (x) (* x x)))
(define improve (lambda (guess x) (average guess (/ x guess))))
(define average (lambda (x y) (/ (+ x y) 2)))
(define sqarert (lambda (x) (sqrt-iter 1.0 x)))

;num 表示初始值,test-times表示进行test-times次测试,每次测试将num平方作为新的num
;每进行一次测试,先显示num的平方,然后显示num,最后显示xysqrt对num的平方进行的开方操作
(define (sqrt-test num test-times)
  (begin (display (* num num)) (newline) (display num) (newline) (display (sqarert (* num num))) (newline) (newline)
         (if (> test-times 0)
           (sqrt-test (* num num) (- test-times 1))
           num)))

(sqrt-test 0.1 5)

;(sqarert 9)
;(sqrt-iter 1.0 9)
;(new-if (good-enough? 1 9)
 ;       1
  ;      (sqrt-iter (improve 1 9 )
   ;                9))
;(new-if (good-enough? 1 9)
 ;       1
  ;      (sqrt-iter 5 9))
;(new-if (good-enough? 1 9)
 ;       1
  ;      (new-if (good-enough? 5 9)
   ;             5
                
                
