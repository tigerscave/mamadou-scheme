(define lat?
  (lambda (l)
    (cond
      ((null? l) #t)
        ((atom? (car l)) (lat? (cdr l)))
          (else #f))))
(define atom?
  (lambda (x)
    (and (not (pair? x)) (not (null? x)))))
(print (lat? '(mamadou lamin musa)))

(print (lat? '(mamadou lamin (musa))))




;Q2. write rember
(define rember
  (lambda (a lat)
  (cond
    ((null? lat) (quote ()))
    (else (cond
    ((eq? (car lat) a) (cdr lat))
    (else (member? a (cdr lat))))))))
(print (rember 'a '(a b c)))



;(print (rember 'a '(a b c)))



;Q3. write multirember

;(print (rember 'a '(a b c a)))



;Q4. write reber*

;(print (rember* 'a '(a b c (a) a)))
