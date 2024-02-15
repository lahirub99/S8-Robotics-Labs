
(cl:in-package :asdf)

(defsystem "lab_2_3dPose-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "angles" :depends-on ("_package_angles"))
    (:file "_package_angles" :depends-on ("_package"))
  ))