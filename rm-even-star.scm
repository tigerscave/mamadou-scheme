
(define rm-even*
  (lambda (lat)
    (cond
      ((null? lat) (quote ()))
        (else (cond
          ((even? (car lat)) (rm-even* (cdr lat)))
            (else (cons (car lat)
              (rm-even* (cdr lat)))))))))
(define atom?
  (lambda (x)
  (and (not (pair? x)) (not (null? x)))))
(print (rm-even* '(1 2 (3 4))))
