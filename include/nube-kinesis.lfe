(eval-when-compile
  (defun get-api-funcs ()
    '((create-stream 2) (create-stream 3)
      (delete-stream 1) (delete-stream 2)
      (list-streams 0) (list-streams 1) (list-streams 2) (list-streams 3)
      (describe-stream 1) (describe-stream 2) (describe-stream 3) (describe-stream 4)
      (get-shard-iterator 3) (get-shard-iterator 4) (get-shard-iterator 5)
      (get-records 1) (get-records 2) (get-records 3)
      (put-record 3) (put-record 4) (put-record 5) (put-record 6)
      (merge-shards 3) (merge-shards 4)
      (split-shards 3) (split-shards 4))))

(defmacro generate-api ()
  `(progn ,@(kla:make-funcs (get-api-funcs) 'erlcloud_kinesis)))

(generate-api)
