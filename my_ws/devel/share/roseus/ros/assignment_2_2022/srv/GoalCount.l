;; Auto-generated. Do not edit!


(when (boundp 'assignment_2_2022::GoalCount)
  (if (not (find-package "ASSIGNMENT_2_2022"))
    (make-package "ASSIGNMENT_2_2022"))
  (shadow 'GoalCount (find-package "ASSIGNMENT_2_2022")))
(unless (find-package "ASSIGNMENT_2_2022::GOALCOUNT")
  (make-package "ASSIGNMENT_2_2022::GOALCOUNT"))
(unless (find-package "ASSIGNMENT_2_2022::GOALCOUNTREQUEST")
  (make-package "ASSIGNMENT_2_2022::GOALCOUNTREQUEST"))
(unless (find-package "ASSIGNMENT_2_2022::GOALCOUNTRESPONSE")
  (make-package "ASSIGNMENT_2_2022::GOALCOUNTRESPONSE"))

(in-package "ROS")





(defclass assignment_2_2022::GoalCountRequest
  :super ros::object
  :slots ())

(defmethod assignment_2_2022::GoalCountRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass assignment_2_2022::GoalCountResponse
  :super ros::object
  :slots (_reached _cancelled ))

(defmethod assignment_2_2022::GoalCountResponse
  (:init
   (&key
    ((:reached __reached) 0)
    ((:cancelled __cancelled) 0)
    )
   (send-super :init)
   (setq _reached (round __reached))
   (setq _cancelled (round __cancelled))
   self)
  (:reached
   (&optional __reached)
   (if __reached (setq _reached __reached)) _reached)
  (:cancelled
   (&optional __cancelled)
   (if __cancelled (setq _cancelled __cancelled)) _cancelled)
  (:serialization-length
   ()
   (+
    ;; uint32 _reached
    4
    ;; uint32 _cancelled
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _reached
       (write-long _reached s)
     ;; uint32 _cancelled
       (write-long _cancelled s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _reached
     (setq _reached (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _cancelled
     (setq _cancelled (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass assignment_2_2022::GoalCount
  :super ros::object
  :slots ())

(setf (get assignment_2_2022::GoalCount :md5sum-) "c67511bea917dd86becf126baeb0026c")
(setf (get assignment_2_2022::GoalCount :datatype-) "assignment_2_2022/GoalCount")
(setf (get assignment_2_2022::GoalCount :request) assignment_2_2022::GoalCountRequest)
(setf (get assignment_2_2022::GoalCount :response) assignment_2_2022::GoalCountResponse)

(defmethod assignment_2_2022::GoalCountRequest
  (:response () (instance assignment_2_2022::GoalCountResponse :init)))

(setf (get assignment_2_2022::GoalCountRequest :md5sum-) "c67511bea917dd86becf126baeb0026c")
(setf (get assignment_2_2022::GoalCountRequest :datatype-) "assignment_2_2022/GoalCountRequest")
(setf (get assignment_2_2022::GoalCountRequest :definition-)
      "---
uint32 reached
uint32 cancelled

")

(setf (get assignment_2_2022::GoalCountResponse :md5sum-) "c67511bea917dd86becf126baeb0026c")
(setf (get assignment_2_2022::GoalCountResponse :datatype-) "assignment_2_2022/GoalCountResponse")
(setf (get assignment_2_2022::GoalCountResponse :definition-)
      "---
uint32 reached
uint32 cancelled

")



(provide :assignment_2_2022/GoalCount "c67511bea917dd86becf126baeb0026c")


