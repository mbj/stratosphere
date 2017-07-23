{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-metricscollection.html

module Stratosphere.ResourceProperties.AutoScalingAutoScalingGroupMetricsCollection where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for
-- AutoScalingAutoScalingGroupMetricsCollection. See
-- 'autoScalingAutoScalingGroupMetricsCollection' for a more convenient
-- constructor.
data AutoScalingAutoScalingGroupMetricsCollection =
  AutoScalingAutoScalingGroupMetricsCollection
  { _autoScalingAutoScalingGroupMetricsCollectionGranularity :: Val Text
  , _autoScalingAutoScalingGroupMetricsCollectionMetrics :: Maybe (ValList Text)
  } deriving (Show, Eq)

instance ToJSON AutoScalingAutoScalingGroupMetricsCollection where
  toJSON AutoScalingAutoScalingGroupMetricsCollection{..} =
    object $
    catMaybes
    [ (Just . ("Granularity",) . toJSON) _autoScalingAutoScalingGroupMetricsCollectionGranularity
    , fmap (("Metrics",) . toJSON) _autoScalingAutoScalingGroupMetricsCollectionMetrics
    ]

instance FromJSON AutoScalingAutoScalingGroupMetricsCollection where
  parseJSON (Object obj) =
    AutoScalingAutoScalingGroupMetricsCollection <$>
      (obj .: "Granularity") <*>
      (obj .:? "Metrics")
  parseJSON _ = mempty

-- | Constructor for 'AutoScalingAutoScalingGroupMetricsCollection' containing
-- required fields as arguments.
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
asasgmcMetrics :: Lens' AutoScalingAutoScalingGroupMetricsCollection (Maybe (ValList Text))
asasgmcMetrics = lens _autoScalingAutoScalingGroupMetricsCollectionMetrics (\s a -> s { _autoScalingAutoScalingGroupMetricsCollectionMetrics = a })
