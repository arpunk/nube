(eval-when-compile
  (defun get-api-funcs ()
    '((create-load-balancer 3) (create-load-balancer 4) (create-load-balancer 5)
      (delete-load-balancer 1) (delete-load-balancer 2)
      (register-instance 2) (register-instance 3)
      (deregister-instance 2) (deregister-instance 3)
      (describe-load-balancer 1) (describe-load-balancer 2)
      (describe-load-balancers 1) (describe-load-balancers 2)
      (configure-health-check 2) (configure-health-check 3))))

(defmacro generate-api ()
  `(progn ,@(kla:make-funcs (get-api-funcs) 'erlcloud_elb)))

(generate-api)
