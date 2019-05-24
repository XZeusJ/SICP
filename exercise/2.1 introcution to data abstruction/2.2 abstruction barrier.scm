#lang sicp
;;a constructor
(define (make-segment s e) (cons s e))

;; selectors
(define (stap seg) (car seg))
(define (endp seg) (cdr seg))

;;a point constructor
(define (make-point x y) (cons x y))
;; a point selector
(define (x-point point) (car point))
(define (y-point point) (cdr point))

;;print point
(define (print-point p)
  (newline)
  (display "(")
  (display (x-point p))
  (display ",")
  (display (y-point p))
  (display ")"))

(define average (lambda (a b) (/ (+ a b) 2)))

;;a procedure takes a line segment as argument and returns its midpoint
;(define midpoint-segment
;  (lambda (line-segment)
;    (make-point (average (x-point (stap line-segment))
;                         (x-point (endp line-segment)))
;                (average (y-point (stap line-segment))
;                         (y-point (endp line-segment))))))

(define (midpoint-segment seg)
  (let ((start (stap seg))
        (end (endp seg)))
    (make-point (average (x-point start)
                         (x-point end))
                (average (y-point start)
                         (y-point end)))))

(define one-two (make-point 1 2))
(define thr-fiv (make-point 3 5))
(define line-seg (make-segment one-two thr-fiv))
(print-point (midpoint-segment line-seg))


                   