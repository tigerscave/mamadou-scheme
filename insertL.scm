(define insertL
  (lambda (new old lat)
    (cond
      ((null? lat) (quote ()))
        (else (cond
            ((eq? (car lat) old)
              (cons new
                (cons old (cdr lat))))
              (else (cons  (car lat)
                    (insertL new old (cdr lat)))))))))

  (print (insertL 'apple 'banana '(orange apple banana)))
  (print (insertL 'apple 'orange '(apple banana orange)))
  (print (insertL 'a 'b '(a b c)))
  (print (insertL 'apple 'banana '(banana)))
  (print (insertL 'apple 'banana '(banana banana)))
