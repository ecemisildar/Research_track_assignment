// Auto-generated. Do not edit!

// (in-package assignment_2_2022.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class GoalCountRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GoalCountRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GoalCountRequest
    let len;
    let data = new GoalCountRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'assignment_2_2022/GoalCountRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GoalCountRequest(null);
    return resolved;
    }
};

class GoalCountResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.reached = null;
      this.cancelled = null;
    }
    else {
      if (initObj.hasOwnProperty('reached')) {
        this.reached = initObj.reached
      }
      else {
        this.reached = 0;
      }
      if (initObj.hasOwnProperty('cancelled')) {
        this.cancelled = initObj.cancelled
      }
      else {
        this.cancelled = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GoalCountResponse
    // Serialize message field [reached]
    bufferOffset = _serializer.uint32(obj.reached, buffer, bufferOffset);
    // Serialize message field [cancelled]
    bufferOffset = _serializer.uint32(obj.cancelled, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GoalCountResponse
    let len;
    let data = new GoalCountResponse(null);
    // Deserialize message field [reached]
    data.reached = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [cancelled]
    data.cancelled = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'assignment_2_2022/GoalCountResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c67511bea917dd86becf126baeb0026c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 reached
    uint32 cancelled
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GoalCountResponse(null);
    if (msg.reached !== undefined) {
      resolved.reached = msg.reached;
    }
    else {
      resolved.reached = 0
    }

    if (msg.cancelled !== undefined) {
      resolved.cancelled = msg.cancelled;
    }
    else {
      resolved.cancelled = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: GoalCountRequest,
  Response: GoalCountResponse,
  md5sum() { return 'c67511bea917dd86becf126baeb0026c'; },
  datatype() { return 'assignment_2_2022/GoalCount'; }
};
