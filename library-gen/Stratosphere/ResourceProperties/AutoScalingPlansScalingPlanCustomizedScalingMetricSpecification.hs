{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-customizedscalingmetricspecification.html

module Stratosphere.ResourceProperties.AutoScalingPlansScalingPlanCustomizedScalingMetricSpecification where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.AutoScalingPlansScalingPlanMetricDimension

-- | Full data type definition for
-- AutoScalingPlansScalingPlanCustomizedScalingMetricSpecification. See
-- 'autoScalingPlansScalingPlanCustomizedScalingMetricSpecification' for a
-- more convenient constructor.
data AutoScalingPlansScalingPlanCustomizedScalingMetricSpecification =
  AutoScalingPlansScalingPlanCustomizedScalingMetricSpecification
  { _autoScalingPlansScalingPlanCustomizedScalingMetricSpecificationDimensions :: Maybe [AutoScalingPlansScalingPlanMetricDimension]
  , _autoScalingPlansScalingPlanCustomizedScalingMetricSpecificationMetricName :: Val Text
  , _autoScalingPlansScalingPlanCustomizedScalingMetricSpecificationNamespace :: Val Text
  , _autoScalingPlansScalingPlanCustomizedScalingMetricSpecificationStatistic :: Val Text
  , _autoScalingPlansScalingPlanCustomizedScalingMetricSpecificationUnit :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON AutoScalingPlansScalingPlanCustomizedScalingMetricSpecification where
  toJSON AutoScalingPlansScalingPlanCustomizedScalingMetricSpecification{..} =
    object $
    catMaybes
    [ fmap (("Dimensions",) . toJSON) _autoScalingPlansScalingPlanCustomizedScalingMetricSpecificationDimensions
    , (Just . ("MetricName",) . toJSON) _autoScalingPlansScalingPlanCustomizedScalingMetricSpecificationMetricName
    , (Just . ("Namespace",) . toJSON) _autoScalingPlansScalingPlanCustomizedScalingMetricSpecificationNamespace
    , (Just . ("Statistic",) . toJSON) _autoScalingPlansScalingPlanCustomizedScalingMetricSpecificationStatistic
    , fmap (("Unit",) . toJSON) _autoScalingPlansScalingPlanCustomizedScalingMetricSpecificationUnit
    ]

-- | Constructor for
-- 'AutoScalingPlansScalingPlanCustomizedScalingMetricSpecification'
-- containing required fields as arguments.
autoScalingPlansScalingPlanCustomizedScalingMetricSpecification
  :: Val Text -- ^ 'aspspcsmsMetricName'
  -> Val Text -- ^ 'aspspcsmsNamespace'
  -> Val Text -- ^ 'aspspcsmsStatistic'
  -> AutoScalingPlansScalingPlanCustomizedScalingMetricSpecification
autoScalingPlansScalingPlanCustomizedScalingMetricSpecification metricNamearg namespacearg statisticarg =
  AutoScalingPlansScalingPlanCustomizedScalingMetricSpecification
  { _autoScalingPlansScalingPlanCustomizedScalingMetricSpecificationDimensions = Nothing
  , _autoScalingPlansScalingPlanCustomizedScalingMetricSpecificationMetricName = metricNamearg
  , _autoScalingPlansScalingPlanCustomizedScalingMetricSpecificationNamespace = namespacearg
  , _autoScalingPlansScalingPlanCustomizedScalingMetricSpecificationStatistic = statisticarg
  , _autoScalingPlansScalingPlanCustomizedScalingMetricSpecificationUnit = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-customizedscalingmetricspecification.html#cfn-autoscalingplans-scalingplan-customizedscalingmetricspecification-dimensions
aspspcsmsDimensions :: Lens' AutoScalingPlansScalingPlanCustomizedScalingMetricSpecification (Maybe [AutoScalingPlansScalingPlanMetricDimension])
aspspcsmsDimensions = lens _autoScalingPlansScalingPlanCustomizedScalingMetricSpecificationDimensions (\s a -> s { _autoScalingPlansScalingPlanCustomizedScalingMetricSpecificationDimensions = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-customizedscalingmetricspecification.html#cfn-autoscalingplans-scalingplan-customizedscalingmetricspecification-metricname
aspspcsmsMetricName :: Lens' AutoScalingPlansScalingPlanCustomizedScalingMetricSpecification (Val Text)
aspspcsmsMetricName = lens _autoScalingPlansScalingPlanCustomizedScalingMetricSpecificationMetricName (\s a -> s { _autoScalingPlansScalingPlanCustomizedScalingMetricSpecificationMetricName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-customizedscalingmetricspecification.html#cfn-autoscalingplans-scalingplan-customizedscalingmetricspecification-namespace
aspspcsmsNamespace :: Lens' AutoScalingPlansScalingPlanCustomizedScalingMetricSpecification (Val Text)
aspspcsmsNamespace = lens _autoScalingPlansScalingPlanCustomizedScalingMetricSpecificationNamespace (\s a -> s { _autoScalingPlansScalingPlanCustomizedScalingMetricSpecificationNamespace = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-customizedscalingmetricspecification.html#cfn-autoscalingplans-scalingplan-customizedscalingmetricspecification-statistic
aspspcsmsStatistic :: Lens' AutoScalingPlansScalingPlanCustomizedScalingMetricSpecification (Val Text)
aspspcsmsStatistic = lens _autoScalingPlansScalingPlanCustomizedScalingMetricSpecificationStatistic (\s a -> s { _autoScalingPlansScalingPlanCustomizedScalingMetricSpecificationStatistic = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-customizedscalingmetricspecification.html#cfn-autoscalingplans-scalingplan-customizedscalingmetricspecification-unit
aspspcsmsUnit :: Lens' AutoScalingPlansScalingPlanCustomizedScalingMetricSpecification (Maybe (Val Text))
aspspcsmsUnit = lens _autoScalingPlansScalingPlanCustomizedScalingMetricSpecificationUnit (\s a -> s { _autoScalingPlansScalingPlanCustomizedScalingMetricSpecificationUnit = a })
