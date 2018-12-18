{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-trigger.html

module Stratosphere.ResourceProperties.IoTAnalyticsDatasetTrigger where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.IoTAnalyticsDatasetSchedule
import Stratosphere.ResourceProperties.IoTAnalyticsDatasetTriggeringDataset

-- | Full data type definition for IoTAnalyticsDatasetTrigger. See
-- 'ioTAnalyticsDatasetTrigger' for a more convenient constructor.
data IoTAnalyticsDatasetTrigger =
  IoTAnalyticsDatasetTrigger
  { _ioTAnalyticsDatasetTriggerSchedule :: Maybe IoTAnalyticsDatasetSchedule
  , _ioTAnalyticsDatasetTriggerTriggeringDataset :: Maybe IoTAnalyticsDatasetTriggeringDataset
  } deriving (Show, Eq)

instance ToJSON IoTAnalyticsDatasetTrigger where
  toJSON IoTAnalyticsDatasetTrigger{..} =
    object $
    catMaybes
    [ fmap (("Schedule",) . toJSON) _ioTAnalyticsDatasetTriggerSchedule
    , fmap (("TriggeringDataset",) . toJSON) _ioTAnalyticsDatasetTriggerTriggeringDataset
    ]

instance FromJSON IoTAnalyticsDatasetTrigger where
  parseJSON (Object obj) =
    IoTAnalyticsDatasetTrigger <$>
      (obj .:? "Schedule") <*>
      (obj .:? "TriggeringDataset")
  parseJSON _ = mempty

-- | Constructor for 'IoTAnalyticsDatasetTrigger' containing required fields
-- as arguments.
ioTAnalyticsDatasetTrigger
  :: IoTAnalyticsDatasetTrigger
ioTAnalyticsDatasetTrigger  =
  IoTAnalyticsDatasetTrigger
  { _ioTAnalyticsDatasetTriggerSchedule = Nothing
  , _ioTAnalyticsDatasetTriggerTriggeringDataset = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-trigger.html#cfn-iotanalytics-dataset-trigger-schedule
itadtSchedule :: Lens' IoTAnalyticsDatasetTrigger (Maybe IoTAnalyticsDatasetSchedule)
itadtSchedule = lens _ioTAnalyticsDatasetTriggerSchedule (\s a -> s { _ioTAnalyticsDatasetTriggerSchedule = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-trigger.html#cfn-iotanalytics-dataset-trigger-triggeringdataset
itadtTriggeringDataset :: Lens' IoTAnalyticsDatasetTrigger (Maybe IoTAnalyticsDatasetTriggeringDataset)
itadtTriggeringDataset = lens _ioTAnalyticsDatasetTriggerTriggeringDataset (\s a -> s { _ioTAnalyticsDatasetTriggerTriggeringDataset = a })
