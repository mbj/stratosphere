{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | The AutoScaling EBS Block Device type is an embedded property of the
-- AutoScaling Block Device Mapping type.

module Stratosphere.ResourceProperties.AutoScalingEBSBlockDevice where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for AutoScalingEBSBlockDevice. See
-- 'autoScalingEBSBlockDevice' for a more convenient constructor.
data AutoScalingEBSBlockDevice =
  AutoScalingEBSBlockDevice
  { _autoScalingEBSBlockDeviceDeleteOnTermination :: Maybe (Val Bool')
  , _autoScalingEBSBlockDeviceEncrypted :: Maybe (Val Bool')
  , _autoScalingEBSBlockDeviceIops :: Maybe (Val Integer')
  , _autoScalingEBSBlockDeviceSnapshotId :: Maybe (Val Text)
  , _autoScalingEBSBlockDeviceVolumeSize :: Maybe (Val Integer')
  , _autoScalingEBSBlockDeviceVolumeType :: Maybe (Val Text)
  } deriving (Show, Generic)

instance ToJSON AutoScalingEBSBlockDevice where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 26, omitNothingFields = True }

instance FromJSON AutoScalingEBSBlockDevice where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 26, omitNothingFields = True }

-- | Constructor for 'AutoScalingEBSBlockDevice' containing required fields as
-- arguments.
autoScalingEBSBlockDevice
  :: AutoScalingEBSBlockDevice
autoScalingEBSBlockDevice  =
  AutoScalingEBSBlockDevice
  { _autoScalingEBSBlockDeviceDeleteOnTermination = Nothing
  , _autoScalingEBSBlockDeviceEncrypted = Nothing
  , _autoScalingEBSBlockDeviceIops = Nothing
  , _autoScalingEBSBlockDeviceSnapshotId = Nothing
  , _autoScalingEBSBlockDeviceVolumeSize = Nothing
  , _autoScalingEBSBlockDeviceVolumeType = Nothing
  }

-- | Indicates whether to delete the volume when the instance is terminated.
-- By default, Auto Scaling uses true.
asebsbdDeleteOnTermination :: Lens' AutoScalingEBSBlockDevice (Maybe (Val Bool'))
asebsbdDeleteOnTermination = lens _autoScalingEBSBlockDeviceDeleteOnTermination (\s a -> s { _autoScalingEBSBlockDeviceDeleteOnTermination = a })

-- | Indicates whether the volume is encrypted. Encrypted EBS volumes must be
-- attached to instances that support Amazon EBS encryption. Volumes that you
-- create from encrypted snapshots are automatically encrypted. You cannot
-- create an encrypted volume from an unencrypted snapshot or an unencrypted
-- volume from an encrypted snapshot.
asebsbdEncrypted :: Lens' AutoScalingEBSBlockDevice (Maybe (Val Bool'))
asebsbdEncrypted = lens _autoScalingEBSBlockDeviceEncrypted (\s a -> s { _autoScalingEBSBlockDeviceEncrypted = a })

-- | The number of I/O operations per second (IOPS) that the volume supports.
-- The maximum ratio of IOPS to volume size is 30.
asebsbdIops :: Lens' AutoScalingEBSBlockDevice (Maybe (Val Integer'))
asebsbdIops = lens _autoScalingEBSBlockDeviceIops (\s a -> s { _autoScalingEBSBlockDeviceIops = a })

-- | The snapshot ID of the volume to use.
asebsbdSnapshotId :: Lens' AutoScalingEBSBlockDevice (Maybe (Val Text))
asebsbdSnapshotId = lens _autoScalingEBSBlockDeviceSnapshotId (\s a -> s { _autoScalingEBSBlockDeviceSnapshotId = a })

-- | The volume size, in Gibibytes (GiB). This can be a number from 1 – 1024.
-- If the volume type is EBS optimized, the minimum value is 10. For more
-- information about specifying the volume type, see EbsOptimized in
-- AWS::AutoScaling::LaunchConfiguration.
asebsbdVolumeSize :: Lens' AutoScalingEBSBlockDevice (Maybe (Val Integer'))
asebsbdVolumeSize = lens _autoScalingEBSBlockDeviceVolumeSize (\s a -> s { _autoScalingEBSBlockDeviceVolumeSize = a })

-- | The volume type. By default, Auto Scaling uses the standard volume type.
-- For more information, see Ebs in the Auto Scaling API Reference.
asebsbdVolumeType :: Lens' AutoScalingEBSBlockDevice (Maybe (Val Text))
asebsbdVolumeType = lens _autoScalingEBSBlockDeviceVolumeType (\s a -> s { _autoScalingEBSBlockDeviceVolumeType = a })