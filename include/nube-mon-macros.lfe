(eval-when-compile
  (defun get-api-funcs ()
    '((list-metrics 4)
      (put-metric-data 2) (put-metric-data 5)
      (get-metric-statistics 8)
      (configure-host 3)
      (test 0) (test2 0))))

(defmacro generate-api ()
  `(progn ,@(kla:make-funcs (get-api-funcs) 'erlcloud_mon)))

(generate-api)
