{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | The EC2 MountPoint property is an embedded property of the
-- AWS::EC2::Instance type.

module Stratosphere.ResourceProperties.EC2MountPoint where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for EC2MountPoint. See 'ec2MountPoint' for a
-- more convenient constructor.
data EC2MountPoint =
  EC2MountPoint
  { _eC2MountPointDevice :: Val Text
  , _eC2MountPointVolumeId :: Val Text
  } deriving (Show, Generic)

instance ToJSON EC2MountPoint where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 14, omitNothingFields = True }

instance FromJSON EC2MountPoint where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 14, omitNothingFields = True }

-- | Constructor for 'EC2MountPoint' containing required fields as arguments.
ec2MountPoint
  :: Val Text -- ^ Device
  -> Val Text -- ^ VolumeId
  -> EC2MountPoint
ec2MountPoint devicearg volumeIdarg =
  EC2MountPoint
  { _eC2MountPointDevice = devicearg
  , _eC2MountPointVolumeId = volumeIdarg
  }

-- | How the device is exposed to the instance (such as /dev/sdh, or xvdh).
ecmpDevice :: Lens' EC2MountPoint (Val Text)
ecmpDevice = lens _eC2MountPointDevice (\s a -> s { _eC2MountPointDevice = a })

-- | The ID of the Amazon EBS volume. The volume and instance must be within
-- the same Availability Zone and the instance must be running.
ecmpVolumeId :: Lens' EC2MountPoint (Val Text)
ecmpVolumeId = lens _eC2MountPointVolumeId (\s a -> s { _eC2MountPointVolumeId = a })