
"use strict";

let SetKinematicsPose = require('./SetKinematicsPose.js')
let SetActuatorState = require('./SetActuatorState.js')
let GetKinematicsPose = require('./GetKinematicsPose.js')
let SetJointPosition = require('./SetJointPosition.js')
let SetDrawingTrajectory = require('./SetDrawingTrajectory.js')
let GetJointPosition = require('./GetJointPosition.js')

module.exports = {
  SetKinematicsPose: SetKinematicsPose,
  SetActuatorState: SetActuatorState,
  GetKinematicsPose: GetKinematicsPose,
  SetJointPosition: SetJointPosition,
  SetDrawingTrajectory: SetDrawingTrajectory,
  GetJointPosition: GetJointPosition,
};
