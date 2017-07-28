{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-scalingpolicy-customizedmetricspecification.html

module Stratosphere.ResourceProperties.AutoScalingScalingPolicyCustomizedMetricSpecification where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values
import Stratosphere.ResourceProperties.AutoScalingScalingPolicyMetricDimension

-- | Full data type definition for
-- AutoScalingScalingPolicyCustomizedMetricSpecification. See
-- 'autoScalingScalingPolicyCustomizedMetricSpecification' for a more
-- convenient constructor.
data AutoScalingScalingPolicyCustomizedMetricSpecification =
  AutoScalingScalingPolicyCustomizedMetricSpecification
  { _autoScalingScalingPolicyCustomizedMetricSpecificationDimensions :: Maybe [AutoScalingScalingPolicyMetricDimension]
  , _autoScalingScalingPolicyCustomizedMetricSpecificationMetricName :: Val Text
  , _autoScalingScalingPolicyCustomizedMetricSpecificationNamespace :: Val Text
  , _autoScalingScalingPolicyCustomizedMetricSpecificationStatistic :: Val Text
  , _autoScalingScalingPolicyCustomizedMetricSpecificationUnit :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON AutoScalingScalingPolicyCustomizedMetricSpecification where
  toJSON AutoScalingScalingPolicyCustomizedMetricSpecification{..} =
    object $
    catMaybes
    [ fmap (("Dimensions",) . toJSON) _autoScalingScalingPolicyCustomizedMetricSpecificationDimensions
    , (Just . ("MetricName",) . toJSON) _autoScalingScalingPolicyCustomizedMetricSpecificationMetricName
    , (Just . ("Namespace",) . toJSON) _autoScalingScalingPolicyCustomizedMetricSpecificationNamespace
    , (Just . ("Statistic",) . toJSON) _autoScalingScalingPolicyCustomizedMetricSpecificationStatistic
    , fmap (("Unit",) . toJSON) _autoScalingScalingPolicyCustomizedMetricSpecificationUnit
    ]

instance FromJSON AutoScalingScalingPolicyCustomizedMetricSpecification where
  parseJSON (Object obj) =
    AutoScalingScalingPolicyCustomizedMetricSpecification <$>
      (obj .:? "Dimensions") <*>
      (obj .: "MetricName") <*>
      (obj .: "Namespace") <*>
      (obj .: "Statistic") <*>
      (obj .:? "Unit")
  parseJSON _ = mempty

-- | Constructor for 'AutoScalingScalingPolicyCustomizedMetricSpecification'
-- containing required fields as arguments.
autoScalingScalingPolicyCustomizedMetricSpecification
  :: Val Text -- ^ 'asspcmsMetricName'
  -> Val Text -- ^ 'asspcmsNamespace'
  -> Val Text -- ^ 'asspcmsStatistic'
  -> AutoScalingScalingPolicyCustomizedMetricSpecification
autoScalingScalingPolicyCustomizedMetricSpecification metricNamearg namespacearg statisticarg =
  AutoScalingScalingPolicyCustomizedMetricSpecification
  { _autoScalingScalingPolicyCustomizedMetricSpecificationDimensions = Nothing
  , _autoScalingScalingPolicyCustomizedMetricSpecificationMetricName = metricNamearg
  , _autoScalingScalingPolicyCustomizedMetricSpecificationNamespace = namespacearg
  , _autoScalingScalingPolicyCustomizedMetricSpecificationStatistic = statisticarg
  , _autoScalingScalingPolicyCustomizedMetricSpecificationUnit = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-scalingpolicy-customizedmetricspecification.html#cfn-autoscaling-scalingpolicy-customizedmetricspecification-dimensions
asspcmsDimensions :: Lens' AutoScalingScalingPolicyCustomizedMetricSpecification (Maybe [AutoScalingScalingPolicyMetricDimension])
asspcmsDimensions = lens _autoScalingScalingPolicyCustomizedMetricSpecificationDimensions (\s a -> s { _autoScalingScalingPolicyCustomizedMetricSpecificationDimensions = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-scalingpolicy-customizedmetricspecification.html#cfn-autoscaling-scalingpolicy-customizedmetricspecification-metricname
asspcmsMetricName :: Lens' AutoScalingScalingPolicyCustomizedMetricSpecification (Val Text)
asspcmsMetricName = lens _autoScalingScalingPolicyCustomizedMetricSpecificationMetricName (\s a -> s { _autoScalingScalingPolicyCustomizedMetricSpecificationMetricName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-scalingpolicy-customizedmetricspecification.html#cfn-autoscaling-scalingpolicy-customizedmetricspecification-namespace
asspcmsNamespace :: Lens' AutoScalingScalingPolicyCustomizedMetricSpecification (Val Text)
asspcmsNamespace = lens _autoScalingScalingPolicyCustomizedMetricSpecificationNamespace (\s a -> s { _autoScalingScalingPolicyCustomizedMetricSpecificationNamespace = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-scalingpolicy-customizedmetricspecification.html#cfn-autoscaling-scalingpolicy-customizedmetricspecification-statistic
asspcmsStatistic :: Lens' AutoScalingScalingPolicyCustomizedMetricSpecification (Val Text)
asspcmsStatistic = lens _autoScalingScalingPolicyCustomizedMetricSpecificationStatistic (\s a -> s { _autoScalingScalingPolicyCustomizedMetricSpecificationStatistic = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-scalingpolicy-customizedmetricspecification.html#cfn-autoscaling-scalingpolicy-customizedmetricspecification-unit
asspcmsUnit :: Lens' AutoScalingScalingPolicyCustomizedMetricSpecification (Maybe (Val Text))
asspcmsUnit = lens _autoScalingScalingPolicyCustomizedMetricSpecificationUnit (\s a -> s { _autoScalingScalingPolicyCustomizedMetricSpecificationUnit = a })
