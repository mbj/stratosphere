{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-thing-attributepayload.html

module Stratosphere.ResourceProperties.IoTThingAttributePayload where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for IoTThingAttributePayload. See
-- | 'ioTThingAttributePayload' for a more convenient constructor.
data IoTThingAttributePayload =
  IoTThingAttributePayload
  { _ioTThingAttributePayloadAttributes :: Maybe Object
  } deriving (Show, Generic)

instance ToJSON IoTThingAttributePayload where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 25, omitNothingFields = True }

instance FromJSON IoTThingAttributePayload where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 25, omitNothingFields = True }

-- | Constructor for 'IoTThingAttributePayload' containing required fields as
-- | arguments.
ioTThingAttributePayload
  :: IoTThingAttributePayload
ioTThingAttributePayload  =
  IoTThingAttributePayload
  { _ioTThingAttributePayloadAttributes = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-thing-attributepayload.html#cfn-iot-thing-attributepayload-attributes
ittapAttributes :: Lens' IoTThingAttributePayload (Maybe Object)
ittapAttributes = lens _ioTThingAttributePayloadAttributes (\s a -> s { _ioTThingAttributePayloadAttributes = a })
