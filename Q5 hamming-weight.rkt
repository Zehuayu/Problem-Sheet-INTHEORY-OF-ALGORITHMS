#lang racket
;question:Write a function hamming-weight in Racket that takes a list
;l as input and returns the number of non-zero elements in it

(define (hamming-weight number)
; check the inputing number whether is null
  (if
   (null? number)
   0 ; if is null return 0
   (if
    ;check the list if number is 0 go back loop
    (= (car number) 0) 
    (hamming-weight(cdr number))
    ; if the number is 1 the count increased
    (+ 1 (hamming-weight(cdr number)))))) 

(hamming-weight (list 1 0 1 0 0 0 1 1 0 1))