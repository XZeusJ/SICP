;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 1.12_pascal_triangle) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))

;recursive version
;base case: when pascal(row,col) which row=1/2, col=1/2
;indusive step: pascal(row,col) = pascal(row-1, col-1) + pascal(row-1, col-2)

(define (pascal row col)
  (cond ((> col row)
         (error "unvalid col values"))
        ((= col 1) 1)
        ((= row col) 1)
        (else (+ (pascal (- row 1)
                         (- col 1))
                 (pascal (- row 1)
                         col)))))

(pascal 3 2)

;iteration version
;(row col)=row!/col!*(row-col)!

(define (factorial n)
  (fact-iter 1 1 n))

(define (fact-iter product counter max-count)
  (if (> counter max-count)
      product
      (fact-iter (* counter product)
                 (+ counter 1)
                 max-count)))

(define (pascal-i row col)
  (/ (factorial row)
     (* (factorial col)
        (factorial (- row col)))))

(pascal-i 4 2)