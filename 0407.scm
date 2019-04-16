<<<<<<< Updated upstream
(define sum-star
  (lambda (tup)
    (cond
      ((null? tup) 0)
      (else (+ (car tup) (sum-star ( cdr tup)))))))


(print (sum-star '(1 2 3 4)))
(print (sum-star '(49 28 63 4)))
(print (sum-star '()))
=======
(define sum-tup*
  (lambda (tup)
    (cond
      ((null? tup) 0)
      (else (+ (car tup) (sum-tup* ( cdr tup)))))))


(print (sum-tup* '(1 2 3 4)))
(print (sum-tup* '(49 28 63 4)))
(print (sum-tup* '()))
(print (sum-tup* '(1 (2 (3 (4))))))
>>>>>>> Stashed changes
