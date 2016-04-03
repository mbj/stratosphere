{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | Attaches an Amazon EBS volume to a running instance and exposes it to the
-- instance with the specified device name.

module Stratosphere.Resources.VolumeAttachment where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


data VolumeAttachment =
  VolumeAttachment
  { _volumeAttachmentDevice :: Val Text
  , _volumeAttachmentInstanceId :: Val Text
  , _volumeAttachmentVolumeId :: Val Text
  } deriving (Show, Generic)

instance ToJSON VolumeAttachment where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 17, omitNothingFields = True }

instance FromJSON VolumeAttachment where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 17, omitNothingFields = True }

volumeAttachment
  :: Val Text -- ^ Device
  -> Val Text -- ^ InstanceId
  -> Val Text -- ^ VolumeId
  -> VolumeAttachment
volumeAttachment devicearg instanceIdarg volumeIdarg =
  VolumeAttachment
  { _volumeAttachmentDevice = devicearg
  , _volumeAttachmentInstanceId = instanceIdarg
  , _volumeAttachmentVolumeId = volumeIdarg
  }

-- | How the device is exposed to the instance (e.g., /dev/sdh, or xvdh).
vaDevice :: Lens' VolumeAttachment (Val Text)
vaDevice = lens _volumeAttachmentDevice (\s a -> s { _volumeAttachmentDevice = a })

-- | The ID of the instance to which the volume attaches. This value can be a
-- reference to an AWS::EC2::Instance resource, or it can be the physical ID
-- of an existing EC2 instance.
vaInstanceId :: Lens' VolumeAttachment (Val Text)
vaInstanceId = lens _volumeAttachmentInstanceId (\s a -> s { _volumeAttachmentInstanceId = a })

-- | The ID of the Amazon EBS volume. The volume and instance must be within
-- the same Availability Zone. This value can be a reference to an
-- AWS::EC2::Volume resource, or it can be the volume ID of an existing Amazon
-- EBS volume.
vaVolumeId :: Lens' VolumeAttachment (Val Text)
vaVolumeId = lens _volumeAttachmentVolumeId (\s a -> s { _volumeAttachmentVolumeId = a })