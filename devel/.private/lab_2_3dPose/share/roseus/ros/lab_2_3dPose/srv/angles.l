;; Auto-generated. Do not edit!


(when (boundp 'lab_2_3dPose::angles)
  (if (not (find-package "LAB_2_3DPOSE"))
    (make-package "LAB_2_3DPOSE"))
  (shadow 'angles (find-package "LAB_2_3DPOSE")))
(unless (find-package "LAB_2_3DPOSE::ANGLES")
  (make-package "LAB_2_3DPOSE::ANGLES"))
(unless (find-package "LAB_2_3DPOSE::ANGLESREQUEST")
  (make-package "LAB_2_3DPOSE::ANGLESREQUEST"))
(unless (find-package "LAB_2_3DPOSE::ANGLESRESPONSE")
  (make-package "LAB_2_3DPOSE::ANGLESRESPONSE"))

(in-package "ROS")





(defclass lab_2_3dPose::anglesRequest
  :super ros::object
  :slots (_a _b _c _format ))

(defmethod lab_2_3dPose::anglesRequest
  (:init
   (&key
    ((:a __a) 0.0)
    ((:b __b) 0.0)
    ((:c __c) 0.0)
    ((:format __format) "")
    )
   (send-super :init)
   (setq _a (float __a))
   (setq _b (float __b))
   (setq _c (float __c))
   (setq _format (string __format))
   self)
  (:a
   (&optional __a)
   (if __a (setq _a __a)) _a)
  (:b
   (&optional __b)
   (if __b (setq _b __b)) _b)
  (:c
   (&optional __c)
   (if __c (setq _c __c)) _c)
  (:format
   (&optional __format)
   (if __format (setq _format __format)) _format)
  (:serialization-length
   ()
   (+
    ;; float64 _a
    8
    ;; float64 _b
    8
    ;; float64 _c
    8
    ;; string _format
    4 (length _format)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _a
       (sys::poke _a (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _b
       (sys::poke _b (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _c
       (sys::poke _c (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; string _format
       (write-long (length _format) s) (princ _format s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _a
     (setq _a (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _b
     (setq _b (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _c
     (setq _c (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; string _format
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _format (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass lab_2_3dPose::anglesResponse
  :super ros::object
  :slots (_qx _qy _qz _qw ))

(defmethod lab_2_3dPose::anglesResponse
  (:init
   (&key
    ((:qx __qx) 0.0)
    ((:qy __qy) 0.0)
    ((:qz __qz) 0.0)
    ((:qw __qw) 0.0)
    )
   (send-super :init)
   (setq _qx (float __qx))
   (setq _qy (float __qy))
   (setq _qz (float __qz))
   (setq _qw (float __qw))
   self)
  (:qx
   (&optional __qx)
   (if __qx (setq _qx __qx)) _qx)
  (:qy
   (&optional __qy)
   (if __qy (setq _qy __qy)) _qy)
  (:qz
   (&optional __qz)
   (if __qz (setq _qz __qz)) _qz)
  (:qw
   (&optional __qw)
   (if __qw (setq _qw __qw)) _qw)
  (:serialization-length
   ()
   (+
    ;; float64 _qx
    8
    ;; float64 _qy
    8
    ;; float64 _qz
    8
    ;; float64 _qw
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _qx
       (sys::poke _qx (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _qy
       (sys::poke _qy (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _qz
       (sys::poke _qz (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _qw
       (sys::poke _qw (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _qx
     (setq _qx (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _qy
     (setq _qy (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _qz
     (setq _qz (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _qw
     (setq _qw (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass lab_2_3dPose::angles
  :super ros::object
  :slots ())

(setf (get lab_2_3dPose::angles :md5sum-) "35dcb077bd4d3a7b8310b2de38d338fd")
(setf (get lab_2_3dPose::angles :datatype-) "lab_2_3dPose/angles")
(setf (get lab_2_3dPose::angles :request) lab_2_3dPose::anglesRequest)
(setf (get lab_2_3dPose::angles :response) lab_2_3dPose::anglesResponse)

(defmethod lab_2_3dPose::anglesRequest
  (:response () (instance lab_2_3dPose::anglesResponse :init)))

(setf (get lab_2_3dPose::anglesRequest :md5sum-) "35dcb077bd4d3a7b8310b2de38d338fd")
(setf (get lab_2_3dPose::anglesRequest :datatype-) "lab_2_3dPose/anglesRequest")
(setf (get lab_2_3dPose::anglesRequest :definition-)
      "float64 a
float64 b
float64 c
string format
---
float64 qx
float64 qy
float64 qz
float64 qw
")

(setf (get lab_2_3dPose::anglesResponse :md5sum-) "35dcb077bd4d3a7b8310b2de38d338fd")
(setf (get lab_2_3dPose::anglesResponse :datatype-) "lab_2_3dPose/anglesResponse")
(setf (get lab_2_3dPose::anglesResponse :definition-)
      "float64 a
float64 b
float64 c
string format
---
float64 qx
float64 qy
float64 qz
float64 qw
")



(provide :lab_2_3dPose/angles "35dcb077bd4d3a7b8310b2de38d338fd")


