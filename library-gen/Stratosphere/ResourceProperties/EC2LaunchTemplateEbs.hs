{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-blockdevicemapping-ebs.html

module Stratosphere.ResourceProperties.EC2LaunchTemplateEbs where

import Stratosphere.ResourceImports


-- | Full data type definition for EC2LaunchTemplateEbs. See
-- 'ec2LaunchTemplateEbs' for a more convenient constructor.
data EC2LaunchTemplateEbs =
  EC2LaunchTemplateEbs
  { _eC2LaunchTemplateEbsDeleteOnTermination :: Maybe (Val Bool)
  , _eC2LaunchTemplateEbsEncrypted :: Maybe (Val Bool)
  , _eC2LaunchTemplateEbsIops :: Maybe (Val Integer)
  , _eC2LaunchTemplateEbsKmsKeyId :: Maybe (Val Text)
  , _eC2LaunchTemplateEbsSnapshotId :: Maybe (Val Text)
  , _eC2LaunchTemplateEbsVolumeSize :: Maybe (Val Integer)
  , _eC2LaunchTemplateEbsVolumeType :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON EC2LaunchTemplateEbs where
  toJSON EC2LaunchTemplateEbs{..} =
    object $
    catMaybes
    [ fmap (("DeleteOnTermination",) . toJSON . fmap Bool') _eC2LaunchTemplateEbsDeleteOnTermination
    , fmap (("Encrypted",) . toJSON . fmap Bool') _eC2LaunchTemplateEbsEncrypted
    , fmap (("Iops",) . toJSON . fmap Integer') _eC2LaunchTemplateEbsIops
    , fmap (("KmsKeyId",) . toJSON) _eC2LaunchTemplateEbsKmsKeyId
    , fmap (("SnapshotId",) . toJSON) _eC2LaunchTemplateEbsSnapshotId
    , fmap (("VolumeSize",) . toJSON . fmap Integer') _eC2LaunchTemplateEbsVolumeSize
    , fmap (("VolumeType",) . toJSON) _eC2LaunchTemplateEbsVolumeType
    ]

-- | Constructor for 'EC2LaunchTemplateEbs' containing required fields as
-- arguments.
ec2LaunchTemplateEbs
  :: EC2LaunchTemplateEbs
ec2LaunchTemplateEbs  =
  EC2LaunchTemplateEbs
  { _eC2LaunchTemplateEbsDeleteOnTermination = Nothing
  , _eC2LaunchTemplateEbsEncrypted = Nothing
  , _eC2LaunchTemplateEbsIops = Nothing
  , _eC2LaunchTemplateEbsKmsKeyId = Nothing
  , _eC2LaunchTemplateEbsSnapshotId = Nothing
  , _eC2LaunchTemplateEbsVolumeSize = Nothing
  , _eC2LaunchTemplateEbsVolumeType = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-blockdevicemapping-ebs.html#cfn-ec2-launchtemplate-blockdevicemapping-ebs-deleteontermination
eclteDeleteOnTermination :: Lens' EC2LaunchTemplateEbs (Maybe (Val Bool))
eclteDeleteOnTermination = lens _eC2LaunchTemplateEbsDeleteOnTermination (\s a -> s { _eC2LaunchTemplateEbsDeleteOnTermination = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-blockdevicemapping-ebs.html#cfn-ec2-launchtemplate-blockdevicemapping-ebs-encrypted
eclteEncrypted :: Lens' EC2LaunchTemplateEbs (Maybe (Val Bool))
eclteEncrypted = lens _eC2LaunchTemplateEbsEncrypted (\s a -> s { _eC2LaunchTemplateEbsEncrypted = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-blockdevicemapping-ebs.html#cfn-ec2-launchtemplate-blockdevicemapping-ebs-iops
eclteIops :: Lens' EC2LaunchTemplateEbs (Maybe (Val Integer))
eclteIops = lens _eC2LaunchTemplateEbsIops (\s a -> s { _eC2LaunchTemplateEbsIops = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-blockdevicemapping-ebs.html#cfn-ec2-launchtemplate-blockdevicemapping-ebs-kmskeyid
eclteKmsKeyId :: Lens' EC2LaunchTemplateEbs (Maybe (Val Text))
eclteKmsKeyId = lens _eC2LaunchTemplateEbsKmsKeyId (\s a -> s { _eC2LaunchTemplateEbsKmsKeyId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-blockdevicemapping-ebs.html#cfn-ec2-launchtemplate-blockdevicemapping-ebs-snapshotid
eclteSnapshotId :: Lens' EC2LaunchTemplateEbs (Maybe (Val Text))
eclteSnapshotId = lens _eC2LaunchTemplateEbsSnapshotId (\s a -> s { _eC2LaunchTemplateEbsSnapshotId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-blockdevicemapping-ebs.html#cfn-ec2-launchtemplate-blockdevicemapping-ebs-volumesize
eclteVolumeSize :: Lens' EC2LaunchTemplateEbs (Maybe (Val Integer))
eclteVolumeSize = lens _eC2LaunchTemplateEbsVolumeSize (\s a -> s { _eC2LaunchTemplateEbsVolumeSize = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-blockdevicemapping-ebs.html#cfn-ec2-launchtemplate-blockdevicemapping-ebs-volumetype
eclteVolumeType :: Lens' EC2LaunchTemplateEbs (Maybe (Val Text))
eclteVolumeType = lens _eC2LaunchTemplateEbsVolumeType (\s a -> s { _eC2LaunchTemplateEbsVolumeType = a })
