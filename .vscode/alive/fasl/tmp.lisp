(defun mul(x y)
  (* x y))


(defun su (x y)
  (+ x y))




(defun remaining (&optional duration)
    (case duration
        ((:normal) 337)
        ((:shorter) 237)
        ((:very-sort) 137)
        ((:longer) 437)
        ((:very-long) 537)
        ((:otherwise) 337)   
    )
    
)

(remaining)