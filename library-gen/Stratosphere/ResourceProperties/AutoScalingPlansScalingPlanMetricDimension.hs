
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-metricdimension.html

module Stratosphere.ResourceProperties.AutoScalingPlansScalingPlanMetricDimension where

import Stratosphere.ResourceImports


-- | Full data type definition for AutoScalingPlansScalingPlanMetricDimension.
-- See 'autoScalingPlansScalingPlanMetricDimension' for a more convenient
-- constructor.
data AutoScalingPlansScalingPlanMetricDimension =
  AutoScalingPlansScalingPlanMetricDimension
  { _autoScalingPlansScalingPlanMetricDimensionName :: Val Text
  , _autoScalingPlansScalingPlanMetricDimensionValue :: Val Text
  } deriving (Show, Eq)

instance ToJSON AutoScalingPlansScalingPlanMetricDimension where
  toJSON AutoScalingPlansScalingPlanMetricDimension{..} =
    object $
    catMaybes
    [ (Just . ("Name",) . toJSON) _autoScalingPlansScalingPlanMetricDimensionName
    , (Just . ("Value",) . toJSON) _autoScalingPlansScalingPlanMetricDimensionValue
    ]

-- | Constructor for 'AutoScalingPlansScalingPlanMetricDimension' containing
-- required fields as arguments.
autoScalingPlansScalingPlanMetricDimension
  :: Val Text -- ^ 'aspspmdName'
  -> Val Text -- ^ 'aspspmdValue'
  -> AutoScalingPlansScalingPlanMetricDimension
autoScalingPlansScalingPlanMetricDimension namearg valuearg =
  AutoScalingPlansScalingPlanMetricDimension
  { _autoScalingPlansScalingPlanMetricDimensionName = namearg
  , _autoScalingPlansScalingPlanMetricDimensionValue = valuearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-metricdimension.html#cfn-autoscalingplans-scalingplan-metricdimension-name
aspspmdName :: Lens' AutoScalingPlansScalingPlanMetricDimension (Val Text)
aspspmdName = lens _autoScalingPlansScalingPlanMetricDimensionName (\s a -> s { _autoScalingPlansScalingPlanMetricDimensionName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-metricdimension.html#cfn-autoscalingplans-scalingplan-metricdimension-value
aspspmdValue :: Lens' AutoScalingPlansScalingPlanMetricDimension (Val Text)
aspspmdValue = lens _autoScalingPlansScalingPlanMetricDimensionValue (\s a -> s { _autoScalingPlansScalingPlanMetricDimensionValue = a })
