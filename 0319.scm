
(define lat?
  (lambda (l)
    (cond
      ((null? l) #t)
      ((atom? (car l)) (lat? (cdr l)))
        (else #f))))
(define atom?
  (lambda (x)
  (and (not (pair? x)) (not (null? x)))))

  (print (lat? '((a b c d))))

  (print (lat? '()))
  (print (lat? '(apple banana orange)))
  (print (lat? '(a b c)))

  ;(print (insertLR 'apple 'banana '(banana orange)))
  ;(apple banana apple orange)
  ;(print (insertLR 'mango 'banana '(banana orange)))
  ;(mango banana mango orange)
  ;(print (insertRL 'a 'c '(b c)))
  ;(b a c a)

(define insertRL
  (lambda (new old lat)
        (cons new  (cons new (cdr lat)))))

;(print '(insertRL mango banana (banana orange)))
;(print (insertRL 'mango 'banana '(banana orange)))
;(print '(insertRL apple banana (banana orange)))
;(print (insertRL 'apple 'banana '(banana orange)))
;(print (insertRL 'a 'c '(b c)))

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

(print (insertR 'topping 'fudge '(ice cream with fudge for dessert)))
;(ice cream with fudge topping for dessert)
