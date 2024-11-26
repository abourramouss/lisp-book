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




(defun emp3 (x)
  (cond ((equal (first x) 'good) (cons 'great (rest x)))
	 ((equal (first x) 'bad) (cons 'awful (rest x)))
        (t (cons 'very x))
	)
  )


(print (emp3 '(long day)))


(defun make-odd (x)
  (cond 
    ((not (oddp x)) (+ x 1))
    (t x)
    )
  )



(defun constrain (x max min)
  (cond
    ((< x min) min)
    (( > x max) max)
    (t x)
    )
  )



(defun constrain-if (x max min)
  (if (< x min) min (if (> x max) max x))
  
  )
(print (constrain-if 3 -50 50))

(print (equal (constrain 3 -50 50) (constrain-if 3 -50 50)))


(defun firstzero (list)
  (cond
    ((equal (first list) '0) 'first)
    ((equal (second list) '0) 'second)
    ((equal (third list) '0) 'third)
    )
  )



(print (firstzero '(3 0 4)))


(defun cycle (inp)
  (+ (mod inp 99) 1)
  )


(print (cycle 98))



(defun howcompute (a b r)
  (cond
    ((equal (+ a b) r) 'sum-of )
    ((equal (* a b) r) 'product-of)
    (t 'beats-me)
    )
  )


(trace howcompute)
(untrace equal)
(print (howcompute 3 4 7))


(defun geq (a b)
  (or (> a b) (= a b))
  )

(trace geq)

(geq 2 3)




