
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalabletarget-scheduledaction.html

module Stratosphere.ResourceProperties.ApplicationAutoScalingScalableTargetScheduledAction where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.ApplicationAutoScalingScalableTargetScalableTargetAction

-- | Full data type definition for
-- ApplicationAutoScalingScalableTargetScheduledAction. See
-- 'applicationAutoScalingScalableTargetScheduledAction' for a more
-- convenient constructor.
data ApplicationAutoScalingScalableTargetScheduledAction =
  ApplicationAutoScalingScalableTargetScheduledAction
  { _applicationAutoScalingScalableTargetScheduledActionEndTime :: Maybe (Val Text)
  , _applicationAutoScalingScalableTargetScheduledActionScalableTargetAction :: Maybe ApplicationAutoScalingScalableTargetScalableTargetAction
  , _applicationAutoScalingScalableTargetScheduledActionSchedule :: Val Text
  , _applicationAutoScalingScalableTargetScheduledActionScheduledActionName :: Val Text
  , _applicationAutoScalingScalableTargetScheduledActionStartTime :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON ApplicationAutoScalingScalableTargetScheduledAction where
  toJSON ApplicationAutoScalingScalableTargetScheduledAction{..} =
    object $
    catMaybes
    [ fmap (("EndTime",) . toJSON) _applicationAutoScalingScalableTargetScheduledActionEndTime
    , fmap (("ScalableTargetAction",) . toJSON) _applicationAutoScalingScalableTargetScheduledActionScalableTargetAction
    , (Just . ("Schedule",) . toJSON) _applicationAutoScalingScalableTargetScheduledActionSchedule
    , (Just . ("ScheduledActionName",) . toJSON) _applicationAutoScalingScalableTargetScheduledActionScheduledActionName
    , fmap (("StartTime",) . toJSON) _applicationAutoScalingScalableTargetScheduledActionStartTime
    ]

-- | Constructor for 'ApplicationAutoScalingScalableTargetScheduledAction'
-- containing required fields as arguments.
applicationAutoScalingScalableTargetScheduledAction
  :: Val Text -- ^ 'aasstsaSchedule'
  -> Val Text -- ^ 'aasstsaScheduledActionName'
  -> ApplicationAutoScalingScalableTargetScheduledAction
applicationAutoScalingScalableTargetScheduledAction schedulearg scheduledActionNamearg =
  ApplicationAutoScalingScalableTargetScheduledAction
  { _applicationAutoScalingScalableTargetScheduledActionEndTime = Nothing
  , _applicationAutoScalingScalableTargetScheduledActionScalableTargetAction = Nothing
  , _applicationAutoScalingScalableTargetScheduledActionSchedule = schedulearg
  , _applicationAutoScalingScalableTargetScheduledActionScheduledActionName = scheduledActionNamearg
  , _applicationAutoScalingScalableTargetScheduledActionStartTime = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalabletarget-scheduledaction.html#cfn-applicationautoscaling-scalabletarget-scheduledaction-endtime
aasstsaEndTime :: Lens' ApplicationAutoScalingScalableTargetScheduledAction (Maybe (Val Text))
aasstsaEndTime = lens _applicationAutoScalingScalableTargetScheduledActionEndTime (\s a -> s { _applicationAutoScalingScalableTargetScheduledActionEndTime = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalabletarget-scheduledaction.html#cfn-applicationautoscaling-scalabletarget-scheduledaction-scalabletargetaction
aasstsaScalableTargetAction :: Lens' ApplicationAutoScalingScalableTargetScheduledAction (Maybe ApplicationAutoScalingScalableTargetScalableTargetAction)
aasstsaScalableTargetAction = lens _applicationAutoScalingScalableTargetScheduledActionScalableTargetAction (\s a -> s { _applicationAutoScalingScalableTargetScheduledActionScalableTargetAction = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalabletarget-scheduledaction.html#cfn-applicationautoscaling-scalabletarget-scheduledaction-schedule
aasstsaSchedule :: Lens' ApplicationAutoScalingScalableTargetScheduledAction (Val Text)
aasstsaSchedule = lens _applicationAutoScalingScalableTargetScheduledActionSchedule (\s a -> s { _applicationAutoScalingScalableTargetScheduledActionSchedule = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalabletarget-scheduledaction.html#cfn-applicationautoscaling-scalabletarget-scheduledaction-scheduledactionname
aasstsaScheduledActionName :: Lens' ApplicationAutoScalingScalableTargetScheduledAction (Val Text)
aasstsaScheduledActionName = lens _applicationAutoScalingScalableTargetScheduledActionScheduledActionName (\s a -> s { _applicationAutoScalingScalableTargetScheduledActionScheduledActionName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalabletarget-scheduledaction.html#cfn-applicationautoscaling-scalabletarget-scheduledaction-starttime
aasstsaStartTime :: Lens' ApplicationAutoScalingScalableTargetScheduledAction (Maybe (Val Text))
aasstsaStartTime = lens _applicationAutoScalingScalableTargetScheduledActionStartTime (\s a -> s { _applicationAutoScalingScalableTargetScheduledActionStartTime = a })
