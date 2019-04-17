(define power
  (lambda (n m)
    (cond
      ((zero? m) 1)
      (else (* n (power n (- m 1)))))))
(print (power 5 3))
