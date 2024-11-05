(print (if (oddp 1) 'odd ))


( print (if (oddp 2) 'odd 'even))


(print (if t 'true 'fase))


(print (if (symbolp 'elephant) 'is_symbol 'not_symbol))



(defun make-even (x)
  (if (evenp x) x (+ x 1))
  )


(print (make-even 3))

(defun further (x)
  (if (> x 0) (+ x 1) (- x 1))
  )

(print (further 0)) ;; substracts on 0


(defun mynot (x)
  (if (equal x T) NIL T)
  )


(print (mynot T))


(defun ordered (x y)
  (if (< x y) (list x y) (list y x))
  )


(print (ordered 4 2))


(defun my-abs (x)
  (cond  ((< x 0) (* -1 x))
         ((> x 0) x)
         )
  )

(print (my-abs -1))




(defun (x) symbol-or-not
    (cond ((symbolp x) 'symbol)
      (t 'not-a-symbol)))




(defun emp (x)
  (cond ((null x) 'empty)
	(t 'not-empty)
	)
  )


