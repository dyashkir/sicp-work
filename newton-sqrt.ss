#lang scheme


(define (sqrt x)
  (define (sqrt-iter guess oldGuess x)
  (if (good-enough? guess oldGuess x)
      guess
      (sqrt-iter (improve guess x) guess
                 x)))
  (define (improve guess x)
    (average guess (/ x guess)))
  (define (average x y)
    (/(+ x y) 2))
  (define (good-enough? guess oldGuess x)
    (< (abs (- (square guess) (square oldGuess))) 0.001))
  (define (square x)
    (* x x))
  
  (sqrt-iter 1.0 1000 x))

(sqrt 9)