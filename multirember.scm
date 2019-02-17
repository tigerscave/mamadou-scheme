(define multirember
  (lambda (a lat)
    (cond
      ((null? lat) (quote ()))
      (else
        (cond
          ((eq? (car lat) a)
            (multirember a(cdr lat)))
            (else (cons (car lat)
            (multirember a(cdr lat)))))))))
(print (multirember 'apple '(apple banana orange)))

(print (multirember 'apple '(apple banana orange apple)))

(print (multirember 'hoge '(hoge hoge hoge)))
