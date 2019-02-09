(define rember
  (lambda (a lat)
    (cond
      ((null? lat) (quote ()))
        (else (cond
          ((eq? (car lat) a) (cdr lat))
            (else (rember a (cdr lat))))))))
(print (rember 'a '(a b c)))
(print (rember 'apple '(apple banana orange)))
