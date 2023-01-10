
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-oninput.html

module Stratosphere.ResourceProperties.IoTEventsDetectorModelOnInput where

import Prelude
import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.IoTEventsDetectorModelEvent
import Stratosphere.ResourceProperties.IoTEventsDetectorModelTransitionEvent

-- | Full data type definition for IoTEventsDetectorModelOnInput. See
-- 'ioTEventsDetectorModelOnInput' for a more convenient constructor.
data IoTEventsDetectorModelOnInput =
  IoTEventsDetectorModelOnInput
  { _ioTEventsDetectorModelOnInputEvents :: Maybe [IoTEventsDetectorModelEvent]
  , _ioTEventsDetectorModelOnInputTransitionEvents :: Maybe [IoTEventsDetectorModelTransitionEvent]
  } deriving (Show, Eq)

instance ToJSON IoTEventsDetectorModelOnInput where
  toJSON IoTEventsDetectorModelOnInput{..} =
    object $
    catMaybes
    [ fmap (("Events",) . toJSON) _ioTEventsDetectorModelOnInputEvents
    , fmap (("TransitionEvents",) . toJSON) _ioTEventsDetectorModelOnInputTransitionEvents
    ]

-- | Constructor for 'IoTEventsDetectorModelOnInput' containing required
-- fields as arguments.
ioTEventsDetectorModelOnInput
  :: IoTEventsDetectorModelOnInput
ioTEventsDetectorModelOnInput  =
  IoTEventsDetectorModelOnInput
  { _ioTEventsDetectorModelOnInputEvents = Nothing
  , _ioTEventsDetectorModelOnInputTransitionEvents = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-oninput.html#cfn-iotevents-detectormodel-oninput-events
itedmoiEvents :: Lens' IoTEventsDetectorModelOnInput (Maybe [IoTEventsDetectorModelEvent])
itedmoiEvents = lens _ioTEventsDetectorModelOnInputEvents (\s a -> s { _ioTEventsDetectorModelOnInputEvents = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-oninput.html#cfn-iotevents-detectormodel-oninput-transitionevents
itedmoiTransitionEvents :: Lens' IoTEventsDetectorModelOnInput (Maybe [IoTEventsDetectorModelTransitionEvent])
itedmoiTransitionEvents = lens _ioTEventsDetectorModelOnInputTransitionEvents (\s a -> s { _ioTEventsDetectorModelOnInputTransitionEvents = a })
