#lang racket

;question:Write a function lstq in Racket that takes as arguments two lists l and m of equal
;length and containing numbers. It should return d, the distance given by the sum of
;the square residuals between the numbers in the lists


(define (square x)
  (* x x))

(define (lstq l m)
  (cond
     ; Check the list is null if y and z return 0
     [(null? l) 0]
     [(null? m) 0]
     ;the function
     [(+ (square (- (car l) (car m)))      
         (lstq (cdr l) (cdr m)))]
     )
  )

;test the example
(lstq (list 4.5 5.1 6.2 7.8) (list 1.1 -0.1 6.1 3.8))