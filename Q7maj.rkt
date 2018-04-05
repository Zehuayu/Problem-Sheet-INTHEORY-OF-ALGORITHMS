#lang racket
(define (maj list1 list2 list3)

  ;check the three list wheather is null
    (if (null? list1)
        '()
        (if(null? list2)
        '();
        (if (null? list3)
        '();

        ;check the three element is the same or is not, so there is three situation list1 element
        ;equal list2 element or list1 equare list3 or list2 equal list  
        
          (cond  
          ((= (car list1) (car list2))
           (cons
            (car list1) (maj (cdr list1) (cdr list2) (cdr list3))))
          ((= (car list1) (car list3))     
           (cons 
           (car list1) (maj (cdr list1) (cdr list2) (cdr list3))))
          ((= (car list2) (car list3))  
           (cons
            (car list2) (maj (cdr list1) (cdr list2) (cdr list3)))))))))



(maj (list 0 0 0 0 1 1 1 1) (list 0 0 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1))