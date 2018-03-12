;Author: Zehua Yu (yuzehua555@gmail.com)
;Question: Write that takes a single positive integer and return true if the number is a prime and false otherwise.
;resource from: https://stackoverflow.com/questions/3345626/finding-a-prime-number-in-scheme-using-natural-recursion
#lang racket

;named this function is decide-prime and inputing number p 
(define (decide-prime p)
  (define (check-number n d)
    (cond
      ;if d = 1, the number is definally prime
     ((= d 1) #t)
     ;if n/d = 0 return false and know p is prime
     (else(if (=(remainder n d) 0)
              #f
              ; d-- and re-enter loop
              (check-number n (- d 1)))))
    )
  ;the number inputed is 1, return true. If not, the number input the function check-number
  (if (= p 1)
      #t
      (check-number p (- p 1)))
  )
;list the 0 - 20 and show which is prime
(for/list ([i 20])
  (decide-prime i))

