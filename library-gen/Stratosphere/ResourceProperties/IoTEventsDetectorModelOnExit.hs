
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-onexit.html

module Stratosphere.ResourceProperties.IoTEventsDetectorModelOnExit where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.IoTEventsDetectorModelEvent

-- | Full data type definition for IoTEventsDetectorModelOnExit. See
-- 'ioTEventsDetectorModelOnExit' for a more convenient constructor.
data IoTEventsDetectorModelOnExit =
  IoTEventsDetectorModelOnExit
  { _ioTEventsDetectorModelOnExitEvents :: Maybe [IoTEventsDetectorModelEvent]
  } deriving (Show, Eq)

instance ToJSON IoTEventsDetectorModelOnExit where
  toJSON IoTEventsDetectorModelOnExit{..} =
    object $
    catMaybes
    [ fmap (("Events",) . toJSON) _ioTEventsDetectorModelOnExitEvents
    ]

-- | Constructor for 'IoTEventsDetectorModelOnExit' containing required fields
-- as arguments.
ioTEventsDetectorModelOnExit
  :: IoTEventsDetectorModelOnExit
ioTEventsDetectorModelOnExit  =
  IoTEventsDetectorModelOnExit
  { _ioTEventsDetectorModelOnExitEvents = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-onexit.html#cfn-iotevents-detectormodel-onexit-events
itedmoexEvents :: Lens' IoTEventsDetectorModelOnExit (Maybe [IoTEventsDetectorModelEvent])
itedmoexEvents = lens _ioTEventsDetectorModelOnExitEvents (\s a -> s { _ioTEventsDetectorModelOnExitEvents = a })
