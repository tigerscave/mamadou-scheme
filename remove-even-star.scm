(define remove-even*
  (lambda (lat)
    (cond
      ((null? lat) (quote ()))
        (else (cond
          ((even? (car lat)) (remove-even* (cdr lat)))
            (else (cons (car lat)
              (remove-even* (cdr lat)))))))))
(define atom?
  (lambda (x)
  (and (not (pair? x)) (not (null? x)))))
(print (remove-even* '(1 2 3 4)))
(print (remove-even* '(2 4 6 8)))
(print (remove-even* '(1 3 5 7)))
