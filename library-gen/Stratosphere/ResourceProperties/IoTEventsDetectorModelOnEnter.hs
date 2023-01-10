
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-onenter.html

module Stratosphere.ResourceProperties.IoTEventsDetectorModelOnEnter where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.IoTEventsDetectorModelEvent

-- | Full data type definition for IoTEventsDetectorModelOnEnter. See
-- 'ioTEventsDetectorModelOnEnter' for a more convenient constructor.
data IoTEventsDetectorModelOnEnter =
  IoTEventsDetectorModelOnEnter
  { _ioTEventsDetectorModelOnEnterEvents :: Maybe [IoTEventsDetectorModelEvent]
  } deriving (Show, Eq)

instance ToJSON IoTEventsDetectorModelOnEnter where
  toJSON IoTEventsDetectorModelOnEnter{..} =
    object $
    catMaybes
    [ fmap (("Events",) . toJSON) _ioTEventsDetectorModelOnEnterEvents
    ]

-- | Constructor for 'IoTEventsDetectorModelOnEnter' containing required
-- fields as arguments.
ioTEventsDetectorModelOnEnter
  :: IoTEventsDetectorModelOnEnter
ioTEventsDetectorModelOnEnter  =
  IoTEventsDetectorModelOnEnter
  { _ioTEventsDetectorModelOnEnterEvents = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-onenter.html#cfn-iotevents-detectormodel-onenter-events
itedmoenEvents :: Lens' IoTEventsDetectorModelOnEnter (Maybe [IoTEventsDetectorModelEvent])
itedmoenEvents = lens _ioTEventsDetectorModelOnEnterEvents (\s a -> s { _ioTEventsDetectorModelOnEnterEvents = a })
