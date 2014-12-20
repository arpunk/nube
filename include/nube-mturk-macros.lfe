(eval-when-compile
  (defun get-api-funcs ()
    '((approve-assignment 2) (approve-assignment 3)
      (assign-qualification 2) (assign-qualification 3)
      (assign-qualification 4) (assign-qualification 5)
      (block-worker 2) (block-worker 3)
      (change-hit-type-of-hit 2) (change-hit-type-of-hit 3)
      (create-hit 5) (create-hit 6) (create-hit 1) (create-hit 2)
      (create-qualification-type 1) (create-qualification-type 2)
      (disable-hit 1) (disable-hit 2)
      (dispose-hit 1) (dispose-hit 2)
      (dispose-qualification-type 1) (dispose-qualification-type 2)
      (extend-hit 3) (extend-hit 4)
      (force-expire-hit 1) (force-expire-hit 2)
      (get-account-balance 0) (get-account-balance 1)
      (get-assignments-for-hit 1) (get-assignments-for-hit 2) (get-assignments-for-hit 3)
      (get-bonus-payments-for-hit 2) (get-bonus-payments-for-hit 3)
      (get-bonus-payments-for-assignment 2) (get-bonus-payments-for-assignment 3)
      (get-file-upload-url 2) (get-file-upload-url 3)
      (get-hit 1) (get-hit 2)
      (get-hits-for-qualification-type 1) (get-hits-for-qualification-type 2)
      (get-hits-for-qualification-type 3)
      (get-qualification-requests 0) (get-qualification-requests 1)
      (get-qualification-requests 2)
      (get-qualification-score 2) (get-qualification-score 3)
      (get-qualification-type 1) (get-qualification-type 2)
      (get-qualifications-for-qualification-type 1)
      (get-qualifications-for-qualification-type 2)
      (get-qualifications-for-qualification-type 3)
      (get-requester-statistic 2) (get-requester-statistic 3)
      (get-requester-statistic 4)
      (get-reviewable-hits 0) (get-reviewable-hits 1) (get-reviewable-hits 2)
      (grant-bonus 4) (grant-bonus 5)
      (grant-qualification 1) (grant-qualification 2) (grant-qualification 3)
      (notify-workers 3) (notify-workers 4)
      (register-hit-type 1) (register-hit-type 2)
      (reject-assignment 1) (reject-assignment 2) (reject-assignment 3)
      (reject-qualification-request 1) (reject-qualification-request 2)
      (reject-qualification-request 3)
      (revoke-qualification 2) (revoke-qualification 3) (revoke-qualification 4)
      (search-hits 0) (search-hits 1) (search-hits 2)
      (search-qualification-types 0) (search-qualification-types 1)
      (search-qualification-types 2)
      (send-test-event-notification 2) (send-test-event-notification 3)
      (set-hit-as-reviewing 1) (set-hit-as-reviewing 2) (set-hit-as-reviewing 3)
      (set-hit-type-notification 2) (set-hit-type-notification 3)
      (set-hit-type-notification 4)
      (unblock-worker 1) (unblock-worker 2)
      (update-qualification-score 3) (update-qualification-score 4)
      (update-qualification-type 1) (update-qualification-type 2))))

(defmacro generate-api ()
  `(progn ,@(kla:make-funcs (get-api-funcs) 'erlcloud_mturk)))

(generate-api)
