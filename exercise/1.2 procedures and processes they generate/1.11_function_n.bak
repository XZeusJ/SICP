;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 1.11_function_n) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; recursion version
(define (fn n)
  (cond ((= n 0) 0)
        ((= n 1) 1)
        ((= n 2) 2)
        (else (+ (fn (- n 1))
                 (* 2 (fn (- n 2)))
                 (* 3 (fn (- n 3)))))))

(fn 5)

;; iteration version
(define (fn-i n)
  (fib-iter 0 1 2 n))

(define (fib-iter a b c count)
    (cond ((= count 0) c)
          ((= count 1) b)
          (else (fib-iter (+ a (* 2 b) (* 3 c)) b c (- count 1)))))

(fn-i 3)