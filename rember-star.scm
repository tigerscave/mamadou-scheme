(define rember*
  (lambda (a l)
    (cond
      ((null? l) (quote ()))
      ((atom? (car l))
        (cond
          ((eq? (car l) a)
            (rember* a (cdr l)))
            (else (cons (car l)
              (rember* a(cdr l))))))
              (else (cons (rember* a(car l))
              (rember* a (cdr l)))))))

(define atom?
  (lambda (x)
  (and (not (null? x)) (not (pair? x)))))
(print (rember* 'sauce '(((tomato sauce))((bean) sauce)(and ((flying)) sauce))))
