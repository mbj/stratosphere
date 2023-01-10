
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-blockdev-template.html

module Stratosphere.ResourceProperties.EC2InstanceEbs where

import Stratosphere.ResourceImports


-- | Full data type definition for EC2InstanceEbs. See 'ec2InstanceEbs' for a
-- more convenient constructor.
data EC2InstanceEbs =
  EC2InstanceEbs
  { _eC2InstanceEbsDeleteOnTermination :: Maybe (Val Bool)
  , _eC2InstanceEbsEncrypted :: Maybe (Val Bool)
  , _eC2InstanceEbsIops :: Maybe (Val Integer)
  , _eC2InstanceEbsKmsKeyId :: Maybe (Val Text)
  , _eC2InstanceEbsSnapshotId :: Maybe (Val Text)
  , _eC2InstanceEbsVolumeSize :: Maybe (Val Integer)
  , _eC2InstanceEbsVolumeType :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON EC2InstanceEbs where
  toJSON EC2InstanceEbs{..} =
    object $
    catMaybes
    [ fmap (("DeleteOnTermination",) . toJSON) _eC2InstanceEbsDeleteOnTermination
    , fmap (("Encrypted",) . toJSON) _eC2InstanceEbsEncrypted
    , fmap (("Iops",) . toJSON) _eC2InstanceEbsIops
    , fmap (("KmsKeyId",) . toJSON) _eC2InstanceEbsKmsKeyId
    , fmap (("SnapshotId",) . toJSON) _eC2InstanceEbsSnapshotId
    , fmap (("VolumeSize",) . toJSON) _eC2InstanceEbsVolumeSize
    , fmap (("VolumeType",) . toJSON) _eC2InstanceEbsVolumeType
    ]

-- | Constructor for 'EC2InstanceEbs' containing required fields as arguments.
ec2InstanceEbs
  :: EC2InstanceEbs
ec2InstanceEbs  =
  EC2InstanceEbs
  { _eC2InstanceEbsDeleteOnTermination = Nothing
  , _eC2InstanceEbsEncrypted = Nothing
  , _eC2InstanceEbsIops = Nothing
  , _eC2InstanceEbsKmsKeyId = Nothing
  , _eC2InstanceEbsSnapshotId = Nothing
  , _eC2InstanceEbsVolumeSize = Nothing
  , _eC2InstanceEbsVolumeType = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-blockdev-template.html#cfn-ec2-blockdev-template-deleteontermination
ecieDeleteOnTermination :: Lens' EC2InstanceEbs (Maybe (Val Bool))
ecieDeleteOnTermination = lens _eC2InstanceEbsDeleteOnTermination (\s a -> s { _eC2InstanceEbsDeleteOnTermination = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-blockdev-template.html#cfn-ec2-blockdev-template-encrypted
ecieEncrypted :: Lens' EC2InstanceEbs (Maybe (Val Bool))
ecieEncrypted = lens _eC2InstanceEbsEncrypted (\s a -> s { _eC2InstanceEbsEncrypted = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-blockdev-template.html#cfn-ec2-blockdev-template-iops
ecieIops :: Lens' EC2InstanceEbs (Maybe (Val Integer))
ecieIops = lens _eC2InstanceEbsIops (\s a -> s { _eC2InstanceEbsIops = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-blockdev-template.html#cfn-ec2-instance-ebs-kmskeyid
ecieKmsKeyId :: Lens' EC2InstanceEbs (Maybe (Val Text))
ecieKmsKeyId = lens _eC2InstanceEbsKmsKeyId (\s a -> s { _eC2InstanceEbsKmsKeyId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-blockdev-template.html#cfn-ec2-blockdev-template-snapshotid
ecieSnapshotId :: Lens' EC2InstanceEbs (Maybe (Val Text))
ecieSnapshotId = lens _eC2InstanceEbsSnapshotId (\s a -> s { _eC2InstanceEbsSnapshotId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-blockdev-template.html#cfn-ec2-blockdev-template-volumesize
ecieVolumeSize :: Lens' EC2InstanceEbs (Maybe (Val Integer))
ecieVolumeSize = lens _eC2InstanceEbsVolumeSize (\s a -> s { _eC2InstanceEbsVolumeSize = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-blockdev-template.html#cfn-ec2-blockdev-template-volumetype
ecieVolumeType :: Lens' EC2InstanceEbs (Maybe (Val Text))
ecieVolumeType = lens _eC2InstanceEbsVolumeType (\s a -> s { _eC2InstanceEbsVolumeType = a })
