(include-lib "erlcloud/include/erlcloud_ec2.hrl")

(eval-when-compile
  (defun get-api-funcs ()
    '(
      ;; AMIs
      (create-image 2) (create-image 3) (create-image 4) (create-image 5)
      (deregister-image 1) (deregister-image 2)
      (describe-image-attribute 2) (describe-image-attribute 3)
      (describe-images 0) (describe-images 1) (describe-images 2)
      (describe-images 3) (describe-images 4)
      (modify-image-attribute 3) (modify-image-attribute 4)

      ;; Availability Zones and Regions
      (describe-availability-zones 0) (describe-availability-zones 1)
      (describe-availability-zones 2)
      (describe-regions 0) (describe-regions 1) (describe-regions 2)

      ;; Elastic Block Store
      (attach-volume 3) (attach-volume 4)
      (create-snapshot 1) (create-snapshot 2) (create-snapshot 3)
      (create-volume 3) (create-volume 4)
      (delete-snapshot 1) (delete-snapshot 2)
      (delete-volume 1) (delete-volume 2)
      (describe-snapshot-attribute 2) (describe-snapshot-attribute 3)
      (describe-snapshots 0) (describe-snapshots 1) (describe-snapshots 2)
      (describe-snapshots 3) (describe-snapshots 4)
      (describe-volumes 0) (describe-volumes 1) (describe-volumes 2)
      (detach-volume 1) (detach-volume 2)
      (modify-snapshot-attribute 3) (modify-snapshot-attribute 4)
      (reset-snapshot-attribute 2) (reset-snapshot-attribute 3)

      ;; Elastic IP addresses
      (allocate-address 0) (allocate-address 1)
      (associate-address 2) (associate-address 3)
      (describe-addresses 0) (describe-addresses 1) (describe-addresses 2)
      (disassociate-address 1) (disassociate-address 2)
      (release-address 1) (release-address 2)

      ;; General
      (get-console-output 1) (get-console-output 2)

      ;; Images
      (register-image 1) (register-image 2)
      (reset-image-attribute 2) (reset-image-attribute 3)

      ;; Instances
      (describe-instance-attribute 2) (describe-instance-attribute 3)
      (describe-instances 0) (describe-instances 1) (describe-instances 2)
      (modify-instance-attribute 3) (modify-instance-attribute 4) (modify-instance-attribute 5)
      (reboot-instances 1) (reboot-instances 2)
      (reset-instance-attribute 2) (reset-instance-attribute 3)
      (run-instances 1) (run-instances 2)
      (start-instances 1) (start-instances 2)
      (stop-instances 1) (stop-instances 2)
      (terminate-instances 1) (terminate-instances 2)
      (describe-instance-status 1) (describe-instance-status 2) (describe-instance-status 3)

      ;; Keypairs
      (create-key-pair 1) (create-key-pair 2)
      (delete-key-pair 1) (delete-key-pair 2)
      (describe-key-pairs 0) (describe-key-pairs 1) (describe-key-pairs 2)

      ;; Monitoring
      (monitor-instances 1) (monitor-instances 2)
      (unmonitor-instances 1) (unmonitor-instances 2)

      ;; Network interfaces
      (describe-network-interfaces 0) (describe-network-interfaces 1)
      (describe-network-interfaces 2)
      (describe-network-interfaces-filtered 3)

      ;; Reserved instances
      (describe-reserved-instances 0) (describe-reserved-instances 1)
      (describe-reserved-instances 2)
      (describe-reserved-instances-offerings 0)
      (describe-reserved-instances-offerings 1)
      (describe-reserved-instances-offerings 2)
      (purchase-reserved-instances-offering 1)
      (purchase-reserved-instances-offering 2)

      ;; Security groups
      (authorize-security-group-ingress 2) (authorize-security-group-ingress 3)
      (create-security-group 2) (create-security-group 3) (create-security-group 4)
      (delete-security-group 1) (delete-security-group 2) (delete-security-group 3)
      (describe-security-groups 0) (describe-security-groups 1) (describe-security-groups 2)
      (describe-security-groups-filtered 1) (describe-security-groups-filtered 2)
      (revoke-security-group-ingress 2) (revoke-security-group-ingress 3)

      ;; Spot instances
      (cancel-spot-instance-requests 1) (cancel-spot-instance-requests 2)
      (create-spot-datafeed-subscription 1) (create-spot-datafeed-subscription 2)
      (create-spot-datafeed-subscription 3)
      (delete-spot-datafeed-subscription 0) (delete-spot-datafeed-subscription 1)
      (describe-spot-datafeed-subscription 0) (describe-spot-datafeed-subscription 1)
      (describe-spot-instance-requests 0) (describe-spot-instance-requests 1)
      (describe-spot-instance-requests 2)
      (describe-spot-price-history 0) (describe-spot-price-history 1)
      (describe-spot-price-history 2) (describe-spot-price-history 3)
      (describe-spot-price-history 5)
      (request-spot-instances 1) (request-spot-instances 2)

      ;; Windows
      (bundle-instance 6) (bundle-instance 7)
      (cancel-bundle-task 1) (cancel-bundle-task 2)
      (describe-bundle-tasks 0) (describe-bundle-tasks 1) (describe-bundle-tasks 2)
      (get-password-data 1) (get-password-data 2)

      ;; VPC
      (describe-subnets 0) (describe-subnets 1) (describe-subnets 2)
      (create-subnet 2) (create-subnet 3) (create-subnet 4)
      (delete-subnet 1) (delete-subnet 2)
      (describe-vpcs 0) (describe-vpcs 1) (describe-vpcs 2)
      (create-vpc 1) (create-vpc 2) (create-vpc 3)
      (delete-vpc 1) (delete-vpc 2)
      (describe-dhcp-options 0) (describe-dhcp-options 1) (describe-dhcp-options 2)
      (associate-dhcp-options 2) (associate-dhcp-options 3)
      (describe-internet-gateways 0) (describe-internet-gateways 1)
      (describe-internet-gateways 2)
      (create-internet-gateway 0) (create-internet-gateway 1)
      (attach-internet-gateway 2) (attach-internet-gateway 3)
      (delete-internet-gateway 1) (delete-internet-gateway 2)
      (detach-internet-gateway 2) (detach-internet-gateway 3)
      (describe-route-tables 0) (describe-route-tables 1) (describe-route-tables 2)
      (create-route-table 1) (create-route-table 2)
      (delete-route-table 1) (delete-route-table 2)
      (create-route 4) (create-route 5) (delete-route 2) (delete-route 3)
      (associate-route-table 2) (asssociate-route-table 3)

      ;; VPN/Network ACLs
      (create-network-acl 1) (create-network-acl 2)
      (delete-network-acl 1) (delete-network-acl 2)
      (describe-network-acls 0) (describe-network-acls 1) (describe-network-acls 2)
      (create-network-acl-entry 1) (create-network-acl-entry 2)
      (delete-network-acl-entry 2) (delete-network-acl-entry 3) (delete-network-acl-entry 4)
      (replace-network-acl-association 2) (replace-network-acl-association 3)

      ;; Tagging
      (create-tags 2) (create-tags 3)
      (describe-tags 0) (describe-tags 1) (describe-tags 2))))

(defmacro generate-api ()
  `(progn ,@(kla:make-funcs (get-api-funcs) 'erlcloud_ec2)))

(generate-api)

(defun loaded ()
  'loaded)
