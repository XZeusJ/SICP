#lang sicp
;;a rectangle constructor
(define (make-rectangle s e) (cons s e))
;; rectangle selectors
(define (stap seg) (car seg))
(define (endp seg) (cdr seg))

;;a point constructor
(define (make-point x y) (cons x y))
;; a point selector
(define (x-point point) (car point))
(define (y-point point) (cdr point))

;;compute perimeter
(define (perimeter rect)
  (* (+ (length rect)
        (width rect))
     2))

;;compute area
(define (area rect)
  (* (length rect)
     (width rect)))

;;compute length
(define (length rect)
  (abs (- (x-point (stap rect))
          (x-point (endp rect)))))

;;compute width
(define (width rect)
  (abs (- (y-point (stap rect))
          (y-point (endp rect)))))

(define p1 (make-point -1 1))
(define p2 (make-point 3 4))
(define rect1 (make-rectangle p1 p2))
(perimeter rect1)
(area rect1)