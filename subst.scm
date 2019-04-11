(define subst
  (lambda (new old lat)
    (cond
      ((null? lat) (quote ()))
      (else (cond
            ((eq? (car lat) old)
              (cons new (cdr lat)))
            (else (cons (car lat)
                        (subst new old (cdr lat)))))))))

(define atom?
  (lambda (x)
  (and (not (pair? x)) (not (null? x)))))

(print (subst 'apple '(apple banana)))
