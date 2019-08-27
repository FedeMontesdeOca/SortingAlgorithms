;;;; InsertSort
;;; To run it clisp insertSort.lisp , enter: 5 , enter: 5 4 3 2 1 
(defun readList(n) 
 (setf arr (make-array n))

       (format t "Enter the elements ~&")

       (dotimes (x n t)

           (setf (aref arr x) (read))
       ))

(defun printList(n)

       (dotimes (x n t)

           (print (aref arr x))
       ))

(defun insertSort()
	(princ "Enter the number of elements: ")
	(setq n (read))
	(readList n)
	(format t "Unsorted List~%")
	(printList n)
	(do ((i 1 (+ i 1))) ((= i n)) 
	(setf temp (aref arr i)) (setf j (- i 1))
	(do () ((or (< j 0)(<= (aref arr j) temp)))
;;(do () ((< j 0))   	
(setf (aref arr (+ j 1)) (aref arr j))(setf j (- j 1)) ) 
	(setf (aref arr (+ j 1)) temp))	
	(format t "Sorted List~%")
	(printList n))

(insertSort)
