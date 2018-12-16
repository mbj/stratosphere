{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-triggeringdataset.html

module Stratosphere.ResourceProperties.IoTAnalyticsDatasetTriggeringDataset where

import Stratosphere.ResourceImports


-- | Full data type definition for IoTAnalyticsDatasetTriggeringDataset. See
-- 'ioTAnalyticsDatasetTriggeringDataset' for a more convenient constructor.
data IoTAnalyticsDatasetTriggeringDataset =
  IoTAnalyticsDatasetTriggeringDataset
  { _ioTAnalyticsDatasetTriggeringDatasetDatasetName :: Val Text
  } deriving (Show, Eq)

instance ToJSON IoTAnalyticsDatasetTriggeringDataset where
  toJSON IoTAnalyticsDatasetTriggeringDataset{..} =
    object $
    catMaybes
    [ (Just . ("DatasetName",) . toJSON) _ioTAnalyticsDatasetTriggeringDatasetDatasetName
    ]

instance FromJSON IoTAnalyticsDatasetTriggeringDataset where
  parseJSON (Object obj) =
    IoTAnalyticsDatasetTriggeringDataset <$>
      (obj .: "DatasetName")
  parseJSON _ = mempty

-- | Constructor for 'IoTAnalyticsDatasetTriggeringDataset' containing
-- required fields as arguments.
ioTAnalyticsDatasetTriggeringDataset
  :: Val Text -- ^ 'itadtdDatasetName'
  -> IoTAnalyticsDatasetTriggeringDataset
ioTAnalyticsDatasetTriggeringDataset datasetNamearg =
  IoTAnalyticsDatasetTriggeringDataset
  { _ioTAnalyticsDatasetTriggeringDatasetDatasetName = datasetNamearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-triggeringdataset.html#cfn-iotanalytics-dataset-triggeringdataset-datasetname
itadtdDatasetName :: Lens' IoTAnalyticsDatasetTriggeringDataset (Val Text)
itadtdDatasetName = lens _ioTAnalyticsDatasetTriggeringDatasetDatasetName (\s a -> s { _ioTAnalyticsDatasetTriggeringDatasetDatasetName = a })
