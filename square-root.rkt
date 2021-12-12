#lang racket

(define (abs x)
  (cond ((< x 0) (- x))
  			((= x 0) 0)
  			((> x 0) x)
  ) 
);
 
(define (average x y)
	(/ (+ x y) 2)
);
 
(define (square x)
	(* x x)
);

(define (good-enough guess x)
	(< (abs (- (square guess) x)) 0.001)
);

(define (improve guess x)
	(average guess (/ x guess))
);

(define (try-sqrt guess x)
	(if (good-enough guess x) guess
		(try-sqrt (improve guess x) x)
	)
)

(define (sqrt x)
	(try-sqrt 1 x)
);

(sqrt 4);
