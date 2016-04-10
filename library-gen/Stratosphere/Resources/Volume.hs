{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | The AWS::EC2::Volume type creates a new Amazon Elastic Block Store
-- (Amazon EBS) volume. You can set a deletion policy for your volume to
-- control how AWS CloudFormation handles the volume when the stack is
-- deleted. For Amazon EBS volumes, you can choose to retain the volume, to
-- delete the volume, or to create a snapshot of the volume. For more
-- information, see DeletionPolicy Attribute.

module Stratosphere.Resources.Volume where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.ResourceProperties.ResourceTag

-- | Full data type definition for Volume. See 'volume' for a more convenient
-- constructor.
data Volume =
  Volume
  { _volumeAutoEnableIO :: Maybe (Val Bool')
  , _volumeAvailabilityZone :: Val Text
  , _volumeEncrypted :: Maybe (Val Bool')
  , _volumeIops :: Maybe (Val Integer')
  , _volumeKmsKeyId :: Maybe (Val Text)
  , _volumeSize :: Maybe (Val Text)
  , _volumeSnapshotId :: Maybe (Val Text)
  , _volumeTags :: Maybe [ResourceTag]
  , _volumeVolumeType :: Maybe (Val Text)
  } deriving (Show, Generic)

instance ToJSON Volume where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 7, omitNothingFields = True }

instance FromJSON Volume where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 7, omitNothingFields = True }

-- | Constructor for 'Volume' containing required fields as arguments.
volume
  :: Val Text -- ^ AvailabilityZone
  -> Volume
volume availabilityZonearg =
  Volume
  { _volumeAutoEnableIO = Nothing
  , _volumeAvailabilityZone = availabilityZonearg
  , _volumeEncrypted = Nothing
  , _volumeIops = Nothing
  , _volumeKmsKeyId = Nothing
  , _volumeSize = Nothing
  , _volumeSnapshotId = Nothing
  , _volumeTags = Nothing
  , _volumeVolumeType = Nothing
  }

-- | Indicates whether the volume is auto-enabled for I/O operations. By
-- default, Amazon EBS disables I/O to the volume from attached EC2 instances
-- when it determines that a volume's data is potentially inconsistent. If the
-- consistency of the volume is not a concern, and you prefer that the volume
-- be made available immediately if it's impaired, you can configure the
-- volume to automatically enable I/O. For more information, see Working with
-- the AutoEnableIO Volume Attribute in the Amazon EC2 User Guide for Linux
-- Instances.
vAutoEnableIO :: Lens' Volume (Maybe (Val Bool'))
vAutoEnableIO = lens _volumeAutoEnableIO (\s a -> s { _volumeAutoEnableIO = a })

-- | The Availability Zone in which to create the new volume.
vAvailabilityZone :: Lens' Volume (Val Text)
vAvailabilityZone = lens _volumeAvailabilityZone (\s a -> s { _volumeAvailabilityZone = a })

-- | Indicates whether the volume is encrypted. Encrypted Amazon EBS volumes
-- can only be attached to instance types that support Amazon EBS encryption.
-- Volumes that are created from encrypted snapshots are automatically
-- encrypted. You cannot create an encrypted volume from an unencrypted
-- snapshot or vice versa. If your AMI uses encrypted volumes, you can only
-- launch the AMI on supported instance types. For more information, see
-- Amazon EBS encryption in the Amazon EC2 User Guide for Linux Instances.
vEncrypted :: Lens' Volume (Maybe (Val Bool'))
vEncrypted = lens _volumeEncrypted (\s a -> s { _volumeEncrypted = a })

-- | The number of I/O operations per second (IOPS) that the volume supports.
-- For more information about the valid sizes for each volume type, see the
-- Iops parameter for the CreateVolume action in the Amazon EC2 API Reference.
vIops :: Lens' Volume (Maybe (Val Integer'))
vIops = lens _volumeIops (\s a -> s { _volumeIops = a })

-- | The Amazon Resource Name (ARN) of the AWS Key Management Service master
-- key that is used to create the encrypted volume, such as
-- arn:aws:kms:us-east-1:012345678910:key/abcd1234-a123-456a-a12b-a123b4cd56ef.
-- If you create an encrypted volume and don't specify this property, the
-- default master key is used.
vKmsKeyId :: Lens' Volume (Maybe (Val Text))
vKmsKeyId = lens _volumeKmsKeyId (\s a -> s { _volumeKmsKeyId = a })

-- | The size of the volume, in gibibytes (GiBs). For more information about
-- the valid sizes for each volume type, see the Size parameter for the
-- CreateVolume action in the Amazon EC2 API Reference. If you specify the
-- SnapshotId property, specify a size that is equal to or greater than the
-- snapshot size. If you don't specify a size, Amazon EC2 will use the size of
-- the snapshot as the volume size.
vSize :: Lens' Volume (Maybe (Val Text))
vSize = lens _volumeSize (\s a -> s { _volumeSize = a })

-- | The snapshot from which to create the new volume.
vSnapshotId :: Lens' Volume (Maybe (Val Text))
vSnapshotId = lens _volumeSnapshotId (\s a -> s { _volumeSnapshotId = a })

-- | An arbitrary set of tags (key–value pairs) for this volume.
vTags :: Lens' Volume (Maybe [ResourceTag])
vTags = lens _volumeTags (\s a -> s { _volumeTags = a })

-- | The volume type. You can specify standard, io1, or gp2. If you set the
-- type to io1, you must also set the Iops property. For more information
-- about these values and the default value, see the VolumeType parameter for
-- the CreateVolume action in the Amazon EC2 API Reference.
vVolumeType :: Lens' Volume (Maybe (Val Text))
vVolumeType = lens _volumeVolumeType (\s a -> s { _volumeVolumeType = a })