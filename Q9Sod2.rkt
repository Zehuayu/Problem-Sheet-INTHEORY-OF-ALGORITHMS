#lang racket
(define (sod2 list1 list2 list3)
  ;check the three list wheater is null if list is null return the '()
  (if 
  (null? list1)
     '()
      (if(null? list2)
        '();
        (if (null? list3)
        '();
     (cond
       
    ;compare to three list condition and return the result
       ((zero? (modulo(+ (car list1)(car list2)(car list3))2))
       
        (cons 0(sod2 (cdr list1)(cdr list2)(cdr list3))))
      
       (else
        (cons 1(sod2(cdr list1)(cdr list2) (cdr list3)))))))))

(sod2 (list 0 0 0 0 1 1 1 1) (list 0 0 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1))