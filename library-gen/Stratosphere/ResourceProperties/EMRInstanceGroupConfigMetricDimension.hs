
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancegroupconfig-metricdimension.html

module Stratosphere.ResourceProperties.EMRInstanceGroupConfigMetricDimension where

import Stratosphere.ResourceImports


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
    [ (Just . ("Key",) . toJSON) _eMRInstanceGroupConfigMetricDimensionKey
    , (Just . ("Value",) . toJSON) _eMRInstanceGroupConfigMetricDimensionValue
    ]

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
