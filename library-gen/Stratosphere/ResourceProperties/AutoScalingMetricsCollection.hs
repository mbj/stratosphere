{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | The MetricsCollection is a property of the
-- AWS::AutoScaling::AutoScalingGroup resource that describes the group
-- metrics that an Auto Scaling group sends to CloudWatch. These metrics
-- describe the group rather than any of its instances. For more information,
-- see EnableMetricsCollection in the Auto Scaling API Reference.

module Stratosphere.ResourceProperties.AutoScalingMetricsCollection where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for AutoScalingMetricsCollection. See
-- 'autoScalingMetricsCollection' for a more convenient constructor.
data AutoScalingMetricsCollection =
  AutoScalingMetricsCollection
  { _autoScalingMetricsCollectionGranularity :: Val Text
  , _autoScalingMetricsCollectionMetrics :: Maybe [Val Text]
  } deriving (Show, Generic)

instance ToJSON AutoScalingMetricsCollection where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 29, omitNothingFields = True }

instance FromJSON AutoScalingMetricsCollection where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 29, omitNothingFields = True }

-- | Constructor for 'AutoScalingMetricsCollection' containing required fields
-- as arguments.
autoScalingMetricsCollection
  :: Val Text -- ^ 'asmcGranularity'
  -> AutoScalingMetricsCollection
autoScalingMetricsCollection granularityarg =
  AutoScalingMetricsCollection
  { _autoScalingMetricsCollectionGranularity = granularityarg
  , _autoScalingMetricsCollectionMetrics = Nothing
  }

-- | The frequency at which Auto Scaling sends aggregated data to CloudWatch.
-- For example, you can specify 1Minute to send aggregated data to CloudWatch
-- every minute.
asmcGranularity :: Lens' AutoScalingMetricsCollection (Val Text)
asmcGranularity = lens _autoScalingMetricsCollectionGranularity (\s a -> s { _autoScalingMetricsCollectionGranularity = a })

-- | The list of metrics to collect. If you don't specify any metrics, all
-- metrics are enabled.
asmcMetrics :: Lens' AutoScalingMetricsCollection (Maybe [Val Text])
asmcMetrics = lens _autoScalingMetricsCollectionMetrics (\s a -> s { _autoScalingMetricsCollectionMetrics = a })