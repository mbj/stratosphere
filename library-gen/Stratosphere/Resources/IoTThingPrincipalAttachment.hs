{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-thingprincipalattachment.html

module Stratosphere.Resources.IoTThingPrincipalAttachment where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for IoTThingPrincipalAttachment. See
-- | 'ioTThingPrincipalAttachment' for a more convenient constructor.
data IoTThingPrincipalAttachment =
  IoTThingPrincipalAttachment
  { _ioTThingPrincipalAttachmentPrincipal :: Val Text
  , _ioTThingPrincipalAttachmentThingName :: Val Text
  } deriving (Show, Generic)

instance ToJSON IoTThingPrincipalAttachment where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 28, omitNothingFields = True }

instance FromJSON IoTThingPrincipalAttachment where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 28, omitNothingFields = True }

-- | Constructor for 'IoTThingPrincipalAttachment' containing required fields
-- | as arguments.
ioTThingPrincipalAttachment
  :: Val Text -- ^ 'ittpaPrincipal'
  -> Val Text -- ^ 'ittpaThingName'
  -> IoTThingPrincipalAttachment
ioTThingPrincipalAttachment principalarg thingNamearg =
  IoTThingPrincipalAttachment
  { _ioTThingPrincipalAttachmentPrincipal = principalarg
  , _ioTThingPrincipalAttachmentThingName = thingNamearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-thingprincipalattachment.html#cfn-iot-thingprincipalattachment-principal
ittpaPrincipal :: Lens' IoTThingPrincipalAttachment (Val Text)
ittpaPrincipal = lens _ioTThingPrincipalAttachmentPrincipal (\s a -> s { _ioTThingPrincipalAttachmentPrincipal = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-thingprincipalattachment.html#cfn-iot-thingprincipalattachment-thingname
ittpaThingName :: Lens' IoTThingPrincipalAttachment (Val Text)
ittpaThingName = lens _ioTThingPrincipalAttachmentThingName (\s a -> s { _ioTThingPrincipalAttachmentThingName = a })
