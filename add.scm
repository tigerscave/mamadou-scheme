(define add
  (lambda (n m)
    (cond
      ((zero? m) n)
      (else (add (+ n (sub1 m)))))))
(print (add 2 4))
