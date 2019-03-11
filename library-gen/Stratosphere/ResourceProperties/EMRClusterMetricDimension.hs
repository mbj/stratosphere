{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-metricdimension.html

module Stratosphere.ResourceProperties.EMRClusterMetricDimension where

import Stratosphere.ResourceImports


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
    [ (Just . ("Key",) . toJSON) _eMRClusterMetricDimensionKey
    , (Just . ("Value",) . toJSON) _eMRClusterMetricDimensionValue
    ]

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
