{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-retentionperiod.html

module Stratosphere.ResourceProperties.IoTAnalyticsDatasetRetentionPeriod where

import Stratosphere.ResourceImports


-- | Full data type definition for IoTAnalyticsDatasetRetentionPeriod. See
-- 'ioTAnalyticsDatasetRetentionPeriod' for a more convenient constructor.
data IoTAnalyticsDatasetRetentionPeriod =
  IoTAnalyticsDatasetRetentionPeriod
  { _ioTAnalyticsDatasetRetentionPeriodNumberOfDays :: Val Integer
  , _ioTAnalyticsDatasetRetentionPeriodUnlimited :: Val Bool
  } deriving (Show, Eq)

instance ToJSON IoTAnalyticsDatasetRetentionPeriod where
  toJSON IoTAnalyticsDatasetRetentionPeriod{..} =
    object $
    catMaybes
    [ (Just . ("NumberOfDays",) . toJSON . fmap Integer') _ioTAnalyticsDatasetRetentionPeriodNumberOfDays
    , (Just . ("Unlimited",) . toJSON . fmap Bool') _ioTAnalyticsDatasetRetentionPeriodUnlimited
    ]

-- | Constructor for 'IoTAnalyticsDatasetRetentionPeriod' containing required
-- fields as arguments.
ioTAnalyticsDatasetRetentionPeriod
  :: Val Integer -- ^ 'itadsrpNumberOfDays'
  -> Val Bool -- ^ 'itadsrpUnlimited'
  -> IoTAnalyticsDatasetRetentionPeriod
ioTAnalyticsDatasetRetentionPeriod numberOfDaysarg unlimitedarg =
  IoTAnalyticsDatasetRetentionPeriod
  { _ioTAnalyticsDatasetRetentionPeriodNumberOfDays = numberOfDaysarg
  , _ioTAnalyticsDatasetRetentionPeriodUnlimited = unlimitedarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-retentionperiod.html#cfn-iotanalytics-dataset-retentionperiod-numberofdays
itadsrpNumberOfDays :: Lens' IoTAnalyticsDatasetRetentionPeriod (Val Integer)
itadsrpNumberOfDays = lens _ioTAnalyticsDatasetRetentionPeriodNumberOfDays (\s a -> s { _ioTAnalyticsDatasetRetentionPeriodNumberOfDays = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-retentionperiod.html#cfn-iotanalytics-dataset-retentionperiod-unlimited
itadsrpUnlimited :: Lens' IoTAnalyticsDatasetRetentionPeriod (Val Bool)
itadsrpUnlimited = lens _ioTAnalyticsDatasetRetentionPeriodUnlimited (\s a -> s { _ioTAnalyticsDatasetRetentionPeriodUnlimited = a })
