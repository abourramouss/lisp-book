(defun mul (a b)

  (print (* a b))
  
  
 )



(mul 1 2)



(print (symbolp 'dog))


(print (zerop 0))


(print (oddp 3))

(print (evenp 3))


(print (< 4 5))


(print (equal 4 4))


(print (equal 'cat 'cat))


(defun add1 (x)
  (print (+ x 1))
  )


(add1 1)

(defun sub2 (x)
  (print (- x 2))
  )

(sub2 2)


(defun twop (x)
  (print (zerop (sub2 x)))
  
  )


(twop 2)


(defun half (x)
  (print (/ x 2))
  
  )


(half 4)


(defun half2 (x)
  (print (* x 0.5))
  )


(defun MULTI-DIGIT-P (x)
  (> x 9)
  )


(print (MULTI-DIGIT-P 10))



(half2 4)
(defun sayhello()
  (print "hello")
  
  )


(defun TWOMOREP (a b)
  
  (equal (+ b 2) a)
  )

(print (TWOMOREP 4 2))



(defun  TWOMOREP2(a b)

  (equal (- a 2) b)
  
  )

(print (TWOMOREP2 4 2))


(defun AVERAGE (a b)

  ( / (+ a b) 2)
  
  )

(print (AVERAGE 4 2))

(defun MORE-THAN-HALF-P (a b)
  (> (/ a 2) b)
  
  )


(print (MORE-THAN-HALF-P 7 3))



(defun NOT-ONEP (a)

 (NOT (EQUAL a 1))
  
  )



(print (NOT-ONEP 2))



(defun NOT-PLUSP (a)
  (NOT (> a 0))
  
  )


(print (NOT-PLUSP -3))


(defun EVENP1 (a)
  (NOT (ODDP a))
  )

(print (EVENP1 2))



(print (NOT (NOT T)))


(defun XOR (a b)

  (print(OR (EQUAL (NOT a) b) (EQUAL (NOT b) a)))

  
  )


(XOR T NIL)
(XOR NIL T)
(XOR T T)
(XOR NIL NIL)




