

(equal kirk spock)

(print (equal 'kirk 'spock))


(defun riddle (x y)
  (list 'why 'is 'a x 'like 'a y)
  )


(print (riddle 'snail 'leaf))


(list 'buy '(* 2 3) 'b) ;; a list that evaluates to itself


(print (list 33 'squared 'is (* 33 33)))



(defun LONGER-THAN (l1 l2)
  (> (length l1) (length l2))
  )


(print (LONGER-THAN '(a b c) '(a b)))


(defun addlength (l) 
  (cons (length l) l)
  )

(print (addlength '(a b c)))


(print (first '(list moose goose)))

