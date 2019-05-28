#lang sicp


;;euclid falmule

(define (euclid a b)
  (if (= b 0)
      a
      (euclid b (mod a b))))

(define (mod a b)
  (let ((c (quotient  a b)))
    (- a (* c b))))

(mod 9 4)

(euclid 1035 759)
  