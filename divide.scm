(define divide
  (lambda (n m)
    (cond
      ((< n m) 0)
      (else (+ 1 (divide (- n m) m))))))
(print (divide 15 4))
(print (divide 8 2))
(print (divide 10 5))
