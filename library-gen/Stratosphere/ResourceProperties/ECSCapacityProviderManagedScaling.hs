
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-capacityprovider-managedscaling.html

module Stratosphere.ResourceProperties.ECSCapacityProviderManagedScaling where

import Stratosphere.ResourceImports


-- | Full data type definition for ECSCapacityProviderManagedScaling. See
-- 'ecsCapacityProviderManagedScaling' for a more convenient constructor.
data ECSCapacityProviderManagedScaling =
  ECSCapacityProviderManagedScaling
  { _eCSCapacityProviderManagedScalingMaximumScalingStepSize :: Maybe (Val Integer)
  , _eCSCapacityProviderManagedScalingMinimumScalingStepSize :: Maybe (Val Integer)
  , _eCSCapacityProviderManagedScalingStatus :: Maybe (Val Text)
  , _eCSCapacityProviderManagedScalingTargetCapacity :: Maybe (Val Integer)
  } deriving (Show, Eq)

instance ToJSON ECSCapacityProviderManagedScaling where
  toJSON ECSCapacityProviderManagedScaling{..} =
    object $
    catMaybes
    [ fmap (("MaximumScalingStepSize",) . toJSON) _eCSCapacityProviderManagedScalingMaximumScalingStepSize
    , fmap (("MinimumScalingStepSize",) . toJSON) _eCSCapacityProviderManagedScalingMinimumScalingStepSize
    , fmap (("Status",) . toJSON) _eCSCapacityProviderManagedScalingStatus
    , fmap (("TargetCapacity",) . toJSON) _eCSCapacityProviderManagedScalingTargetCapacity
    ]

-- | Constructor for 'ECSCapacityProviderManagedScaling' containing required
-- fields as arguments.
ecsCapacityProviderManagedScaling
  :: ECSCapacityProviderManagedScaling
ecsCapacityProviderManagedScaling  =
  ECSCapacityProviderManagedScaling
  { _eCSCapacityProviderManagedScalingMaximumScalingStepSize = Nothing
  , _eCSCapacityProviderManagedScalingMinimumScalingStepSize = Nothing
  , _eCSCapacityProviderManagedScalingStatus = Nothing
  , _eCSCapacityProviderManagedScalingTargetCapacity = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-capacityprovider-managedscaling.html#cfn-ecs-capacityprovider-managedscaling-maximumscalingstepsize
ecscpmsMaximumScalingStepSize :: Lens' ECSCapacityProviderManagedScaling (Maybe (Val Integer))
ecscpmsMaximumScalingStepSize = lens _eCSCapacityProviderManagedScalingMaximumScalingStepSize (\s a -> s { _eCSCapacityProviderManagedScalingMaximumScalingStepSize = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-capacityprovider-managedscaling.html#cfn-ecs-capacityprovider-managedscaling-minimumscalingstepsize
ecscpmsMinimumScalingStepSize :: Lens' ECSCapacityProviderManagedScaling (Maybe (Val Integer))
ecscpmsMinimumScalingStepSize = lens _eCSCapacityProviderManagedScalingMinimumScalingStepSize (\s a -> s { _eCSCapacityProviderManagedScalingMinimumScalingStepSize = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-capacityprovider-managedscaling.html#cfn-ecs-capacityprovider-managedscaling-status
ecscpmsStatus :: Lens' ECSCapacityProviderManagedScaling (Maybe (Val Text))
ecscpmsStatus = lens _eCSCapacityProviderManagedScalingStatus (\s a -> s { _eCSCapacityProviderManagedScalingStatus = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-capacityprovider-managedscaling.html#cfn-ecs-capacityprovider-managedscaling-targetcapacity
ecscpmsTargetCapacity :: Lens' ECSCapacityProviderManagedScaling (Maybe (Val Integer))
ecscpmsTargetCapacity = lens _eCSCapacityProviderManagedScalingTargetCapacity (\s a -> s { _eCSCapacityProviderManagedScalingTargetCapacity = a })
