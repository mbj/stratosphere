{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-cleartimer.html

module Stratosphere.ResourceProperties.IoTEventsDetectorModelClearTimer where

import Stratosphere.ResourceImports


-- | Full data type definition for IoTEventsDetectorModelClearTimer. See
-- 'ioTEventsDetectorModelClearTimer' for a more convenient constructor.
data IoTEventsDetectorModelClearTimer =
  IoTEventsDetectorModelClearTimer
  { _ioTEventsDetectorModelClearTimerTimerName :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON IoTEventsDetectorModelClearTimer where
  toJSON IoTEventsDetectorModelClearTimer{..} =
    object $
    catMaybes
    [ fmap (("TimerName",) . toJSON) _ioTEventsDetectorModelClearTimerTimerName
    ]

-- | Constructor for 'IoTEventsDetectorModelClearTimer' containing required
-- fields as arguments.
ioTEventsDetectorModelClearTimer
  :: IoTEventsDetectorModelClearTimer
ioTEventsDetectorModelClearTimer  =
  IoTEventsDetectorModelClearTimer
  { _ioTEventsDetectorModelClearTimerTimerName = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-cleartimer.html#cfn-iotevents-detectormodel-cleartimer-timername
itedmctTimerName :: Lens' IoTEventsDetectorModelClearTimer (Maybe (Val Text))
itedmctTimerName = lens _ioTEventsDetectorModelClearTimerTimerName (\s a -> s { _ioTEventsDetectorModelClearTimerTimerName = a })
