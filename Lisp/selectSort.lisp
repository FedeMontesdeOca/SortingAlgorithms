;;;; SelectSort
;;;; To run it: clist selectSort.lisp; enter 5; enter 5 4 3 2 1
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
	   
(defun swapElements(x y)
 (setf temp (aref arr x)) 

       (setf (aref arr x) (aref arr y)) 

       (setf (aref arr y) temp))

(defun selectSort()
	(princ "Enter the number of elements: ")
	(setq n (read))
	(readList n)
	(format t "Unsorted List~%")
	(printList n)
	(do ((i 0 (+ i 1))) ((= i (- n 1))) 
	(setf minim i)
(do ((j (+ i 1) (+ j 1))) ((= j n))  (if (< (aref arr j) (aref arr minim)) 
(setf minim j)  ))
(if (/= minim i) (swapElements i minim)))
	(format t "Sorted List:~%")
	(printList n))

(selectSort)