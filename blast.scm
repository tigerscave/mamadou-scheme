(define blast
  (lambda (n a)
    (cond
    ((zero? n) (quote ()))
    (else (cons a (blast (- n 1) a))))))
(print (blast 5 'apple))
(print (blast 1 'banana))
(print (blast 6 'orange))
(print (blast 100 'a))
