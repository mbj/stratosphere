
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-scalingpolicy-metricdimension.html

module Stratosphere.ResourceProperties.AutoScalingScalingPolicyMetricDimension where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for AutoScalingScalingPolicyMetricDimension.
-- See 'autoScalingScalingPolicyMetricDimension' for a more convenient
-- constructor.
data AutoScalingScalingPolicyMetricDimension =
  AutoScalingScalingPolicyMetricDimension
  { _autoScalingScalingPolicyMetricDimensionName :: Val Text
  , _autoScalingScalingPolicyMetricDimensionValue :: Val Text
  } deriving (Show, Eq)

instance ToJSON AutoScalingScalingPolicyMetricDimension where
  toJSON AutoScalingScalingPolicyMetricDimension{..} =
    object $
    catMaybes
    [ (Just . ("Name",) . toJSON) _autoScalingScalingPolicyMetricDimensionName
    , (Just . ("Value",) . toJSON) _autoScalingScalingPolicyMetricDimensionValue
    ]

-- | Constructor for 'AutoScalingScalingPolicyMetricDimension' containing
-- required fields as arguments.
autoScalingScalingPolicyMetricDimension
  :: Val Text -- ^ 'asspmdName'
  -> Val Text -- ^ 'asspmdValue'
  -> AutoScalingScalingPolicyMetricDimension
autoScalingScalingPolicyMetricDimension namearg valuearg =
  AutoScalingScalingPolicyMetricDimension
  { _autoScalingScalingPolicyMetricDimensionName = namearg
  , _autoScalingScalingPolicyMetricDimensionValue = valuearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-scalingpolicy-metricdimension.html#cfn-autoscaling-scalingpolicy-metricdimension-name
asspmdName :: Lens' AutoScalingScalingPolicyMetricDimension (Val Text)
asspmdName = lens _autoScalingScalingPolicyMetricDimensionName (\s a -> s { _autoScalingScalingPolicyMetricDimensionName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-scalingpolicy-metricdimension.html#cfn-autoscaling-scalingpolicy-metricdimension-value
asspmdValue :: Lens' AutoScalingScalingPolicyMetricDimension (Val Text)
asspmdValue = lens _autoScalingScalingPolicyMetricDimensionValue (\s a -> s { _autoScalingScalingPolicyMetricDimensionValue = a })
