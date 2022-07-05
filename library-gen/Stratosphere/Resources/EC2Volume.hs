{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ebs-volume.html

module Stratosphere.Resources.EC2Volume where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for EC2Volume. See 'ec2Volume' for a more
-- convenient constructor.
data EC2Volume =
  EC2Volume
  { _eC2VolumeAutoEnableIO :: Maybe (Val Bool)
  , _eC2VolumeAvailabilityZone :: Val Text
  , _eC2VolumeEncrypted :: Maybe (Val Bool)
  , _eC2VolumeIops :: Maybe (Val Integer)
  , _eC2VolumeKmsKeyId :: Maybe (Val Text)
  , _eC2VolumeMultiAttachEnabled :: Maybe (Val Bool)
  , _eC2VolumeOutpostArn :: Maybe (Val Text)
  , _eC2VolumeSize :: Maybe (Val Integer)
  , _eC2VolumeSnapshotId :: Maybe (Val Text)
  , _eC2VolumeTags :: Maybe [Tag]
  , _eC2VolumeVolumeType :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToResourceProperties EC2Volume where
  toResourceProperties EC2Volume{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::EC2::Volume"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("AutoEnableIO",) . toJSON) _eC2VolumeAutoEnableIO
        , (Just . ("AvailabilityZone",) . toJSON) _eC2VolumeAvailabilityZone
        , fmap (("Encrypted",) . toJSON) _eC2VolumeEncrypted
        , fmap (("Iops",) . toJSON) _eC2VolumeIops
        , fmap (("KmsKeyId",) . toJSON) _eC2VolumeKmsKeyId
        , fmap (("MultiAttachEnabled",) . toJSON) _eC2VolumeMultiAttachEnabled
        , fmap (("OutpostArn",) . toJSON) _eC2VolumeOutpostArn
        , fmap (("Size",) . toJSON) _eC2VolumeSize
        , fmap (("SnapshotId",) . toJSON) _eC2VolumeSnapshotId
        , fmap (("Tags",) . toJSON) _eC2VolumeTags
        , fmap (("VolumeType",) . toJSON) _eC2VolumeVolumeType
        ]
    }

-- | Constructor for 'EC2Volume' containing required fields as arguments.
ec2Volume
  :: Val Text -- ^ 'ecvAvailabilityZone'
  -> EC2Volume
ec2Volume availabilityZonearg =
  EC2Volume
  { _eC2VolumeAutoEnableIO = Nothing
  , _eC2VolumeAvailabilityZone = availabilityZonearg
  , _eC2VolumeEncrypted = Nothing
  , _eC2VolumeIops = Nothing
  , _eC2VolumeKmsKeyId = Nothing
  , _eC2VolumeMultiAttachEnabled = Nothing
  , _eC2VolumeOutpostArn = Nothing
  , _eC2VolumeSize = Nothing
  , _eC2VolumeSnapshotId = Nothing
  , _eC2VolumeTags = Nothing
  , _eC2VolumeVolumeType = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ebs-volume.html#cfn-ec2-ebs-volume-autoenableio
ecvAutoEnableIO :: Lens' EC2Volume (Maybe (Val Bool))
ecvAutoEnableIO = lens _eC2VolumeAutoEnableIO (\s a -> s { _eC2VolumeAutoEnableIO = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ebs-volume.html#cfn-ec2-ebs-volume-availabilityzone
ecvAvailabilityZone :: Lens' EC2Volume (Val Text)
ecvAvailabilityZone = lens _eC2VolumeAvailabilityZone (\s a -> s { _eC2VolumeAvailabilityZone = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ebs-volume.html#cfn-ec2-ebs-volume-encrypted
ecvEncrypted :: Lens' EC2Volume (Maybe (Val Bool))
ecvEncrypted = lens _eC2VolumeEncrypted (\s a -> s { _eC2VolumeEncrypted = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ebs-volume.html#cfn-ec2-ebs-volume-iops
ecvIops :: Lens' EC2Volume (Maybe (Val Integer))
ecvIops = lens _eC2VolumeIops (\s a -> s { _eC2VolumeIops = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ebs-volume.html#cfn-ec2-ebs-volume-kmskeyid
ecvKmsKeyId :: Lens' EC2Volume (Maybe (Val Text))
ecvKmsKeyId = lens _eC2VolumeKmsKeyId (\s a -> s { _eC2VolumeKmsKeyId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ebs-volume.html#cfn-ec2-ebs-volume-multiattachenabled
ecvMultiAttachEnabled :: Lens' EC2Volume (Maybe (Val Bool))
ecvMultiAttachEnabled = lens _eC2VolumeMultiAttachEnabled (\s a -> s { _eC2VolumeMultiAttachEnabled = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ebs-volume.html#cfn-ec2-ebs-volume-outpostarn
ecvOutpostArn :: Lens' EC2Volume (Maybe (Val Text))
ecvOutpostArn = lens _eC2VolumeOutpostArn (\s a -> s { _eC2VolumeOutpostArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ebs-volume.html#cfn-ec2-ebs-volume-size
ecvSize :: Lens' EC2Volume (Maybe (Val Integer))
ecvSize = lens _eC2VolumeSize (\s a -> s { _eC2VolumeSize = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ebs-volume.html#cfn-ec2-ebs-volume-snapshotid
ecvSnapshotId :: Lens' EC2Volume (Maybe (Val Text))
ecvSnapshotId = lens _eC2VolumeSnapshotId (\s a -> s { _eC2VolumeSnapshotId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ebs-volume.html#cfn-ec2-ebs-volume-tags
ecvTags :: Lens' EC2Volume (Maybe [Tag])
ecvTags = lens _eC2VolumeTags (\s a -> s { _eC2VolumeTags = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ebs-volume.html#cfn-ec2-ebs-volume-volumetype
ecvVolumeType :: Lens' EC2Volume (Maybe (Val Text))
ecvVolumeType = lens _eC2VolumeVolumeType (\s a -> s { _eC2VolumeVolumeType = a })
