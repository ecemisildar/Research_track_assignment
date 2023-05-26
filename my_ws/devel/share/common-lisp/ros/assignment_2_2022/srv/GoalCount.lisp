; Auto-generated. Do not edit!


(cl:in-package assignment_2_2022-srv)


;//! \htmlinclude GoalCount-request.msg.html

(cl:defclass <GoalCount-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GoalCount-request (<GoalCount-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GoalCount-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GoalCount-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name assignment_2_2022-srv:<GoalCount-request> is deprecated: use assignment_2_2022-srv:GoalCount-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GoalCount-request>) ostream)
  "Serializes a message object of type '<GoalCount-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GoalCount-request>) istream)
  "Deserializes a message object of type '<GoalCount-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GoalCount-request>)))
  "Returns string type for a service object of type '<GoalCount-request>"
  "assignment_2_2022/GoalCountRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GoalCount-request)))
  "Returns string type for a service object of type 'GoalCount-request"
  "assignment_2_2022/GoalCountRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GoalCount-request>)))
  "Returns md5sum for a message object of type '<GoalCount-request>"
  "c67511bea917dd86becf126baeb0026c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GoalCount-request)))
  "Returns md5sum for a message object of type 'GoalCount-request"
  "c67511bea917dd86becf126baeb0026c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GoalCount-request>)))
  "Returns full string definition for message of type '<GoalCount-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GoalCount-request)))
  "Returns full string definition for message of type 'GoalCount-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GoalCount-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GoalCount-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GoalCount-request
))
;//! \htmlinclude GoalCount-response.msg.html

(cl:defclass <GoalCount-response> (roslisp-msg-protocol:ros-message)
  ((reached
    :reader reached
    :initarg :reached
    :type cl:integer
    :initform 0)
   (cancelled
    :reader cancelled
    :initarg :cancelled
    :type cl:integer
    :initform 0))
)

(cl:defclass GoalCount-response (<GoalCount-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GoalCount-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GoalCount-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name assignment_2_2022-srv:<GoalCount-response> is deprecated: use assignment_2_2022-srv:GoalCount-response instead.")))

(cl:ensure-generic-function 'reached-val :lambda-list '(m))
(cl:defmethod reached-val ((m <GoalCount-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader assignment_2_2022-srv:reached-val is deprecated.  Use assignment_2_2022-srv:reached instead.")
  (reached m))

(cl:ensure-generic-function 'cancelled-val :lambda-list '(m))
(cl:defmethod cancelled-val ((m <GoalCount-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader assignment_2_2022-srv:cancelled-val is deprecated.  Use assignment_2_2022-srv:cancelled instead.")
  (cancelled m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GoalCount-response>) ostream)
  "Serializes a message object of type '<GoalCount-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reached)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reached)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'reached)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'reached)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cancelled)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'cancelled)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'cancelled)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'cancelled)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GoalCount-response>) istream)
  "Deserializes a message object of type '<GoalCount-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reached)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reached)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'reached)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'reached)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cancelled)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'cancelled)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'cancelled)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'cancelled)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GoalCount-response>)))
  "Returns string type for a service object of type '<GoalCount-response>"
  "assignment_2_2022/GoalCountResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GoalCount-response)))
  "Returns string type for a service object of type 'GoalCount-response"
  "assignment_2_2022/GoalCountResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GoalCount-response>)))
  "Returns md5sum for a message object of type '<GoalCount-response>"
  "c67511bea917dd86becf126baeb0026c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GoalCount-response)))
  "Returns md5sum for a message object of type 'GoalCount-response"
  "c67511bea917dd86becf126baeb0026c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GoalCount-response>)))
  "Returns full string definition for message of type '<GoalCount-response>"
  (cl:format cl:nil "uint32 reached~%uint32 cancelled~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GoalCount-response)))
  "Returns full string definition for message of type 'GoalCount-response"
  (cl:format cl:nil "uint32 reached~%uint32 cancelled~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GoalCount-response>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GoalCount-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GoalCount-response
    (cl:cons ':reached (reached msg))
    (cl:cons ':cancelled (cancelled msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GoalCount)))
  'GoalCount-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GoalCount)))
  'GoalCount-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GoalCount)))
  "Returns string type for a service object of type '<GoalCount>"
  "assignment_2_2022/GoalCount")