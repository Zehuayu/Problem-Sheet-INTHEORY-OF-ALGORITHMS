#lang racket
(define (chse list1 list2 list3)

  ; checks if three list is empty
  (if(null? list1) 
   '()

   (if(null? list2)
        '();
        (if (null? list3)
        '();

        (cond   
  
          ((= (car list1) 1)
          (cons (car list2) (chse (cdr list1) (cdr list2) (cdr list3))))
          (else
          (cons (car list3) (chse (cdr list1) (cdr list2) (cdr list3)))))))))
; feeds these lists into the function
(chse (list 0 0 0 0 1 1 1 1) (list 0 0 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1))
