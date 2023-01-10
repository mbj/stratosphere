
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-transitionevent.html

module Stratosphere.ResourceProperties.IoTEventsDetectorModelTransitionEvent where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.IoTEventsDetectorModelAction

-- | Full data type definition for IoTEventsDetectorModelTransitionEvent. See
-- 'ioTEventsDetectorModelTransitionEvent' for a more convenient
-- constructor.
data IoTEventsDetectorModelTransitionEvent =
  IoTEventsDetectorModelTransitionEvent
  { _ioTEventsDetectorModelTransitionEventActions :: Maybe [IoTEventsDetectorModelAction]
  , _ioTEventsDetectorModelTransitionEventCondition :: Maybe (Val Text)
  , _ioTEventsDetectorModelTransitionEventEventName :: Maybe (Val Text)
  , _ioTEventsDetectorModelTransitionEventNextState :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON IoTEventsDetectorModelTransitionEvent where
  toJSON IoTEventsDetectorModelTransitionEvent{..} =
    object $
    catMaybes
    [ fmap (("Actions",) . toJSON) _ioTEventsDetectorModelTransitionEventActions
    , fmap (("Condition",) . toJSON) _ioTEventsDetectorModelTransitionEventCondition
    , fmap (("EventName",) . toJSON) _ioTEventsDetectorModelTransitionEventEventName
    , fmap (("NextState",) . toJSON) _ioTEventsDetectorModelTransitionEventNextState
    ]

-- | Constructor for 'IoTEventsDetectorModelTransitionEvent' containing
-- required fields as arguments.
ioTEventsDetectorModelTransitionEvent
  :: IoTEventsDetectorModelTransitionEvent
ioTEventsDetectorModelTransitionEvent  =
  IoTEventsDetectorModelTransitionEvent
  { _ioTEventsDetectorModelTransitionEventActions = Nothing
  , _ioTEventsDetectorModelTransitionEventCondition = Nothing
  , _ioTEventsDetectorModelTransitionEventEventName = Nothing
  , _ioTEventsDetectorModelTransitionEventNextState = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-transitionevent.html#cfn-iotevents-detectormodel-transitionevent-actions
itedmteActions :: Lens' IoTEventsDetectorModelTransitionEvent (Maybe [IoTEventsDetectorModelAction])
itedmteActions = lens _ioTEventsDetectorModelTransitionEventActions (\s a -> s { _ioTEventsDetectorModelTransitionEventActions = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-transitionevent.html#cfn-iotevents-detectormodel-transitionevent-condition
itedmteCondition :: Lens' IoTEventsDetectorModelTransitionEvent (Maybe (Val Text))
itedmteCondition = lens _ioTEventsDetectorModelTransitionEventCondition (\s a -> s { _ioTEventsDetectorModelTransitionEventCondition = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-transitionevent.html#cfn-iotevents-detectormodel-transitionevent-eventname
itedmteEventName :: Lens' IoTEventsDetectorModelTransitionEvent (Maybe (Val Text))
itedmteEventName = lens _ioTEventsDetectorModelTransitionEventEventName (\s a -> s { _ioTEventsDetectorModelTransitionEventEventName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-transitionevent.html#cfn-iotevents-detectormodel-transitionevent-nextstate
itedmteNextState :: Lens' IoTEventsDetectorModelTransitionEvent (Maybe (Val Text))
itedmteNextState = lens _ioTEventsDetectorModelTransitionEventNextState (\s a -> s { _ioTEventsDetectorModelTransitionEventNextState = a })
