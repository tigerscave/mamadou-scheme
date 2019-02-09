(define blast
  (lambda (n a)
    (cond
    ((zero? n) (quote ()))
    (else (+ (car tup) (tup-sum (cdr tup)))))))
(print (blast 5 'apple))
(print (blast 5 '(banana)))
