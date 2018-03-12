;Author: Zehua Yu (g00307279@gmit.ie)
;Question:a function in Racket that takes a positive integer n0 as input and returns a list by recursively applying the following operation, starting with the input number.

#lang racket
(define list '())

(define (collatz-list n)

  (append list n)
  ;combine all number in to the Q
  (cond

    ((= n 1) list '(1))
    ;if n == 1 stop this loop and show 1 in the queue
    ((=(remainder n 2)0)
     ;if the n is even, it go to the function below
     (cons n
       (collatz-list(/ n 2))))
    ((=(remainder n 2)1)
     ;if the n is odd, it go to the function below
     (cons n
       (collatz-list(+ (* 3 n) 1))))
    

    )
  )
    

  

;running collatz-list function and input number 9
(collatz-list 5)

