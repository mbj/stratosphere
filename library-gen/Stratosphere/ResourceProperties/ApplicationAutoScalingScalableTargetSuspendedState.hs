{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalabletarget-suspendedstate.html

module Stratosphere.ResourceProperties.ApplicationAutoScalingScalableTargetSuspendedState where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- ApplicationAutoScalingScalableTargetSuspendedState. See
-- 'applicationAutoScalingScalableTargetSuspendedState' for a more
-- convenient constructor.
data ApplicationAutoScalingScalableTargetSuspendedState =
  ApplicationAutoScalingScalableTargetSuspendedState
  { _applicationAutoScalingScalableTargetSuspendedStateDynamicScalingInSuspended :: Maybe (Val Bool)
  , _applicationAutoScalingScalableTargetSuspendedStateDynamicScalingOutSuspended :: Maybe (Val Bool)
  , _applicationAutoScalingScalableTargetSuspendedStateScheduledScalingSuspended :: Maybe (Val Bool)
  } deriving (Show, Eq)

instance ToJSON ApplicationAutoScalingScalableTargetSuspendedState where
  toJSON ApplicationAutoScalingScalableTargetSuspendedState{..} =
    object $
    catMaybes
    [ fmap (("DynamicScalingInSuspended",) . toJSON) _applicationAutoScalingScalableTargetSuspendedStateDynamicScalingInSuspended
    , fmap (("DynamicScalingOutSuspended",) . toJSON) _applicationAutoScalingScalableTargetSuspendedStateDynamicScalingOutSuspended
    , fmap (("ScheduledScalingSuspended",) . toJSON) _applicationAutoScalingScalableTargetSuspendedStateScheduledScalingSuspended
    ]

-- | Constructor for 'ApplicationAutoScalingScalableTargetSuspendedState'
-- containing required fields as arguments.
applicationAutoScalingScalableTargetSuspendedState
  :: ApplicationAutoScalingScalableTargetSuspendedState
applicationAutoScalingScalableTargetSuspendedState  =
  ApplicationAutoScalingScalableTargetSuspendedState
  { _applicationAutoScalingScalableTargetSuspendedStateDynamicScalingInSuspended = Nothing
  , _applicationAutoScalingScalableTargetSuspendedStateDynamicScalingOutSuspended = Nothing
  , _applicationAutoScalingScalableTargetSuspendedStateScheduledScalingSuspended = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalabletarget-suspendedstate.html#cfn-applicationautoscaling-scalabletarget-suspendedstate-dynamicscalinginsuspended
aasstssDynamicScalingInSuspended :: Lens' ApplicationAutoScalingScalableTargetSuspendedState (Maybe (Val Bool))
aasstssDynamicScalingInSuspended = lens _applicationAutoScalingScalableTargetSuspendedStateDynamicScalingInSuspended (\s a -> s { _applicationAutoScalingScalableTargetSuspendedStateDynamicScalingInSuspended = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalabletarget-suspendedstate.html#cfn-applicationautoscaling-scalabletarget-suspendedstate-dynamicscalingoutsuspended
aasstssDynamicScalingOutSuspended :: Lens' ApplicationAutoScalingScalableTargetSuspendedState (Maybe (Val Bool))
aasstssDynamicScalingOutSuspended = lens _applicationAutoScalingScalableTargetSuspendedStateDynamicScalingOutSuspended (\s a -> s { _applicationAutoScalingScalableTargetSuspendedStateDynamicScalingOutSuspended = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalabletarget-suspendedstate.html#cfn-applicationautoscaling-scalabletarget-suspendedstate-scheduledscalingsuspended
aasstssScheduledScalingSuspended :: Lens' ApplicationAutoScalingScalableTargetSuspendedState (Maybe (Val Bool))
aasstssScheduledScalingSuspended = lens _applicationAutoScalingScalableTargetSuspendedStateScheduledScalingSuspended (\s a -> s { _applicationAutoScalingScalableTargetSuspendedStateScheduledScalingSuspended = a })
