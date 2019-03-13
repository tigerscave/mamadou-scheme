(define insertL*
  (lambda (new old l)
    (cond
      ((null? l) (quote ()))
      ((atom? (car l))
        (cond
          ((eq? (car l) old)
            (cons new
              (cons old
                (insertL* new old (cdr l)))))
          (else (cons (car l)
                  (insertL* new old (cdr l))))))
          (else (cons (insertL* new old (car l))
                        (insertL* new old (cdr l)))))))
(define atom?
  (lambda (x)
  (and (not (pair? x)) (not (null? x)))))
(print (insertL* 'apple 'banana '(banana (banana))))
