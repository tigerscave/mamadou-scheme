(define member*
  (lambda (a l)
    (cond
      ((null? l) #f)
      ((atom? (car l))
        (or (eq? (car l) a)
          (member* a (cdr l))))
          (else (or (member* a (car l))
            (member* a (cdr l)))))))
(define atom?
  (lambda (x)
  (and (not (null? x)) (not (pair? x)))))
(print (member* 'chips '((potato) (chips ((with) (fish) (chips))))))
