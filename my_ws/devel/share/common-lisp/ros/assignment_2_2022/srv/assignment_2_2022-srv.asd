
(cl:in-package :asdf)

(defsystem "assignment_2_2022-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "GoalCount" :depends-on ("_package_GoalCount"))
    (:file "_package_GoalCount" :depends-on ("_package"))
  ))