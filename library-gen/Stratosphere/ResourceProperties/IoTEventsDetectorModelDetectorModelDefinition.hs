
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-detectormodeldefinition.html

module Stratosphere.ResourceProperties.IoTEventsDetectorModelDetectorModelDefinition where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.IoTEventsDetectorModelState

-- | Full data type definition for
-- IoTEventsDetectorModelDetectorModelDefinition. See
-- 'ioTEventsDetectorModelDetectorModelDefinition' for a more convenient
-- constructor.
data IoTEventsDetectorModelDetectorModelDefinition =
  IoTEventsDetectorModelDetectorModelDefinition
  { _ioTEventsDetectorModelDetectorModelDefinitionInitialStateName :: Maybe (Val Text)
  , _ioTEventsDetectorModelDetectorModelDefinitionStates :: Maybe [IoTEventsDetectorModelState]
  } deriving (Show, Eq)

instance ToJSON IoTEventsDetectorModelDetectorModelDefinition where
  toJSON IoTEventsDetectorModelDetectorModelDefinition{..} =
    object $
    catMaybes
    [ fmap (("InitialStateName",) . toJSON) _ioTEventsDetectorModelDetectorModelDefinitionInitialStateName
    , fmap (("States",) . toJSON) _ioTEventsDetectorModelDetectorModelDefinitionStates
    ]

-- | Constructor for 'IoTEventsDetectorModelDetectorModelDefinition'
-- containing required fields as arguments.
ioTEventsDetectorModelDetectorModelDefinition
  :: IoTEventsDetectorModelDetectorModelDefinition
ioTEventsDetectorModelDetectorModelDefinition  =
  IoTEventsDetectorModelDetectorModelDefinition
  { _ioTEventsDetectorModelDetectorModelDefinitionInitialStateName = Nothing
  , _ioTEventsDetectorModelDetectorModelDefinitionStates = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-detectormodeldefinition.html#cfn-iotevents-detectormodel-detectormodeldefinition-initialstatename
itedmdmdInitialStateName :: Lens' IoTEventsDetectorModelDetectorModelDefinition (Maybe (Val Text))
itedmdmdInitialStateName = lens _ioTEventsDetectorModelDetectorModelDefinitionInitialStateName (\s a -> s { _ioTEventsDetectorModelDetectorModelDefinitionInitialStateName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-detectormodeldefinition.html#cfn-iotevents-detectormodel-detectormodeldefinition-states
itedmdmdStates :: Lens' IoTEventsDetectorModelDetectorModelDefinition (Maybe [IoTEventsDetectorModelState])
itedmdmdStates = lens _ioTEventsDetectorModelDetectorModelDefinitionStates (\s a -> s { _ioTEventsDetectorModelDetectorModelDefinitionStates = a })
