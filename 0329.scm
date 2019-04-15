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

(print (insertL* 'apple 'banana '(banana (banana))))
