#lang racket
(define (sod2 list1 list2 list3)
  (if ; first checks if the first list is null
  (null? list1)
     '() 
     (cond
    
       ((zero? (modulo(+ (car list1)(car list2)(car list3))2))
       
        (cons 0(sod2 (cdr list1)(cdr list2)(cdr list3))))
      
       (else
        (cons 1(sod2(cdr list1)(cdr list2) (cdr list3)))))))
; feed these lists into the function
(sod2 (list 0 0 0 0 1 1 1 1) (list 0 0 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1))