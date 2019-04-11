(define remove-even
  (lambda (lat)
    (cond
      ((null? lat) (quote ()))
          ((even? (car lat)) (remove-even (cdr lat)))
            (else (cons (car lat)
              (remove-even (cdr lat)))))))

(define atom?
  (lambda (x)
  (and (not (pair? x)) (not (null? x)))))

(print (remove-even '(2 4 6 8 10)))
(print (remove-even '(1 2 3 4 5)))
