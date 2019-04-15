(define rm-even*
  (lambda (lat)
    (cond
      ((null? lat) (quote ()))
      ((even? (car lat)) (rm-even* (cdr lat)))
      (else (cons (car lat)
              (rm-even* (cdr lat)))))))

(print (rm-even* '(2 4 6 8 10)))
(print (rm-even* '(1 2 3 4 5)))

(print (rm-even* '(1 2 3 4)))
(print (rm-even* '(1 2 3 4)))
(print (rm-even* '(2 4 6 8)))
