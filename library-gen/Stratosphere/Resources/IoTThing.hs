{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-thing.html

module Stratosphere.Resources.IoTThing where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.ResourceProperties.IoTThingAttributePayload

-- | Full data type definition for IoTThing. See 'ioTThing' for a more
-- | convenient constructor.
data IoTThing =
  IoTThing
  { _ioTThingAttributePayload :: Maybe IoTThingAttributePayload
  , _ioTThingThingName :: Maybe (Val Text)
  } deriving (Show, Generic)

instance ToJSON IoTThing where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 9, omitNothingFields = True }

instance FromJSON IoTThing where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 9, omitNothingFields = True }

-- | Constructor for 'IoTThing' containing required fields as arguments.
ioTThing
  :: IoTThing
ioTThing  =
  IoTThing
  { _ioTThingAttributePayload = Nothing
  , _ioTThingThingName = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-thing.html#cfn-iot-thing-attributepayload
ittAttributePayload :: Lens' IoTThing (Maybe IoTThingAttributePayload)
ittAttributePayload = lens _ioTThingAttributePayload (\s a -> s { _ioTThingAttributePayload = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-thing.html#cfn-iot-thing-thingname
ittThingName :: Lens' IoTThing (Maybe (Val Text))
ittThingName = lens _ioTThingThingName (\s a -> s { _ioTThingThingName = a })
