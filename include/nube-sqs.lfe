(eval-when-compile
  (defun get-api-funcs ()
    '((add-permission 3) (add-permission 4)
      (change-message-visibility 3) (change-message-visibility 4)
      (create-queue 1) (create-queue 2) (create-queue 3)
      (delete-message 2) (delete-message 3)
      (delete-queue 1) (delete-queue 2)
      (get-queue-attributes 1) (get-queue-attributes 2) (get-queue-attributes 3)
      (list-queues 0) (list-queues 1) (list-queues 2)
      (receive-message 1) (receive-message 2) (receive-message 3) (receive-message 4)
      (receive-message 5) (receive-message 6)
      (remove-permission 2) (remove-permission 3)
      (send-message 2) (send-message 3) (send-message 4)
      (set-queue-attributes 2) (set-queue-attributes 3))))

(defmacro generate-api ()
  `(progn ,@(kla:make-funcs (get-api-funcs) 'erlcloud_sqs)))

(generate-api)
