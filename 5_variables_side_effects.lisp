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

;;5.6

(defun throw-die ()
  (+ (random 6) 1))

(defun throw-dice ()
  (let ((first-throw (throw-die))
        (second-throw (throw-die)))
    (list first-throw second-throw)))

(print (throw-dice))


(defun SNAKE-EYES-P (li)
  (if (and (eq (first li) '1) (eq (second li) '1)) T nil)
  )

(defun BOXCARS-P (li)
  (if (and (eq (first li) '6) (eq (second li) '6)) T nil)
  )



(print (BOXCARS-P '(1 1)))
(print (eq 'a 'a))



