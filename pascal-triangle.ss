#lang scheme

(define (pascal row pos)
  (cond 
    ((= pos 1) 1)
    ((= row pos) 1)
    (else
     (+ (pascal (- row 1) (- pos 1))
        (pascal (- row 1) pos)))
    )
  )
                
