{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-customizedmetricspecification.html

module Stratosphere.ResourceProperties.ApplicationAutoScalingScalingPolicyCustomizedMetricSpecification where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values
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
    [ ("Dimensions" .=) <$> _applicationAutoScalingScalingPolicyCustomizedMetricSpecificationDimensions
    , Just ("MetricName" .= _applicationAutoScalingScalingPolicyCustomizedMetricSpecificationMetricName)
    , Just ("Namespace" .= _applicationAutoScalingScalingPolicyCustomizedMetricSpecificationNamespace)
    , Just ("Statistic" .= _applicationAutoScalingScalingPolicyCustomizedMetricSpecificationStatistic)
    , ("Unit" .=) <$> _applicationAutoScalingScalingPolicyCustomizedMetricSpecificationUnit
    ]

instance FromJSON ApplicationAutoScalingScalingPolicyCustomizedMetricSpecification where
  parseJSON (Object obj) =
    ApplicationAutoScalingScalingPolicyCustomizedMetricSpecification <$>
      obj .:? "Dimensions" <*>
      obj .: "MetricName" <*>
      obj .: "Namespace" <*>
      obj .: "Statistic" <*>
      obj .:? "Unit"
  parseJSON _ = mempty

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
