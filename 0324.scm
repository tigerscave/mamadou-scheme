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
(define atom?
  (lambda (x)
  (and (not (pair? x)) (not (null? x)))))

(print (insertL 'apple 'banana '(orange apple banana)))

(define insertR
  (lambda (new old lat)
    (cond
    ((null? lat) (quote ()))
      (else (cond
      ((eq? (car lat) old)
        (cons old
        (cons new (cdr lat))))
        (else (cons (car lat)
          (insertR new old (cdr lat)))))))))

(print (insertR 'apple 'banana '(apple banana orange)))
(print (insertR 'a 'b '(c d a b)))

(define insertLR
  (lambda (new old lat)
        (cons new  (cons new (cdr lat)))))
(print (insertLR 'a 'b '(c d a b e f)))
