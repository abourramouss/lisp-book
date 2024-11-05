


(+ 3 5)

(3 + 5) ;;error

(+ 3 (5 6)) ;; error list vs int

(* 3 (5 6)) ;; error list vs int


(print '(morning noon night))

(list 'morning 'noon 'night)

(car nil)

(+ 3 foo) ;; error, foo + 3

(+ 3 'foo)


(defun MYFUN (a b)
  (cons ( list a) b)
  )

(print (MYFUN 'alpha 'beta))


(defun FIRSTP (f s)
  (equal f (first s))
  )

(print (FIRSTP 'foo '(foo bar)))


(defun MID-ADD1 (f s)
  (list (first s) f (third s))
  )


(print (MID-ADD1 3 '(take 2 cookies)))


(defun F-TO-C (f)
  (/ (* 5 (- f 32)) 9)
  )

(print (F-TO-C 59))


(lambda (x) (* 2 x)) ;;double in lambda notation
(lambda (x) (* x x)) ;; square

(print (eval '''(+ 2 2)))

(eval (eval (list ’cons t nil)))

