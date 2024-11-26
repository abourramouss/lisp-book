;;setf assigns a value to a variable
(setf vowels '(a e i o u))

(print vowels)

(setf long-list '(a b c d e f g h))

;;sets the head variable to the first of longlist
(setf head (first long-list))

(print head)

(setf tail (rest long-list))

(print tail)

;;setf side-effect is to modify variables:
(defun bad-practice (p)
  (setf p (+ p 5))
  (list 'result 'is p))

(print (bad-practice 8))

(defun good-practice (p)
  (let ((q (+ p 5)))
    (print q)))

