(define plus
  (lambda (n m)
    (cond
      ((zero? m) n)
      (else (+ 1 (plus n (- m 1)))))))
(print (plus 2 3))
