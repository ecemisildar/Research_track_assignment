// Auto-generated. Do not edit!

// (in-package assignment_2_2022.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class RobotState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.x = null;
      this.y = null;
      this.linear_vel = null;
      this.angular_vel = null;
    }
    else {
      if (initObj.hasOwnProperty('x')) {
        this.x = initObj.x
      }
      else {
        this.x = 0.0;
      }
      if (initObj.hasOwnProperty('y')) {
        this.y = initObj.y
      }
      else {
        this.y = 0.0;
      }
      if (initObj.hasOwnProperty('linear_vel')) {
        this.linear_vel = initObj.linear_vel
      }
      else {
        this.linear_vel = 0.0;
      }
      if (initObj.hasOwnProperty('angular_vel')) {
        this.angular_vel = initObj.angular_vel
      }
      else {
        this.angular_vel = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RobotState
    // Serialize message field [x]
    bufferOffset = _serializer.float32(obj.x, buffer, bufferOffset);
    // Serialize message field [y]
    bufferOffset = _serializer.float32(obj.y, buffer, bufferOffset);
    // Serialize message field [linear_vel]
    bufferOffset = _serializer.float32(obj.linear_vel, buffer, bufferOffset);
    // Serialize message field [angular_vel]
    bufferOffset = _serializer.float32(obj.angular_vel, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RobotState
    let len;
    let data = new RobotState(null);
    // Deserialize message field [x]
    data.x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [y]
    data.y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [linear_vel]
    data.linear_vel = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [angular_vel]
    data.angular_vel = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'assignment_2_2022/RobotState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e3f84c78187b4b315d1348ed62c074b8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 x
    float32 y
    float32 linear_vel
    float32 angular_vel
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RobotState(null);
    if (msg.x !== undefined) {
      resolved.x = msg.x;
    }
    else {
      resolved.x = 0.0
    }

    if (msg.y !== undefined) {
      resolved.y = msg.y;
    }
    else {
      resolved.y = 0.0
    }

    if (msg.linear_vel !== undefined) {
      resolved.linear_vel = msg.linear_vel;
    }
    else {
      resolved.linear_vel = 0.0
    }

    if (msg.angular_vel !== undefined) {
      resolved.angular_vel = msg.angular_vel;
    }
    else {
      resolved.angular_vel = 0.0
    }

    return resolved;
    }
};

module.exports = RobotState;
