
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-channel-retentionperiod.html

module Stratosphere.ResourceProperties.IoTAnalyticsChannelRetentionPeriod where

import Stratosphere.ResourceImports


-- | Full data type definition for IoTAnalyticsChannelRetentionPeriod. See
-- 'ioTAnalyticsChannelRetentionPeriod' for a more convenient constructor.
data IoTAnalyticsChannelRetentionPeriod =
  IoTAnalyticsChannelRetentionPeriod
  { _ioTAnalyticsChannelRetentionPeriodNumberOfDays :: Maybe (Val Integer)
  , _ioTAnalyticsChannelRetentionPeriodUnlimited :: Maybe (Val Bool)
  } deriving (Show, Eq)

instance ToJSON IoTAnalyticsChannelRetentionPeriod where
  toJSON IoTAnalyticsChannelRetentionPeriod{..} =
    object $
    catMaybes
    [ fmap (("NumberOfDays",) . toJSON) _ioTAnalyticsChannelRetentionPeriodNumberOfDays
    , fmap (("Unlimited",) . toJSON) _ioTAnalyticsChannelRetentionPeriodUnlimited
    ]

-- | Constructor for 'IoTAnalyticsChannelRetentionPeriod' containing required
-- fields as arguments.
ioTAnalyticsChannelRetentionPeriod
  :: IoTAnalyticsChannelRetentionPeriod
ioTAnalyticsChannelRetentionPeriod  =
  IoTAnalyticsChannelRetentionPeriod
  { _ioTAnalyticsChannelRetentionPeriodNumberOfDays = Nothing
  , _ioTAnalyticsChannelRetentionPeriodUnlimited = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-channel-retentionperiod.html#cfn-iotanalytics-channel-retentionperiod-numberofdays
itacrpNumberOfDays :: Lens' IoTAnalyticsChannelRetentionPeriod (Maybe (Val Integer))
itacrpNumberOfDays = lens _ioTAnalyticsChannelRetentionPeriodNumberOfDays (\s a -> s { _ioTAnalyticsChannelRetentionPeriodNumberOfDays = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-channel-retentionperiod.html#cfn-iotanalytics-channel-retentionperiod-unlimited
itacrpUnlimited :: Lens' IoTAnalyticsChannelRetentionPeriod (Maybe (Val Bool))
itacrpUnlimited = lens _ioTAnalyticsChannelRetentionPeriodUnlimited (\s a -> s { _ioTAnalyticsChannelRetentionPeriodUnlimited = a })
