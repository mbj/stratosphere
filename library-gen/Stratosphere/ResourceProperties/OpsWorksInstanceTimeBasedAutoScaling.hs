
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-instance-timebasedautoscaling.html

module Stratosphere.ResourceProperties.OpsWorksInstanceTimeBasedAutoScaling where

import Stratosphere.ResourceImports


-- | Full data type definition for OpsWorksInstanceTimeBasedAutoScaling. See
-- 'opsWorksInstanceTimeBasedAutoScaling' for a more convenient constructor.
data OpsWorksInstanceTimeBasedAutoScaling =
  OpsWorksInstanceTimeBasedAutoScaling
  { _opsWorksInstanceTimeBasedAutoScalingFriday :: Maybe Object
  , _opsWorksInstanceTimeBasedAutoScalingMonday :: Maybe Object
  , _opsWorksInstanceTimeBasedAutoScalingSaturday :: Maybe Object
  , _opsWorksInstanceTimeBasedAutoScalingSunday :: Maybe Object
  , _opsWorksInstanceTimeBasedAutoScalingThursday :: Maybe Object
  , _opsWorksInstanceTimeBasedAutoScalingTuesday :: Maybe Object
  , _opsWorksInstanceTimeBasedAutoScalingWednesday :: Maybe Object
  } deriving (Show, Eq)

instance ToJSON OpsWorksInstanceTimeBasedAutoScaling where
  toJSON OpsWorksInstanceTimeBasedAutoScaling{..} =
    object $
    catMaybes
    [ fmap (("Friday",) . toJSON) _opsWorksInstanceTimeBasedAutoScalingFriday
    , fmap (("Monday",) . toJSON) _opsWorksInstanceTimeBasedAutoScalingMonday
    , fmap (("Saturday",) . toJSON) _opsWorksInstanceTimeBasedAutoScalingSaturday
    , fmap (("Sunday",) . toJSON) _opsWorksInstanceTimeBasedAutoScalingSunday
    , fmap (("Thursday",) . toJSON) _opsWorksInstanceTimeBasedAutoScalingThursday
    , fmap (("Tuesday",) . toJSON) _opsWorksInstanceTimeBasedAutoScalingTuesday
    , fmap (("Wednesday",) . toJSON) _opsWorksInstanceTimeBasedAutoScalingWednesday
    ]

-- | Constructor for 'OpsWorksInstanceTimeBasedAutoScaling' containing
-- required fields as arguments.
opsWorksInstanceTimeBasedAutoScaling
  :: OpsWorksInstanceTimeBasedAutoScaling
opsWorksInstanceTimeBasedAutoScaling  =
  OpsWorksInstanceTimeBasedAutoScaling
  { _opsWorksInstanceTimeBasedAutoScalingFriday = Nothing
  , _opsWorksInstanceTimeBasedAutoScalingMonday = Nothing
  , _opsWorksInstanceTimeBasedAutoScalingSaturday = Nothing
  , _opsWorksInstanceTimeBasedAutoScalingSunday = Nothing
  , _opsWorksInstanceTimeBasedAutoScalingThursday = Nothing
  , _opsWorksInstanceTimeBasedAutoScalingTuesday = Nothing
  , _opsWorksInstanceTimeBasedAutoScalingWednesday = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-instance-timebasedautoscaling.html#cfn-opsworks-instance-timebasedautoscaling-friday
owitbasFriday :: Lens' OpsWorksInstanceTimeBasedAutoScaling (Maybe Object)
owitbasFriday = lens _opsWorksInstanceTimeBasedAutoScalingFriday (\s a -> s { _opsWorksInstanceTimeBasedAutoScalingFriday = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-instance-timebasedautoscaling.html#cfn-opsworks-instance-timebasedautoscaling-monday
owitbasMonday :: Lens' OpsWorksInstanceTimeBasedAutoScaling (Maybe Object)
owitbasMonday = lens _opsWorksInstanceTimeBasedAutoScalingMonday (\s a -> s { _opsWorksInstanceTimeBasedAutoScalingMonday = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-instance-timebasedautoscaling.html#cfn-opsworks-instance-timebasedautoscaling-saturday
owitbasSaturday :: Lens' OpsWorksInstanceTimeBasedAutoScaling (Maybe Object)
owitbasSaturday = lens _opsWorksInstanceTimeBasedAutoScalingSaturday (\s a -> s { _opsWorksInstanceTimeBasedAutoScalingSaturday = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-instance-timebasedautoscaling.html#cfn-opsworks-instance-timebasedautoscaling-sunday
owitbasSunday :: Lens' OpsWorksInstanceTimeBasedAutoScaling (Maybe Object)
owitbasSunday = lens _opsWorksInstanceTimeBasedAutoScalingSunday (\s a -> s { _opsWorksInstanceTimeBasedAutoScalingSunday = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-instance-timebasedautoscaling.html#cfn-opsworks-instance-timebasedautoscaling-thursday
owitbasThursday :: Lens' OpsWorksInstanceTimeBasedAutoScaling (Maybe Object)
owitbasThursday = lens _opsWorksInstanceTimeBasedAutoScalingThursday (\s a -> s { _opsWorksInstanceTimeBasedAutoScalingThursday = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-instance-timebasedautoscaling.html#cfn-opsworks-instance-timebasedautoscaling-tuesday
owitbasTuesday :: Lens' OpsWorksInstanceTimeBasedAutoScaling (Maybe Object)
owitbasTuesday = lens _opsWorksInstanceTimeBasedAutoScalingTuesday (\s a -> s { _opsWorksInstanceTimeBasedAutoScalingTuesday = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-instance-timebasedautoscaling.html#cfn-opsworks-instance-timebasedautoscaling-wednesday
owitbasWednesday :: Lens' OpsWorksInstanceTimeBasedAutoScaling (Maybe Object)
owitbasWednesday = lens _opsWorksInstanceTimeBasedAutoScalingWednesday (\s a -> s { _opsWorksInstanceTimeBasedAutoScalingWednesday = a })
