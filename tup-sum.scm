(define tup-sum
  (lambda (tup)
    (cond
    ((null? tup) 0)
    (else (+ (car tup) (tup-sum (cdr tup)))))))
(print (tup-sum '(1 2 3 4)))

(print (tup-sum '(2 4 6 8)))
