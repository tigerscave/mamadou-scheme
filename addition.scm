(define addition
  (lambda (n m)
    (cond
      ((zero? m) n)
      (else (+ 1 (addition n (- m 1)))))))
(print (addition 46 12))
