{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-input-inputdefinition.html

module Stratosphere.ResourceProperties.IoTEventsInputInputDefinition where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.IoTEventsInputAttribute

-- | Full data type definition for IoTEventsInputInputDefinition. See
-- 'ioTEventsInputInputDefinition' for a more convenient constructor.
data IoTEventsInputInputDefinition =
  IoTEventsInputInputDefinition
  { _ioTEventsInputInputDefinitionAttributes :: Maybe [IoTEventsInputAttribute]
  } deriving (Show, Eq)

instance ToJSON IoTEventsInputInputDefinition where
  toJSON IoTEventsInputInputDefinition{..} =
    object $
    catMaybes
    [ fmap (("Attributes",) . toJSON) _ioTEventsInputInputDefinitionAttributes
    ]

-- | Constructor for 'IoTEventsInputInputDefinition' containing required
-- fields as arguments.
ioTEventsInputInputDefinition
  :: IoTEventsInputInputDefinition
ioTEventsInputInputDefinition  =
  IoTEventsInputInputDefinition
  { _ioTEventsInputInputDefinitionAttributes = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-input-inputdefinition.html#cfn-iotevents-input-inputdefinition-attributes
iteiidAttributes :: Lens' IoTEventsInputInputDefinition (Maybe [IoTEventsInputAttribute])
iteiidAttributes = lens _ioTEventsInputInputDefinitionAttributes (\s a -> s { _ioTEventsInputInputDefinitionAttributes = a })
