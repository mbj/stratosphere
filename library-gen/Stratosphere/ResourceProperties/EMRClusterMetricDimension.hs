{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-metricdimension.html

module Stratosphere.ResourceProperties.EMRClusterMetricDimension where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for EMRClusterMetricDimension. See
-- 'emrClusterMetricDimension' for a more convenient constructor.
data EMRClusterMetricDimension =
  EMRClusterMetricDimension
  { _eMRClusterMetricDimensionKey :: Val Text
  , _eMRClusterMetricDimensionValue :: Val Text
  } deriving (Show, Eq)

instance ToJSON EMRClusterMetricDimension where
  toJSON EMRClusterMetricDimension{..} =
    object $
    catMaybes
    [ Just ("Key" .= _eMRClusterMetricDimensionKey)
    , Just ("Value" .= _eMRClusterMetricDimensionValue)
    ]

instance FromJSON EMRClusterMetricDimension where
  parseJSON (Object obj) =
    EMRClusterMetricDimension <$>
      obj .: "Key" <*>
      obj .: "Value"
  parseJSON _ = mempty

-- | Constructor for 'EMRClusterMetricDimension' containing required fields as
-- arguments.
emrClusterMetricDimension
  :: Val Text -- ^ 'emrcmdKey'
  -> Val Text -- ^ 'emrcmdValue'
  -> EMRClusterMetricDimension
emrClusterMetricDimension keyarg valuearg =
  EMRClusterMetricDimension
  { _eMRClusterMetricDimensionKey = keyarg
  , _eMRClusterMetricDimensionValue = valuearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-metricdimension.html#cfn-elasticmapreduce-cluster-metricdimension-key
emrcmdKey :: Lens' EMRClusterMetricDimension (Val Text)
emrcmdKey = lens _eMRClusterMetricDimensionKey (\s a -> s { _eMRClusterMetricDimensionKey = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-metricdimension.html#cfn-elasticmapreduce-cluster-metricdimension-value
emrcmdValue :: Lens' EMRClusterMetricDimension (Val Text)
emrcmdValue = lens _eMRClusterMetricDimensionValue (\s a -> s { _eMRClusterMetricDimensionValue = a })
