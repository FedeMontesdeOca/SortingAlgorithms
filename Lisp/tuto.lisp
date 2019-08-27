;;;; MergeSort
;;;; To run it: clist mergeSort.lisp; enter 5; enter 5 4 3 2 1

(defun readList(n) 
	 (setf arr (make-array n))
	 (format t "Enter the elements ~&")
	 (dotimes (x n t)
		(setf (aref arr x) (read))))

(defun printList(n)
	(dotimes (x n t)
        (print (aref arr x))))

(defun merge_ (p q r)
	(setf n1 (+ (- q p) 1))
	(setf n2 (- r q))	
	(setf l_arr (make-array n1))
	(setf r_arr (make-array n2))
	(do ((i 0 (+ i 1))) ((= i n1))
		(setf (aref l_arr i) (aref arr (+ p i)))
		)
	(do ((j 0 (+ j 1))) ((= j n2))
		(setf (aref r_arr j) (aref arr (+ (+ q j) 1)))
		)
	(setf i 0)
	(setf j 0)
	(setf k p)
	(do () ((or (= i n1)(= j n2)))
		(if (<= (aref l_arr i) (aref r_arr j))
			(progn
			(setf (aref arr k) (aref l_arr i))
			(setf i (+ i 1))
			)
			(progn
			(setf (aref arr k) (aref r_arr j))
			(setf j (+ j 1)))) 
			(setf k (+ k 1)))
	(do () ((= i n1))
		(setf (aref arr k) (aref l_arr i))
		(setf i (+ i 1))
		(setf k (+ k 1)))
	(do () ((= j n2))
		(setf (aref arr k) (aref r_arr j))
		(setf j (+ j 1))
		(setf k (+ k 1))))


(defun mergeSort(p r)
	(if (< p r)
		(progn
		(setf temp (+ p r))
		(setf q (floor (/ temp 2)))
		(mergeSort p q)
		(mergeSort (+ q 1) r)
		
		(merge_ p q r))))

(defun main()
	(princ "Enter the number of elements: ")
	(setq n (read))
	(readList n)
	(format t "Unsorted List~%")
	(printList n)
	(mergeSort 0 (- n 1))
	(format t "Sorted List:~%")
	(printList n))

(main)

