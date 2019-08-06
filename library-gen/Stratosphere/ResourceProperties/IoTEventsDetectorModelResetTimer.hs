{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-resettimer.html

module Stratosphere.ResourceProperties.IoTEventsDetectorModelResetTimer where

import Stratosphere.ResourceImports


-- | Full data type definition for IoTEventsDetectorModelResetTimer. See
-- 'ioTEventsDetectorModelResetTimer' for a more convenient constructor.
data IoTEventsDetectorModelResetTimer =
  IoTEventsDetectorModelResetTimer
  { _ioTEventsDetectorModelResetTimerTimerName :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON IoTEventsDetectorModelResetTimer where
  toJSON IoTEventsDetectorModelResetTimer{..} =
    object $
    catMaybes
    [ fmap (("TimerName",) . toJSON) _ioTEventsDetectorModelResetTimerTimerName
    ]

-- | Constructor for 'IoTEventsDetectorModelResetTimer' containing required
-- fields as arguments.
ioTEventsDetectorModelResetTimer
  :: IoTEventsDetectorModelResetTimer
ioTEventsDetectorModelResetTimer  =
  IoTEventsDetectorModelResetTimer
  { _ioTEventsDetectorModelResetTimerTimerName = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-resettimer.html#cfn-iotevents-detectormodel-resettimer-timername
itedmrtTimerName :: Lens' IoTEventsDetectorModelResetTimer (Maybe (Val Text))
itedmrtTimerName = lens _ioTEventsDetectorModelResetTimerTimerName (\s a -> s { _ioTEventsDetectorModelResetTimerTimerName = a })
