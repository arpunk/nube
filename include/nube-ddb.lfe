(include-lib "erlcloud/include/erlcloud_ddb.hrl")

(eval-when-compile
  (defun get-api-funcs ()
    '((batch-get-item 1) (batch-get-item 2) (batch-get-item 3)
      (batch-write-item 1) (batch-write-item 2) (batch-write-item 3)
      (create-table 5) (create-table 6) (create-table 7)
      (delete-item 2) (delete-item 3) (delete-item 4)
      (delete-table 1) (delete-table 2) (delete-table 3)
      (get-item 2) (get-item 3) (get-item 4)
      (list-tables 0) (list-tables 1) (list-tables 2)
      (put-item 2) (put-item 3) (put-item 4)
      ;; Queries
      (q 2) (q 3) (q 4)
      (scan 1) (scan 2) (scan 3)
      (update-item 3) (update-item 4) (update-item 5)
      (update-table 3) (update-table 4) (update-table 5))))

(defmacro generate-api ()
  `(progn ,@(kla:make-funcs (get-api-funcs) 'erlcloud_ddb2)))

(generate-api)
