;; Auto-generated. Do not edit!


(when (boundp 'assignment_2_2022::RobotState)
  (if (not (find-package "ASSIGNMENT_2_2022"))
    (make-package "ASSIGNMENT_2_2022"))
  (shadow 'RobotState (find-package "ASSIGNMENT_2_2022")))
(unless (find-package "ASSIGNMENT_2_2022::ROBOTSTATE")
  (make-package "ASSIGNMENT_2_2022::ROBOTSTATE"))

(in-package "ROS")
;;//! \htmlinclude RobotState.msg.html


(defclass assignment_2_2022::RobotState
  :super ros::object
  :slots (_x _y _linear_vel _angular_vel ))

(defmethod assignment_2_2022::RobotState
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:linear_vel __linear_vel) 0.0)
    ((:angular_vel __angular_vel) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _linear_vel (float __linear_vel))
   (setq _angular_vel (float __angular_vel))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:linear_vel
   (&optional __linear_vel)
   (if __linear_vel (setq _linear_vel __linear_vel)) _linear_vel)
  (:angular_vel
   (&optional __angular_vel)
   (if __angular_vel (setq _angular_vel __angular_vel)) _angular_vel)
  (:serialization-length
   ()
   (+
    ;; float32 _x
    4
    ;; float32 _y
    4
    ;; float32 _linear_vel
    4
    ;; float32 _angular_vel
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _linear_vel
       (sys::poke _linear_vel (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _angular_vel
       (sys::poke _angular_vel (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _linear_vel
     (setq _linear_vel (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _angular_vel
     (setq _angular_vel (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get assignment_2_2022::RobotState :md5sum-) "e3f84c78187b4b315d1348ed62c074b8")
(setf (get assignment_2_2022::RobotState :datatype-) "assignment_2_2022/RobotState")
(setf (get assignment_2_2022::RobotState :definition-)
      "float32 x
float32 y
float32 linear_vel
float32 angular_vel

")



(provide :assignment_2_2022/RobotState "e3f84c78187b4b315d1348ed62c074b8")


