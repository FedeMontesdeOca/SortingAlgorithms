;;;; QuickSort
;;;; To run it: clist quikcSort.lisp; enter 5; enter 5 4 3 2 1
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

(defun partition(c d) 
 (setf z (aref arr d))
 (setf k (- c 1))
 (do ((m c (+ m 1))) ((> m (- d 1))) 
	(if (<= (aref arr m) z)
		(progn 
		(setf k (+ k 1))
		(swapElements k m))))
  (swapElements (+ k 1) d) 
  (+ k 1)) ;;return k + 1

(defun quick(p r)
  (if (< p r)
	(progn
	(setf q (partition p r))
	(quick p (- q 1))
	(quick (+ q 1) r))))
  
(defun quickSort()
	(princ "Enter the number of elements: ")
	(setq n (read))
	(readList n)
	(format t "Unsorted List~%")
	(printList n)
	(quick 0 (- n 1))
	(format t "Sorted List:~%")
	(printList n))

(quickSort)

