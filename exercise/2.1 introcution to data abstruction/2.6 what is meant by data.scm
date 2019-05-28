#lang sicp

;;https://jlongster.com/SICP-2.6--Church-Numerals
;;Church numerals
(define zero
  (lambda (f)
    (lambda (x)
      x)))

(define (add-1 n)
  (lambda (f)
    (lambda (x)
      (f ((n f) x)))))

;;defination of ONE can get from (add-1 zero):
(add-1 zero)

(add-1 (lambda (f)
         (lambda (x)
           x)))

((lambda (n)
  (lambda (f)
    (lambda (x)
      (f ((n f) x)))))
 (lambda (f)
   (lambda (x)
     x)))

(define one
  (lambda (f)
    (lambda (x)
      (f x))))

(define two
  (lambda (f)
    (lambda (x)
      (f (f x)))))

one
zero
two

;;define +
(define +
  (lambda (m)
    (lambda (n)
      (lambda (f)
        (lambda (x)
          (m f (n f x)))))))
