{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-event.html

module Stratosphere.ResourceProperties.IoTEventsDetectorModelEvent where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.IoTEventsDetectorModelAction

-- | Full data type definition for IoTEventsDetectorModelEvent. See
-- 'ioTEventsDetectorModelEvent' for a more convenient constructor.
data IoTEventsDetectorModelEvent =
  IoTEventsDetectorModelEvent
  { _ioTEventsDetectorModelEventActions :: Maybe [IoTEventsDetectorModelAction]
  , _ioTEventsDetectorModelEventCondition :: Maybe (Val Text)
  , _ioTEventsDetectorModelEventEventName :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON IoTEventsDetectorModelEvent where
  toJSON IoTEventsDetectorModelEvent{..} =
    object $
    catMaybes
    [ fmap (("Actions",) . toJSON) _ioTEventsDetectorModelEventActions
    , fmap (("Condition",) . toJSON) _ioTEventsDetectorModelEventCondition
    , fmap (("EventName",) . toJSON) _ioTEventsDetectorModelEventEventName
    ]

-- | Constructor for 'IoTEventsDetectorModelEvent' containing required fields
-- as arguments.
ioTEventsDetectorModelEvent
  :: IoTEventsDetectorModelEvent
ioTEventsDetectorModelEvent  =
  IoTEventsDetectorModelEvent
  { _ioTEventsDetectorModelEventActions = Nothing
  , _ioTEventsDetectorModelEventCondition = Nothing
  , _ioTEventsDetectorModelEventEventName = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-event.html#cfn-iotevents-detectormodel-event-actions
itedmeActions :: Lens' IoTEventsDetectorModelEvent (Maybe [IoTEventsDetectorModelAction])
itedmeActions = lens _ioTEventsDetectorModelEventActions (\s a -> s { _ioTEventsDetectorModelEventActions = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-event.html#cfn-iotevents-detectormodel-event-condition
itedmeCondition :: Lens' IoTEventsDetectorModelEvent (Maybe (Val Text))
itedmeCondition = lens _ioTEventsDetectorModelEventCondition (\s a -> s { _ioTEventsDetectorModelEventCondition = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-event.html#cfn-iotevents-detectormodel-event-eventname
itedmeEventName :: Lens' IoTEventsDetectorModelEvent (Maybe (Val Text))
itedmeEventName = lens _ioTEventsDetectorModelEventEventName (\s a -> s { _ioTEventsDetectorModelEventEventName = a })
