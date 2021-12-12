#lang racket
(define (fib-recursion n)
  (if (n < 2) 
      n
      (+ (fib-recursion (- n 1)) (fib-recursion (- n 2)))
  )
)

;; TODO: fib-iteration