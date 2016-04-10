{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | The Amazon Elastic Block Store block device type is an embedded property
-- of the Amazon EC2 Block Device Mapping Property property.

module Stratosphere.ResourceProperties.EBSBlockDevice where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for EBSBlockDevice. See 'ebsBlockDevice' for a
-- more convenient constructor.
data EBSBlockDevice =
  EBSBlockDevice
  { _eBSBlockDeviceDeleteOnTermination :: Maybe (Val Bool')
  , _eBSBlockDeviceEncrypted :: Maybe (Val Bool')
  , _eBSBlockDeviceIops :: Maybe (Val Integer')
  , _eBSBlockDeviceSnapshotId :: Maybe (Val Text)
  , _eBSBlockDeviceVolumeSize :: Maybe (Val Text)
  , _eBSBlockDeviceVolumeType :: Maybe (Val Text)
  } deriving (Show, Generic)

instance ToJSON EBSBlockDevice where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 15, omitNothingFields = True }

instance FromJSON EBSBlockDevice where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 15, omitNothingFields = True }

-- | Constructor for 'EBSBlockDevice' containing required fields as arguments.
ebsBlockDevice
  :: EBSBlockDevice
ebsBlockDevice  =
  EBSBlockDevice
  { _eBSBlockDeviceDeleteOnTermination = Nothing
  , _eBSBlockDeviceEncrypted = Nothing
  , _eBSBlockDeviceIops = Nothing
  , _eBSBlockDeviceSnapshotId = Nothing
  , _eBSBlockDeviceVolumeSize = Nothing
  , _eBSBlockDeviceVolumeType = Nothing
  }

-- | Determines whether to delete the volume on instance termination. The
-- default value is true.
ebsbdDeleteOnTermination :: Lens' EBSBlockDevice (Maybe (Val Bool'))
ebsbdDeleteOnTermination = lens _eBSBlockDeviceDeleteOnTermination (\s a -> s { _eBSBlockDeviceDeleteOnTermination = a })

-- | Indicates whether the volume is encrypted. Encrypted Amazon EBS volumes
-- can only be attached to instance types that support Amazon EBS encryption.
-- Volumes that are created from encrypted snapshots are automatically
-- encrypted. You cannot create an encrypted volume from an unencrypted
-- snapshot or vice versa. If your AMI uses encrypted volumes, you can only
-- launch the AMI on supported instance types. For more information, see
-- Amazon EBS encryption in the Amazon EC2 User Guide for Linux Instances.
ebsbdEncrypted :: Lens' EBSBlockDevice (Maybe (Val Bool'))
ebsbdEncrypted = lens _eBSBlockDeviceEncrypted (\s a -> s { _eBSBlockDeviceEncrypted = a })

-- | The number of I/O operations per second (IOPS) that the volume supports.
-- This can be an integer from 100 - 2000.
ebsbdIops :: Lens' EBSBlockDevice (Maybe (Val Integer'))
ebsbdIops = lens _eBSBlockDeviceIops (\s a -> s { _eBSBlockDeviceIops = a })

-- | The snapshot ID of the volume to use to create a block device.
ebsbdSnapshotId :: Lens' EBSBlockDevice (Maybe (Val Text))
ebsbdSnapshotId = lens _eBSBlockDeviceSnapshotId (\s a -> s { _eBSBlockDeviceSnapshotId = a })

-- | The volume size, in gibibytes (GiB). This can be a number from 1 – 1024.
-- If the volume type is io1, the minimum value is 10.
ebsbdVolumeSize :: Lens' EBSBlockDevice (Maybe (Val Text))
ebsbdVolumeSize = lens _eBSBlockDeviceVolumeSize (\s a -> s { _eBSBlockDeviceVolumeSize = a })

-- | The volume type. You can specify standard, io1, or gp2. If you set the
-- type to io1, you must also set the Iops property. For more information
-- about these values and the default value, see CreateVolume in the Amazon
-- EC2 API Reference.
ebsbdVolumeType :: Lens' EBSBlockDevice (Maybe (Val Text))
ebsbdVolumeType = lens _eBSBlockDeviceVolumeType (\s a -> s { _eBSBlockDeviceVolumeType = a })