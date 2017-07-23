{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-thingprincipalattachment.html

module Stratosphere.Resources.IoTThingPrincipalAttachment where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for IoTThingPrincipalAttachment. See
-- 'ioTThingPrincipalAttachment' for a more convenient constructor.
data IoTThingPrincipalAttachment =
  IoTThingPrincipalAttachment
  { _ioTThingPrincipalAttachmentPrincipal :: Val Text
  , _ioTThingPrincipalAttachmentThingName :: Val Text
  } deriving (Show, Eq)

instance ToJSON IoTThingPrincipalAttachment where
  toJSON IoTThingPrincipalAttachment{..} =
    object $
    catMaybes
    [ (Just . ("Principal",) . toJSON) _ioTThingPrincipalAttachmentPrincipal
    , (Just . ("ThingName",) . toJSON) _ioTThingPrincipalAttachmentThingName
    ]

instance FromJSON IoTThingPrincipalAttachment where
  parseJSON (Object obj) =
    IoTThingPrincipalAttachment <$>
      (obj .: "Principal") <*>
      (obj .: "ThingName")
  parseJSON _ = mempty

-- | Constructor for 'IoTThingPrincipalAttachment' containing required fields
-- as arguments.
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
