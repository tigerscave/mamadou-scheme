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

;(ice cream with topping fudge for dessert)
;(print (insertL 'topping 'fudge '(ice cream with fudge for dessert)))
;(print (insertL 'a 'b '(a c d f)))

(define atom?
  (lambda (x)
  (and (not (pair? x)) (not (null? x)))))


(define lat?
  (lambda (l)
    (cond
    ((null? l) #t)
    ((atom? (car l)) (lat? (cdr l)))
      (else #f))))

(print (lat? '(apple banana orange mango)))
(print (lat? '(a c b a)))
(print (lat? '(for does who it may concern)))
(print (lat? '((apple banana orange))))
(print (lat? '(())))
(print (lat? '()))

(define member
  (lambda (a lat)
    (cond
    ((null? lat) #f)
      (else (or (eq? (car lat) a)
        (member a(cdr lat)))))))

(print (member 'apple '(apple banana orange)))
(print (member 'meat '(meat gravy )))
(print (member ' meat '(banana orange)))
