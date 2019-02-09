(define atom
  (lambda (x)
    (and (not (pair? x)) (not (null? x)))))

(print (atom '(apple)))
