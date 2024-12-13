
;; 1.
(defun add1 (x)
  (+ x 1))

(print (mapcar #'add1 '(1 2 3)))

;; 2.

(defparameter daily-planet
'((olsen jimmy 123-76-4535 cub-reporter)
 (kent clark 089-52-6787 reporter)
 (lane lois 951-26-1438 reporter)
 (white perry 355-16-7439 editor)))


(print (mapcar #'third daily-planet))

;; 3.

(print (mapcar #'zerop '(2 0 3 4 0 -5 -6)))

;; 4.

(defun greater-than-five-p (x)
  (> x 5))

(print (mapcar #'greater-than-five-p '(2 0 3 4 0 -5 -6)))


;; 5.

(lambda (x) (- x 7))

;; 6.

(print (funcall (lambda (x) (if (or (eql x NIL) (eql x T)) T NIL)) NIL))

;; 7.

(print (mapcar #'(lambda (x) (if (eql x 'DOWN) 'UP 'DOWN)) '(UP DOWN)))

;; 8.

(defun roughtly-equal (x k)
  (find-if #'(lambda (j) (if (and (>= j (- k 10)) (< j (+ k 10))) j NIL)) x))

(print (roughtly-equal '(10 5 1 30) 21))

;; 9.

(print (not (eql '() NIL)))

(defun find-nested (x)
  (find-if #'(lambda (j) (not (eql j NIL))) x))

(print (find-nested '(NIL '(a b c) NIL)))

;; 10.

;; a.

(defparameter note-table
  '((C       1)
    (C-SHARP 2)
    (D       3)
    (D-SHARP 4)
    (E       5)
    (F       6)
    (F-SHARP 7)
    (G       8)
    (G-SHARP 9)
    (A       10)
    (A-SHARP 11)
    (B       12)))

;; b

(defun numbers (list)
  (mapcar #'(lambda (x) (cadr (assoc x note-table))) list)
  )



(print (numbers '(C)))

;; c

(print (reverse (car note-table)))


(defun search-reversed (key table)
  (find-if #'(lambda (tuple) (eql (cadr tuple) key)) table))

(print (search-reversed '7 note-table))

(defun notes (list)
  (mapcar #'(lambda (x) (cadr (assoc x note-table))) list))



;; d

;; e

(defun raise (raise-value list)
  (mapcar #'(lambda (val) (+ val raise-value) ) list))

(print (raise 5 '(5 3 1 3 5 5 5)))

;; f

(defun normalize (list)
  (mapcar #'(lambda (val) (mod val 12)) list))

(print (normalize '(6 10 13)))

;; g

(defun transpose (n song)
  (mapcar #'(lambda (val)
              (let* ((num (cadr (assoc val note-table)))
                     (raised (mod (+ num n) 12)))
                (car (find-if #'(lambda (tuple) (eql (cadr tuple) raised)) note-table)))) ;; Find note
          song))

(print (transpose 5 '(E D C D E E E)))



(defun half (n) (* n 0.5))
(defun average (x y)
  (+ (half x) (half y)))


(trace half average)

(average 3 7)

(print (trace))

(untrace)

(defun add-to-end (x y)
  (append x (list y)))


(print (add-to-end '(a) 'b))

(defun repeat-first (phrase)
  (add-to-end phrase (first phrase)))

(trace add-to-end repeat-first)

(repeat-first ’(for whom the bell tolls))