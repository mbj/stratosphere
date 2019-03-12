{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-datastore-retentionperiod.html

module Stratosphere.ResourceProperties.IoTAnalyticsDatastoreRetentionPeriod where

import Stratosphere.ResourceImports


-- | Full data type definition for IoTAnalyticsDatastoreRetentionPeriod. See
-- 'ioTAnalyticsDatastoreRetentionPeriod' for a more convenient constructor.
data IoTAnalyticsDatastoreRetentionPeriod =
  IoTAnalyticsDatastoreRetentionPeriod
  { _ioTAnalyticsDatastoreRetentionPeriodNumberOfDays :: Maybe (Val Integer)
  , _ioTAnalyticsDatastoreRetentionPeriodUnlimited :: Maybe (Val Bool)
  } deriving (Show, Eq)

instance ToJSON IoTAnalyticsDatastoreRetentionPeriod where
  toJSON IoTAnalyticsDatastoreRetentionPeriod{..} =
    object $
    catMaybes
    [ fmap (("NumberOfDays",) . toJSON . fmap Integer') _ioTAnalyticsDatastoreRetentionPeriodNumberOfDays
    , fmap (("Unlimited",) . toJSON . fmap Bool') _ioTAnalyticsDatastoreRetentionPeriodUnlimited
    ]

-- | Constructor for 'IoTAnalyticsDatastoreRetentionPeriod' containing
-- required fields as arguments.
ioTAnalyticsDatastoreRetentionPeriod
  :: IoTAnalyticsDatastoreRetentionPeriod
ioTAnalyticsDatastoreRetentionPeriod  =
  IoTAnalyticsDatastoreRetentionPeriod
  { _ioTAnalyticsDatastoreRetentionPeriodNumberOfDays = Nothing
  , _ioTAnalyticsDatastoreRetentionPeriodUnlimited = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-datastore-retentionperiod.html#cfn-iotanalytics-datastore-retentionperiod-numberofdays
itadstrpNumberOfDays :: Lens' IoTAnalyticsDatastoreRetentionPeriod (Maybe (Val Integer))
itadstrpNumberOfDays = lens _ioTAnalyticsDatastoreRetentionPeriodNumberOfDays (\s a -> s { _ioTAnalyticsDatastoreRetentionPeriodNumberOfDays = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-datastore-retentionperiod.html#cfn-iotanalytics-datastore-retentionperiod-unlimited
itadstrpUnlimited :: Lens' IoTAnalyticsDatastoreRetentionPeriod (Maybe (Val Bool))
itadstrpUnlimited = lens _ioTAnalyticsDatastoreRetentionPeriodUnlimited (\s a -> s { _ioTAnalyticsDatastoreRetentionPeriodUnlimited = a })
