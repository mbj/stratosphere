{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-setvariable.html

module Stratosphere.ResourceProperties.IoTEventsDetectorModelSetVariable where

import Stratosphere.ResourceImports


-- | Full data type definition for IoTEventsDetectorModelSetVariable. See
-- 'ioTEventsDetectorModelSetVariable' for a more convenient constructor.
data IoTEventsDetectorModelSetVariable =
  IoTEventsDetectorModelSetVariable
  { _ioTEventsDetectorModelSetVariableValue :: Maybe (Val Text)
  , _ioTEventsDetectorModelSetVariableVariableName :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON IoTEventsDetectorModelSetVariable where
  toJSON IoTEventsDetectorModelSetVariable{..} =
    object $
    catMaybes
    [ fmap (("Value",) . toJSON) _ioTEventsDetectorModelSetVariableValue
    , fmap (("VariableName",) . toJSON) _ioTEventsDetectorModelSetVariableVariableName
    ]

-- | Constructor for 'IoTEventsDetectorModelSetVariable' containing required
-- fields as arguments.
ioTEventsDetectorModelSetVariable
  :: IoTEventsDetectorModelSetVariable
ioTEventsDetectorModelSetVariable  =
  IoTEventsDetectorModelSetVariable
  { _ioTEventsDetectorModelSetVariableValue = Nothing
  , _ioTEventsDetectorModelSetVariableVariableName = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-setvariable.html#cfn-iotevents-detectormodel-setvariable-value
itedmsvValue :: Lens' IoTEventsDetectorModelSetVariable (Maybe (Val Text))
itedmsvValue = lens _ioTEventsDetectorModelSetVariableValue (\s a -> s { _ioTEventsDetectorModelSetVariableValue = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-setvariable.html#cfn-iotevents-detectormodel-setvariable-variablename
itedmsvVariableName :: Lens' IoTEventsDetectorModelSetVariable (Maybe (Val Text))
itedmsvVariableName = lens _ioTEventsDetectorModelSetVariableVariableName (\s a -> s { _ioTEventsDetectorModelSetVariableVariableName = a })
