(define sum
  (lambda (tup)
  (cond
  ((null? tup) 0)
  (else (+ (car tup) (sum (cdr tup)))))))
(print (sum '(1 2 3)))
(print (sum '()))
(print (sum '(3 7 10)))

(define insertL
  (lambda (new old lat)
    (cond
      ((null? lat) (quote ()))
      (else (cond
            ((eq? (car lat) old)
              (cons new
                (cons old (cdr lat))))
            (else (cons (car lat)
                    (insertL new old (cdr lat)))))))))
(print (insertL 'apple 'banana '(banana banana)))


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
  (and (not (null? x)) (not (pair? x)))))
(print (insertL* 'apple 'banana '(banana (banana))))
