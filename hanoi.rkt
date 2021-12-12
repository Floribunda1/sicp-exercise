#lang racket
(define (move-recursion disk from to spare)
  (cond ((= disk 1) (print "one move\n"))
      (else
        (move-recursion (- disk 1) from spare to);
        (move-recursion 1 from to spare);
        (move-recursion (- disk 1) spare to from);
      )
  )
)

(move-recursion 3 1 2 3);

;;TODO: iteration