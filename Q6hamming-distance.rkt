#lang racket
(define (hamming-distance list1 list2)
   ; check the two list if the list is null to return 0
  (if
  (null? list1)
     0
     (if
     (null? list2) 
        0


        (if
      ; make sure two list have the same number, car this list to catch the first element and
      ;compare to both and cdr next list.
     (= (car list1)(car list2))
        ; if the same go back loop
        (hamming-distance (cdr list1) (cdr list2))
        ; if they are diff plus 1 then go back loop
        (+ 1 (hamming-distance (cdr list1) (cdr list2))))))) 


(hamming-distance (list 1 0 1 0 1 1 1 0) (list 1 1 1 1 0 0 0 0))