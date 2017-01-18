{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-metricscollection.html

module Stratosphere.ResourceProperties.AutoScalingAutoScalingGroupMetricsCollection where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for
-- | AutoScalingAutoScalingGroupMetricsCollection. See
-- | 'autoScalingAutoScalingGroupMetricsCollection' for a more convenient
-- | constructor.
data AutoScalingAutoScalingGroupMetricsCollection =
  AutoScalingAutoScalingGroupMetricsCollection
  { _autoScalingAutoScalingGroupMetricsCollectionGranularity :: Val Text
  , _autoScalingAutoScalingGroupMetricsCollectionMetrics :: Maybe [Val Text]
  } deriving (Show, Eq, Generic)

instance ToJSON AutoScalingAutoScalingGroupMetricsCollection where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 45, omitNothingFields = True }

instance FromJSON AutoScalingAutoScalingGroupMetricsCollection where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 45, omitNothingFields = True }

-- | Constructor for 'AutoScalingAutoScalingGroupMetricsCollection' containing
-- | required fields as arguments.
autoScalingAutoScalingGroupMetricsCollection
  :: Val Text -- ^ 'asasgmcGranularity'
  -> AutoScalingAutoScalingGroupMetricsCollection
autoScalingAutoScalingGroupMetricsCollection granularityarg =
  AutoScalingAutoScalingGroupMetricsCollection
  { _autoScalingAutoScalingGroupMetricsCollectionGranularity = granularityarg
  , _autoScalingAutoScalingGroupMetricsCollectionMetrics = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-metricscollection.html#cfn-as-metricscollection-granularity
asasgmcGranularity :: Lens' AutoScalingAutoScalingGroupMetricsCollection (Val Text)
asasgmcGranularity = lens _autoScalingAutoScalingGroupMetricsCollectionGranularity (\s a -> s { _autoScalingAutoScalingGroupMetricsCollectionGranularity = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-metricscollection.html#cfn-as-metricscollection-metrics
asasgmcMetrics :: Lens' AutoScalingAutoScalingGroupMetricsCollection (Maybe [Val Text])
asasgmcMetrics = lens _autoScalingAutoScalingGroupMetricsCollectionMetrics (\s a -> s { _autoScalingAutoScalingGroupMetricsCollectionMetrics = a })
