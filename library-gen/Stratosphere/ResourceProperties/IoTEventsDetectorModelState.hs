
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-state.html

module Stratosphere.ResourceProperties.IoTEventsDetectorModelState where

import Prelude
import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.IoTEventsDetectorModelOnEnter
import Stratosphere.ResourceProperties.IoTEventsDetectorModelOnExit
import Stratosphere.ResourceProperties.IoTEventsDetectorModelOnInput

-- | Full data type definition for IoTEventsDetectorModelState. See
-- 'ioTEventsDetectorModelState' for a more convenient constructor.
data IoTEventsDetectorModelState =
  IoTEventsDetectorModelState
  { _ioTEventsDetectorModelStateOnEnter :: Maybe IoTEventsDetectorModelOnEnter
  , _ioTEventsDetectorModelStateOnExit :: Maybe IoTEventsDetectorModelOnExit
  , _ioTEventsDetectorModelStateOnInput :: Maybe IoTEventsDetectorModelOnInput
  , _ioTEventsDetectorModelStateStateName :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON IoTEventsDetectorModelState where
  toJSON IoTEventsDetectorModelState{..} =
    object $
    catMaybes
    [ fmap (("OnEnter",) . toJSON) _ioTEventsDetectorModelStateOnEnter
    , fmap (("OnExit",) . toJSON) _ioTEventsDetectorModelStateOnExit
    , fmap (("OnInput",) . toJSON) _ioTEventsDetectorModelStateOnInput
    , fmap (("StateName",) . toJSON) _ioTEventsDetectorModelStateStateName
    ]

-- | Constructor for 'IoTEventsDetectorModelState' containing required fields
-- as arguments.
ioTEventsDetectorModelState
  :: IoTEventsDetectorModelState
ioTEventsDetectorModelState  =
  IoTEventsDetectorModelState
  { _ioTEventsDetectorModelStateOnEnter = Nothing
  , _ioTEventsDetectorModelStateOnExit = Nothing
  , _ioTEventsDetectorModelStateOnInput = Nothing
  , _ioTEventsDetectorModelStateStateName = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-state.html#cfn-iotevents-detectormodel-state-onenter
itedmsOnEnter :: Lens' IoTEventsDetectorModelState (Maybe IoTEventsDetectorModelOnEnter)
itedmsOnEnter = lens _ioTEventsDetectorModelStateOnEnter (\s a -> s { _ioTEventsDetectorModelStateOnEnter = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-state.html#cfn-iotevents-detectormodel-state-onexit
itedmsOnExit :: Lens' IoTEventsDetectorModelState (Maybe IoTEventsDetectorModelOnExit)
itedmsOnExit = lens _ioTEventsDetectorModelStateOnExit (\s a -> s { _ioTEventsDetectorModelStateOnExit = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-state.html#cfn-iotevents-detectormodel-state-oninput
itedmsOnInput :: Lens' IoTEventsDetectorModelState (Maybe IoTEventsDetectorModelOnInput)
itedmsOnInput = lens _ioTEventsDetectorModelStateOnInput (\s a -> s { _ioTEventsDetectorModelStateOnInput = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-state.html#cfn-iotevents-detectormodel-state-statename
itedmsStateName :: Lens' IoTEventsDetectorModelState (Maybe (Val Text))
itedmsStateName = lens _ioTEventsDetectorModelStateStateName (\s a -> s { _ioTEventsDetectorModelStateStateName = a })
