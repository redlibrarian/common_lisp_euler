
(defun multiples (x)
  (or (zerop (mod x 3)) (zerop (mod x 5))))

(defun create-range (start end)
  (remove-if-not #'multiples (loop for i from start below end collect i)))

(defun euler1 (start end)
  "Find the sum of all the multiples of 3 or 5 below 1000. Syntax: (euler1 1 1000)"
  (reduce #'+ (create-range start end)))



