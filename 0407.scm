(define sum-tup*
  (lambda (tup)
    (cond
      ((null? tup) 0)
      (else (+ (car tup) (sum-tup* ( cdr tup)))))))


(print (sum-tup* '(1 2 3 4)))
(print (sum-tup* '(49 28 63 4)))
(print (sum-tup* '()))
(print (sum-tup* '(1 (2 (3 (4))))))
