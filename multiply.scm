(define multiply
  (lambda (n m)
    (cond
      ((zero? m) 0)
      (else (+ n (multiply n (- m 1)))))))
(print (multiply 5 3))
