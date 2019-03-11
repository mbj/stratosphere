{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-metricdimension.html

module Stratosphere.ResourceProperties.ApplicationAutoScalingScalingPolicyMetricDimension where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- ApplicationAutoScalingScalingPolicyMetricDimension. See
-- 'applicationAutoScalingScalingPolicyMetricDimension' for a more
-- convenient constructor.
data ApplicationAutoScalingScalingPolicyMetricDimension =
  ApplicationAutoScalingScalingPolicyMetricDimension
  { _applicationAutoScalingScalingPolicyMetricDimensionName :: Val Text
  , _applicationAutoScalingScalingPolicyMetricDimensionValue :: Val Text
  } deriving (Show, Eq)

instance ToJSON ApplicationAutoScalingScalingPolicyMetricDimension where
  toJSON ApplicationAutoScalingScalingPolicyMetricDimension{..} =
    object $
    catMaybes
    [ (Just . ("Name",) . toJSON) _applicationAutoScalingScalingPolicyMetricDimensionName
    , (Just . ("Value",) . toJSON) _applicationAutoScalingScalingPolicyMetricDimensionValue
    ]

-- | Constructor for 'ApplicationAutoScalingScalingPolicyMetricDimension'
-- containing required fields as arguments.
applicationAutoScalingScalingPolicyMetricDimension
  :: Val Text -- ^ 'aasspmdName'
  -> Val Text -- ^ 'aasspmdValue'
  -> ApplicationAutoScalingScalingPolicyMetricDimension
applicationAutoScalingScalingPolicyMetricDimension namearg valuearg =
  ApplicationAutoScalingScalingPolicyMetricDimension
  { _applicationAutoScalingScalingPolicyMetricDimensionName = namearg
  , _applicationAutoScalingScalingPolicyMetricDimensionValue = valuearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-metricdimension.html#cfn-applicationautoscaling-scalingpolicy-metricdimension-name
aasspmdName :: Lens' ApplicationAutoScalingScalingPolicyMetricDimension (Val Text)
aasspmdName = lens _applicationAutoScalingScalingPolicyMetricDimensionName (\s a -> s { _applicationAutoScalingScalingPolicyMetricDimensionName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-metricdimension.html#cfn-applicationautoscaling-scalingpolicy-metricdimension-value
aasspmdValue :: Lens' ApplicationAutoScalingScalingPolicyMetricDimension (Val Text)
aasspmdValue = lens _applicationAutoScalingScalingPolicyMetricDimensionValue (\s a -> s { _applicationAutoScalingScalingPolicyMetricDimensionValue = a })
