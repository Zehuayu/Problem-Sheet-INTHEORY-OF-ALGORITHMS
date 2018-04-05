#lang racket
;question:Write a function sublsum in Racket that takes a list (of integers) as input and returns a list of sublists of it that sum to zero.

(define (sum l)
  (if (null? l)
	0
	(+ (car l) (sum (cdr l)))))

(define (sublsum-aux l1 l2)
  (if (null? l1)
	'()
    (if (= 0 (car l1))
	  (cons (car l2) (sublsum-aux (cdr l1) (cdr l2)))
	  (sublsum-aux (cdr l1) (cdr l2)))))

(define (sublsum l)
  (sublsum-aux (map sum (cdr (combinations l))) (cdr (combinations l))))

(sublsum '(1 2 3 4 -5))