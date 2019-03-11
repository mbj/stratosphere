{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-customizedloadmetricspecification.html

module Stratosphere.ResourceProperties.AutoScalingPlansScalingPlanCustomizedLoadMetricSpecification where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.AutoScalingPlansScalingPlanMetricDimension

-- | Full data type definition for
-- AutoScalingPlansScalingPlanCustomizedLoadMetricSpecification. See
-- 'autoScalingPlansScalingPlanCustomizedLoadMetricSpecification' for a more
-- convenient constructor.
data AutoScalingPlansScalingPlanCustomizedLoadMetricSpecification =
  AutoScalingPlansScalingPlanCustomizedLoadMetricSpecification
  { _autoScalingPlansScalingPlanCustomizedLoadMetricSpecificationDimensions :: Maybe [AutoScalingPlansScalingPlanMetricDimension]
  , _autoScalingPlansScalingPlanCustomizedLoadMetricSpecificationMetricName :: Val Text
  , _autoScalingPlansScalingPlanCustomizedLoadMetricSpecificationNamespace :: Val Text
  , _autoScalingPlansScalingPlanCustomizedLoadMetricSpecificationStatistic :: Val Text
  , _autoScalingPlansScalingPlanCustomizedLoadMetricSpecificationUnit :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON AutoScalingPlansScalingPlanCustomizedLoadMetricSpecification where
  toJSON AutoScalingPlansScalingPlanCustomizedLoadMetricSpecification{..} =
    object $
    catMaybes
    [ fmap (("Dimensions",) . toJSON) _autoScalingPlansScalingPlanCustomizedLoadMetricSpecificationDimensions
    , (Just . ("MetricName",) . toJSON) _autoScalingPlansScalingPlanCustomizedLoadMetricSpecificationMetricName
    , (Just . ("Namespace",) . toJSON) _autoScalingPlansScalingPlanCustomizedLoadMetricSpecificationNamespace
    , (Just . ("Statistic",) . toJSON) _autoScalingPlansScalingPlanCustomizedLoadMetricSpecificationStatistic
    , fmap (("Unit",) . toJSON) _autoScalingPlansScalingPlanCustomizedLoadMetricSpecificationUnit
    ]

-- | Constructor for
-- 'AutoScalingPlansScalingPlanCustomizedLoadMetricSpecification' containing
-- required fields as arguments.
autoScalingPlansScalingPlanCustomizedLoadMetricSpecification
  :: Val Text -- ^ 'aspspclmsMetricName'
  -> Val Text -- ^ 'aspspclmsNamespace'
  -> Val Text -- ^ 'aspspclmsStatistic'
  -> AutoScalingPlansScalingPlanCustomizedLoadMetricSpecification
autoScalingPlansScalingPlanCustomizedLoadMetricSpecification metricNamearg namespacearg statisticarg =
  AutoScalingPlansScalingPlanCustomizedLoadMetricSpecification
  { _autoScalingPlansScalingPlanCustomizedLoadMetricSpecificationDimensions = Nothing
  , _autoScalingPlansScalingPlanCustomizedLoadMetricSpecificationMetricName = metricNamearg
  , _autoScalingPlansScalingPlanCustomizedLoadMetricSpecificationNamespace = namespacearg
  , _autoScalingPlansScalingPlanCustomizedLoadMetricSpecificationStatistic = statisticarg
  , _autoScalingPlansScalingPlanCustomizedLoadMetricSpecificationUnit = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-customizedloadmetricspecification.html#cfn-autoscalingplans-scalingplan-customizedloadmetricspecification-dimensions
aspspclmsDimensions :: Lens' AutoScalingPlansScalingPlanCustomizedLoadMetricSpecification (Maybe [AutoScalingPlansScalingPlanMetricDimension])
aspspclmsDimensions = lens _autoScalingPlansScalingPlanCustomizedLoadMetricSpecificationDimensions (\s a -> s { _autoScalingPlansScalingPlanCustomizedLoadMetricSpecificationDimensions = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-customizedloadmetricspecification.html#cfn-autoscalingplans-scalingplan-customizedloadmetricspecification-metricname
aspspclmsMetricName :: Lens' AutoScalingPlansScalingPlanCustomizedLoadMetricSpecification (Val Text)
aspspclmsMetricName = lens _autoScalingPlansScalingPlanCustomizedLoadMetricSpecificationMetricName (\s a -> s { _autoScalingPlansScalingPlanCustomizedLoadMetricSpecificationMetricName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-customizedloadmetricspecification.html#cfn-autoscalingplans-scalingplan-customizedloadmetricspecification-namespace
aspspclmsNamespace :: Lens' AutoScalingPlansScalingPlanCustomizedLoadMetricSpecification (Val Text)
aspspclmsNamespace = lens _autoScalingPlansScalingPlanCustomizedLoadMetricSpecificationNamespace (\s a -> s { _autoScalingPlansScalingPlanCustomizedLoadMetricSpecificationNamespace = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-customizedloadmetricspecification.html#cfn-autoscalingplans-scalingplan-customizedloadmetricspecification-statistic
aspspclmsStatistic :: Lens' AutoScalingPlansScalingPlanCustomizedLoadMetricSpecification (Val Text)
aspspclmsStatistic = lens _autoScalingPlansScalingPlanCustomizedLoadMetricSpecificationStatistic (\s a -> s { _autoScalingPlansScalingPlanCustomizedLoadMetricSpecificationStatistic = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-customizedloadmetricspecification.html#cfn-autoscalingplans-scalingplan-customizedloadmetricspecification-unit
aspspclmsUnit :: Lens' AutoScalingPlansScalingPlanCustomizedLoadMetricSpecification (Maybe (Val Text))
aspspclmsUnit = lens _autoScalingPlansScalingPlanCustomizedLoadMetricSpecificationUnit (\s a -> s { _autoScalingPlansScalingPlanCustomizedLoadMetricSpecificationUnit = a })
