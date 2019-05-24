;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |procedures as arguments|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define (sum-int a b)
   (if (> a b)
       0
       (+ a
          (sum-int (+ 1 a) b))))

;(sum-int 2 4)
;(+ 2 (sum-int 3 4))
;(+ 2 (+ 3 (sum-int 4 4)))
;(+ 2 (+ 3 (+ 4 (sum-int 5 4))))
;(+ 2 (+ 3 (+ 4 0)))
;(+ 2 (+ 3 4))
;(+ 2 7)
;9

(define (inc x) (+ x 1))
(define (sum tern a next b)
  (if (> a b)
      0
      (+ (term a)
         (sum tern (next a) next b))))
(define (sum-int a b)
  (define (identity x) x)
  (sum identity a inc b))
(define (sum-sq a b)
  (define (square x) (* x x))
  (sum square a inc b))
(define (pi-sum a b)
  (sum (lambda (i) (/ 1 (* i (+ i 2))))
       a
       (lambda (x) (+ x 4))
       b))
       

  
  