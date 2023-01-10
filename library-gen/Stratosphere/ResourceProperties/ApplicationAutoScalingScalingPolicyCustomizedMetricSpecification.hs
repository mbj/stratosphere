
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-customizedmetricspecification.html

module Stratosphere.ResourceProperties.ApplicationAutoScalingScalingPolicyCustomizedMetricSpecification where

import Prelude
import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.ApplicationAutoScalingScalingPolicyMetricDimension

-- | Full data type definition for
-- ApplicationAutoScalingScalingPolicyCustomizedMetricSpecification. See
-- 'applicationAutoScalingScalingPolicyCustomizedMetricSpecification' for a
-- more convenient constructor.
data ApplicationAutoScalingScalingPolicyCustomizedMetricSpecification =
  ApplicationAutoScalingScalingPolicyCustomizedMetricSpecification
  { _applicationAutoScalingScalingPolicyCustomizedMetricSpecificationDimensions :: Maybe [ApplicationAutoScalingScalingPolicyMetricDimension]
  , _applicationAutoScalingScalingPolicyCustomizedMetricSpecificationMetricName :: Val Text
  , _applicationAutoScalingScalingPolicyCustomizedMetricSpecificationNamespace :: Val Text
  , _applicationAutoScalingScalingPolicyCustomizedMetricSpecificationStatistic :: Val Text
  , _applicationAutoScalingScalingPolicyCustomizedMetricSpecificationUnit :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON ApplicationAutoScalingScalingPolicyCustomizedMetricSpecification where
  toJSON ApplicationAutoScalingScalingPolicyCustomizedMetricSpecification{..} =
    object $
    catMaybes
    [ fmap (("Dimensions",) . toJSON) _applicationAutoScalingScalingPolicyCustomizedMetricSpecificationDimensions
    , (Just . ("MetricName",) . toJSON) _applicationAutoScalingScalingPolicyCustomizedMetricSpecificationMetricName
    , (Just . ("Namespace",) . toJSON) _applicationAutoScalingScalingPolicyCustomizedMetricSpecificationNamespace
    , (Just . ("Statistic",) . toJSON) _applicationAutoScalingScalingPolicyCustomizedMetricSpecificationStatistic
    , fmap (("Unit",) . toJSON) _applicationAutoScalingScalingPolicyCustomizedMetricSpecificationUnit
    ]

-- | Constructor for
-- 'ApplicationAutoScalingScalingPolicyCustomizedMetricSpecification'
-- containing required fields as arguments.
applicationAutoScalingScalingPolicyCustomizedMetricSpecification
  :: Val Text -- ^ 'aasspcmsMetricName'
  -> Val Text -- ^ 'aasspcmsNamespace'
  -> Val Text -- ^ 'aasspcmsStatistic'
  -> ApplicationAutoScalingScalingPolicyCustomizedMetricSpecification
applicationAutoScalingScalingPolicyCustomizedMetricSpecification metricNamearg namespacearg statisticarg =
  ApplicationAutoScalingScalingPolicyCustomizedMetricSpecification
  { _applicationAutoScalingScalingPolicyCustomizedMetricSpecificationDimensions = Nothing
  , _applicationAutoScalingScalingPolicyCustomizedMetricSpecificationMetricName = metricNamearg
  , _applicationAutoScalingScalingPolicyCustomizedMetricSpecificationNamespace = namespacearg
  , _applicationAutoScalingScalingPolicyCustomizedMetricSpecificationStatistic = statisticarg
  , _applicationAutoScalingScalingPolicyCustomizedMetricSpecificationUnit = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-customizedmetricspecification.html#cfn-applicationautoscaling-scalingpolicy-customizedmetricspecification-dimensions
aasspcmsDimensions :: Lens' ApplicationAutoScalingScalingPolicyCustomizedMetricSpecification (Maybe [ApplicationAutoScalingScalingPolicyMetricDimension])
aasspcmsDimensions = lens _applicationAutoScalingScalingPolicyCustomizedMetricSpecificationDimensions (\s a -> s { _applicationAutoScalingScalingPolicyCustomizedMetricSpecificationDimensions = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-customizedmetricspecification.html#cfn-applicationautoscaling-scalingpolicy-customizedmetricspecification-metricname
aasspcmsMetricName :: Lens' ApplicationAutoScalingScalingPolicyCustomizedMetricSpecification (Val Text)
aasspcmsMetricName = lens _applicationAutoScalingScalingPolicyCustomizedMetricSpecificationMetricName (\s a -> s { _applicationAutoScalingScalingPolicyCustomizedMetricSpecificationMetricName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-customizedmetricspecification.html#cfn-applicationautoscaling-scalingpolicy-customizedmetricspecification-namespace
aasspcmsNamespace :: Lens' ApplicationAutoScalingScalingPolicyCustomizedMetricSpecification (Val Text)
aasspcmsNamespace = lens _applicationAutoScalingScalingPolicyCustomizedMetricSpecificationNamespace (\s a -> s { _applicationAutoScalingScalingPolicyCustomizedMetricSpecificationNamespace = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-customizedmetricspecification.html#cfn-applicationautoscaling-scalingpolicy-customizedmetricspecification-statistic
aasspcmsStatistic :: Lens' ApplicationAutoScalingScalingPolicyCustomizedMetricSpecification (Val Text)
aasspcmsStatistic = lens _applicationAutoScalingScalingPolicyCustomizedMetricSpecificationStatistic (\s a -> s { _applicationAutoScalingScalingPolicyCustomizedMetricSpecificationStatistic = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-customizedmetricspecification.html#cfn-applicationautoscaling-scalingpolicy-customizedmetricspecification-unit
aasspcmsUnit :: Lens' ApplicationAutoScalingScalingPolicyCustomizedMetricSpecification (Maybe (Val Text))
aasspcmsUnit = lens _applicationAutoScalingScalingPolicyCustomizedMetricSpecificationUnit (\s a -> s { _applicationAutoScalingScalingPolicyCustomizedMetricSpecificationUnit = a })
