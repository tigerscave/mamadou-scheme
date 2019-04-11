(define sum-star
  (lambda (tup)
    (cond
      ((null? tup) 0)
      (else (+ (car tup) (sum-star ( cdr tup)))))))


(print (sum-star '(1 2 3 4)))
(print (sum-star '(49 28 63 4)))
(print (sum-star '()))
