(define multiinsertL
  (lambda (new old lat)
    (cond
      ((null? lat) (quote ()))
      (else
        (cond
          ((eq? (car lat) old)
            (cons new
              (cons old
                (multiinsertL new old (cdr lat)))))
          (else (cons (car lat)
                  (multiinsertL new old (cdr lat)))))))))
(define atom?
  (lambda (x)
  (and (not (pair? x)) (not (null? x)))))
  (print (multiinsertL 'apple 'banana '(banana banana)))
