#lang racket
;question:The first is called lcycle. It takes a
;list as input and returns the list cyclically shifted one place to the left. The second
;is called rcycle, and it shifts the list cyclically shifted one place to the right.
;let first value to the list right

;move the first number to last one
(define (lcycle l)
 	(append(cdr l) (list(car l)) ))



;catching the last one number
(define (catcher l)
  (if (null? (cdr l))
	(car l)
	(catcher (cdr l))))
;catch the array former the last number
(define (catcherarray l)
  (if (null? (cdr l))
	'()
	(cons (car l) (catcherarray (cdr l)))))
;append two arrays 
(define(rcycle l)
      (cons (catcher l) (catcherarray l)))



(lcycle (list 1 2 3 4 5)) ; '(2 3 4 5 1)
(rcycle (list 1 2 3 4 5)) ; '(5 1 2 3 4)
