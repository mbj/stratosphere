{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-filter.html

module Stratosphere.ResourceProperties.IoTAnalyticsDatasetFilter where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.IoTAnalyticsDatasetDeltaTime

-- | Full data type definition for IoTAnalyticsDatasetFilter. See
-- 'ioTAnalyticsDatasetFilter' for a more convenient constructor.
data IoTAnalyticsDatasetFilter =
  IoTAnalyticsDatasetFilter
  { _ioTAnalyticsDatasetFilterDeltaTime :: Maybe IoTAnalyticsDatasetDeltaTime
  } deriving (Show, Eq)

instance ToJSON IoTAnalyticsDatasetFilter where
  toJSON IoTAnalyticsDatasetFilter{..} =
    object $
    catMaybes
    [ fmap (("DeltaTime",) . toJSON) _ioTAnalyticsDatasetFilterDeltaTime
    ]

-- | Constructor for 'IoTAnalyticsDatasetFilter' containing required fields as
-- arguments.
ioTAnalyticsDatasetFilter
  :: IoTAnalyticsDatasetFilter
ioTAnalyticsDatasetFilter  =
  IoTAnalyticsDatasetFilter
  { _ioTAnalyticsDatasetFilterDeltaTime = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-filter.html#cfn-iotanalytics-dataset-filter-deltatime
itadfDeltaTime :: Lens' IoTAnalyticsDatasetFilter (Maybe IoTAnalyticsDatasetDeltaTime)
itadfDeltaTime = lens _ioTAnalyticsDatasetFilterDeltaTime (\s a -> s { _ioTAnalyticsDatasetFilterDeltaTime = a })
