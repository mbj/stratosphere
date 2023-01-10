
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-settimer.html

module Stratosphere.ResourceProperties.IoTEventsDetectorModelSetTimer where

import Stratosphere.ResourceImports


-- | Full data type definition for IoTEventsDetectorModelSetTimer. See
-- 'ioTEventsDetectorModelSetTimer' for a more convenient constructor.
data IoTEventsDetectorModelSetTimer =
  IoTEventsDetectorModelSetTimer
  { _ioTEventsDetectorModelSetTimerDurationExpression :: Maybe (Val Text)
  , _ioTEventsDetectorModelSetTimerSeconds :: Maybe (Val Integer)
  , _ioTEventsDetectorModelSetTimerTimerName :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON IoTEventsDetectorModelSetTimer where
  toJSON IoTEventsDetectorModelSetTimer{..} =
    object $
    catMaybes
    [ fmap (("DurationExpression",) . toJSON) _ioTEventsDetectorModelSetTimerDurationExpression
    , fmap (("Seconds",) . toJSON) _ioTEventsDetectorModelSetTimerSeconds
    , fmap (("TimerName",) . toJSON) _ioTEventsDetectorModelSetTimerTimerName
    ]

-- | Constructor for 'IoTEventsDetectorModelSetTimer' containing required
-- fields as arguments.
ioTEventsDetectorModelSetTimer
  :: IoTEventsDetectorModelSetTimer
ioTEventsDetectorModelSetTimer  =
  IoTEventsDetectorModelSetTimer
  { _ioTEventsDetectorModelSetTimerDurationExpression = Nothing
  , _ioTEventsDetectorModelSetTimerSeconds = Nothing
  , _ioTEventsDetectorModelSetTimerTimerName = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-settimer.html#cfn-iotevents-detectormodel-settimer-durationexpression
itedmstDurationExpression :: Lens' IoTEventsDetectorModelSetTimer (Maybe (Val Text))
itedmstDurationExpression = lens _ioTEventsDetectorModelSetTimerDurationExpression (\s a -> s { _ioTEventsDetectorModelSetTimerDurationExpression = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-settimer.html#cfn-iotevents-detectormodel-settimer-seconds
itedmstSeconds :: Lens' IoTEventsDetectorModelSetTimer (Maybe (Val Integer))
itedmstSeconds = lens _ioTEventsDetectorModelSetTimerSeconds (\s a -> s { _ioTEventsDetectorModelSetTimerSeconds = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-settimer.html#cfn-iotevents-detectormodel-settimer-timername
itedmstTimerName :: Lens' IoTEventsDetectorModelSetTimer (Maybe (Val Text))
itedmstTimerName = lens _ioTEventsDetectorModelSetTimerTimerName (\s a -> s { _ioTEventsDetectorModelSetTimerTimerName = a })
