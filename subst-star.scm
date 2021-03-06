(define subst*
  (lambda (new old l)
    (cond
      ((null? l) (quote ()))
      ((atom? (car l))
        (cond
          ((eq? (car l) old)
            (cons new (subst* new old (cdr l))))
            (else (cons (car l)
                    (subst* new old (cdr l))))))
                    (else (cons (subst* new old (car l))
                    (subst* new old (cdr l)))))))
(define atom?
  (lambda (x)
  (and (not (pair? x)) (not (null? x)))))
(print (subst* 'orange 'banana '((banana) (split ((((banana ice)))
(cream (banana)) sherbet)) (banana) (bread) (banana brandy))))
