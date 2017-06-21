{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancegroupconfig-metricdimension.html

module Stratosphere.ResourceProperties.EMRInstanceGroupConfigMetricDimension where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for EMRInstanceGroupConfigMetricDimension. See
-- 'emrInstanceGroupConfigMetricDimension' for a more convenient
-- constructor.
data EMRInstanceGroupConfigMetricDimension =
  EMRInstanceGroupConfigMetricDimension
  { _eMRInstanceGroupConfigMetricDimensionKey :: Val Text
  , _eMRInstanceGroupConfigMetricDimensionValue :: Val Text
  } deriving (Show, Eq)

instance ToJSON EMRInstanceGroupConfigMetricDimension where
  toJSON EMRInstanceGroupConfigMetricDimension{..} =
    object $
    catMaybes
    [ Just ("Key" .= _eMRInstanceGroupConfigMetricDimensionKey)
    , Just ("Value" .= _eMRInstanceGroupConfigMetricDimensionValue)
    ]

instance FromJSON EMRInstanceGroupConfigMetricDimension where
  parseJSON (Object obj) =
    EMRInstanceGroupConfigMetricDimension <$>
      obj .: "Key" <*>
      obj .: "Value"
  parseJSON _ = mempty

-- | Constructor for 'EMRInstanceGroupConfigMetricDimension' containing
-- required fields as arguments.
emrInstanceGroupConfigMetricDimension
  :: Val Text -- ^ 'emrigcmdKey'
  -> Val Text -- ^ 'emrigcmdValue'
  -> EMRInstanceGroupConfigMetricDimension
emrInstanceGroupConfigMetricDimension keyarg valuearg =
  EMRInstanceGroupConfigMetricDimension
  { _eMRInstanceGroupConfigMetricDimensionKey = keyarg
  , _eMRInstanceGroupConfigMetricDimensionValue = valuearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancegroupconfig-metricdimension.html#cfn-elasticmapreduce-instancegroupconfig-metricdimension-key
emrigcmdKey :: Lens' EMRInstanceGroupConfigMetricDimension (Val Text)
emrigcmdKey = lens _eMRInstanceGroupConfigMetricDimensionKey (\s a -> s { _eMRInstanceGroupConfigMetricDimensionKey = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancegroupconfig-metricdimension.html#cfn-elasticmapreduce-instancegroupconfig-metricdimension-value
emrigcmdValue :: Lens' EMRInstanceGroupConfigMetricDimension (Val Text)
emrigcmdValue = lens _eMRInstanceGroupConfigMetricDimensionValue (\s a -> s { _eMRInstanceGroupConfigMetricDimensionValue = a })
