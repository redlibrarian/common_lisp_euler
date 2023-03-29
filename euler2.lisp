;Each new term in the Fibonacci sequence is generated by adding the previous two terms. By starting with 1 and 2, the first 10 terms will be:
;1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
;By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.

(defun fib (x)
 (if (<= x 1)
     x
     (+ (fib (- x 1)) (fib (- x 2)))))

(defun fib-series ()
  (let ((i 1) (fibs '()))
    (loop until (> (fib i) 4000000)
          do (progn
             (incf i)
             (push (fib i) fibs)))
    fibs))

(reduce #'+ (remove-if-not #'evenp (fib-series)))
