(define remove-even
  (lambda (lat)
    (cond
      ((null? lat) (quote ()))
        (else (cond
          ((even? (car lat)) (remove-even (cdr lat)))
            (else (cons (car lat)
              (remove-even (cdr lat)))))))))
(print (remove-even '(2 4 6 8 10)))
(print (remove-even '(1 2 3 4 5)))
