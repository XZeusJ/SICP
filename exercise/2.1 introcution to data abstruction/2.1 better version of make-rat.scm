#lang sicp
;;; Some things require code from other chapters -- see ch2support.scm

;;;SECTION 2.1.1

(define (add-rat x y)
  (make-rat (+ (* (numer x) (denom y))
               (* (numer y) (denom x)))
            (* (denom x) (denom y))))

(define (sub-rat x y)
  (make-rat (- (* (numer x) (denom y))
               (* (numer y) (denom x)))
            (* (denom x) (denom y))))

(define (mul-rat x y)
  (make-rat (* (numer x) (numer y))
            (* (denom x) (denom y))))

(define (div-rat x y)
  (make-rat (* (numer x) (denom y))
            (* (denom x) (numer y))))

(define (equal-rat? x y)
  (= (* (numer x) (denom y))
     (* (numer y) (denom x))))

(define (make-rat n d)
  (if (< d 0)
      (cons (- 0 n) (- 0 d))
      (cons n d)))

(define (numer x) (car x))

(define (denom x) (cdr x))

(define (print-rat x)
  (newline)
  (display (numer x))
  (display "/")
  (display (denom x)))

;;(define one-third (make-rat 1 -3))
;;(define two-third (make-rat 2 3))
;;(print-rat (add-rat one-third two-third))

(print-rat (make-rat 1 -3))
(print-rat (make-rat 1 3))
(print-rat (make-rat -1 3))
(print-rat (make-rat -1 -3))