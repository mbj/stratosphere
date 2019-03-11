{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-trigger-schedule.html

module Stratosphere.ResourceProperties.IoTAnalyticsDatasetSchedule where

import Stratosphere.ResourceImports


-- | Full data type definition for IoTAnalyticsDatasetSchedule. See
-- 'ioTAnalyticsDatasetSchedule' for a more convenient constructor.
data IoTAnalyticsDatasetSchedule =
  IoTAnalyticsDatasetSchedule
  { _ioTAnalyticsDatasetScheduleScheduleExpression :: Val Text
  } deriving (Show, Eq)

instance ToJSON IoTAnalyticsDatasetSchedule where
  toJSON IoTAnalyticsDatasetSchedule{..} =
    object $
    catMaybes
    [ (Just . ("ScheduleExpression",) . toJSON) _ioTAnalyticsDatasetScheduleScheduleExpression
    ]

-- | Constructor for 'IoTAnalyticsDatasetSchedule' containing required fields
-- as arguments.
ioTAnalyticsDatasetSchedule
  :: Val Text -- ^ 'itadsScheduleExpression'
  -> IoTAnalyticsDatasetSchedule
ioTAnalyticsDatasetSchedule scheduleExpressionarg =
  IoTAnalyticsDatasetSchedule
  { _ioTAnalyticsDatasetScheduleScheduleExpression = scheduleExpressionarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-trigger-schedule.html#cfn-iotanalytics-dataset-trigger-schedule-scheduleexpression
itadsScheduleExpression :: Lens' IoTAnalyticsDatasetSchedule (Val Text)
itadsScheduleExpression = lens _ioTAnalyticsDatasetScheduleScheduleExpression (\s a -> s { _ioTAnalyticsDatasetScheduleScheduleExpression = a })
