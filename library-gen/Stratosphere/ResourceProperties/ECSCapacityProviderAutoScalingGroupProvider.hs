
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-capacityprovider-autoscalinggroupprovider.html

module Stratosphere.ResourceProperties.ECSCapacityProviderAutoScalingGroupProvider where

import Prelude
import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.ECSCapacityProviderManagedScaling

-- | Full data type definition for
-- ECSCapacityProviderAutoScalingGroupProvider. See
-- 'ecsCapacityProviderAutoScalingGroupProvider' for a more convenient
-- constructor.
data ECSCapacityProviderAutoScalingGroupProvider =
  ECSCapacityProviderAutoScalingGroupProvider
  { _eCSCapacityProviderAutoScalingGroupProviderAutoScalingGroupArn :: Val Text
  , _eCSCapacityProviderAutoScalingGroupProviderManagedScaling :: Maybe ECSCapacityProviderManagedScaling
  , _eCSCapacityProviderAutoScalingGroupProviderManagedTerminationProtection :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON ECSCapacityProviderAutoScalingGroupProvider where
  toJSON ECSCapacityProviderAutoScalingGroupProvider{..} =
    object $
    catMaybes
    [ (Just . ("AutoScalingGroupArn",) . toJSON) _eCSCapacityProviderAutoScalingGroupProviderAutoScalingGroupArn
    , fmap (("ManagedScaling",) . toJSON) _eCSCapacityProviderAutoScalingGroupProviderManagedScaling
    , fmap (("ManagedTerminationProtection",) . toJSON) _eCSCapacityProviderAutoScalingGroupProviderManagedTerminationProtection
    ]

-- | Constructor for 'ECSCapacityProviderAutoScalingGroupProvider' containing
-- required fields as arguments.
ecsCapacityProviderAutoScalingGroupProvider
  :: Val Text -- ^ 'ecscpasgpAutoScalingGroupArn'
  -> ECSCapacityProviderAutoScalingGroupProvider
ecsCapacityProviderAutoScalingGroupProvider autoScalingGroupArnarg =
  ECSCapacityProviderAutoScalingGroupProvider
  { _eCSCapacityProviderAutoScalingGroupProviderAutoScalingGroupArn = autoScalingGroupArnarg
  , _eCSCapacityProviderAutoScalingGroupProviderManagedScaling = Nothing
  , _eCSCapacityProviderAutoScalingGroupProviderManagedTerminationProtection = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-capacityprovider-autoscalinggroupprovider.html#cfn-ecs-capacityprovider-autoscalinggroupprovider-autoscalinggrouparn
ecscpasgpAutoScalingGroupArn :: Lens' ECSCapacityProviderAutoScalingGroupProvider (Val Text)
ecscpasgpAutoScalingGroupArn = lens _eCSCapacityProviderAutoScalingGroupProviderAutoScalingGroupArn (\s a -> s { _eCSCapacityProviderAutoScalingGroupProviderAutoScalingGroupArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-capacityprovider-autoscalinggroupprovider.html#cfn-ecs-capacityprovider-autoscalinggroupprovider-managedscaling
ecscpasgpManagedScaling :: Lens' ECSCapacityProviderAutoScalingGroupProvider (Maybe ECSCapacityProviderManagedScaling)
ecscpasgpManagedScaling = lens _eCSCapacityProviderAutoScalingGroupProviderManagedScaling (\s a -> s { _eCSCapacityProviderAutoScalingGroupProviderManagedScaling = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-capacityprovider-autoscalinggroupprovider.html#cfn-ecs-capacityprovider-autoscalinggroupprovider-managedterminationprotection
ecscpasgpManagedTerminationProtection :: Lens' ECSCapacityProviderAutoScalingGroupProvider (Maybe (Val Text))
ecscpasgpManagedTerminationProtection = lens _eCSCapacityProviderAutoScalingGroupProviderManagedTerminationProtection (\s a -> s { _eCSCapacityProviderAutoScalingGroupProviderManagedTerminationProtection = a })
