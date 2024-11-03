
;; Lists in lisp

(defparameter *colors* '(red green blue))





(print '(a))



(print (length '(a)))

(print (first '(a b c)))

(print (second '(a b c)))


(print (first 'kazoo)) ; => error




(print (rest(rest '(a b c))))


(defun MY-SECOND(list)

  (first(rest list))
  )

(print(MY-SECOND '(a b c)))
(defun MY-THIRD (list)

  (first (rest (rest list)))
  
  
  )


(print(MY-THIRD '(a b c)))








(print (MY-THIRD2 '(a b c d)))



(defun third (list)
    
    (second( rest list))
  )


(print (third '(a b c)))
(print (second( rest'(a b c)))) ; same as third





(print(car '(a)))
(print(cdr '(a))) ;cdr part of the node is NIL (eof linked list)

(print( cdaddr'((A B) (C D) (E F))))


(print( car 'bills))


(print (cons 'a '(a b)))



(defun cons-list (a b)
  
  (cons a b)
  )


(print (cons-list 'a 'b))



(print (list 'a 'b 'c))


(print (list 'foo))


(print (list '(foo)))


(print (list  '(var) '(foo)))


(print (list  'var '(b c) 'foo))



(defun blurt (a b)


  (list a 'is 'a b)
  
  )


(print(blurt 'mike 'nerd))


(print (cons 'zort NIL))a


(print (list 'a 'b))



(print (cons 'a '(b)))


