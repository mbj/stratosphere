
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-imagerecipe-ebsinstanceblockdevicespecification.html

module Stratosphere.ResourceProperties.ImageBuilderImageRecipeEbsInstanceBlockDeviceSpecification where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- ImageBuilderImageRecipeEbsInstanceBlockDeviceSpecification. See
-- 'imageBuilderImageRecipeEbsInstanceBlockDeviceSpecification' for a more
-- convenient constructor.
data ImageBuilderImageRecipeEbsInstanceBlockDeviceSpecification =
  ImageBuilderImageRecipeEbsInstanceBlockDeviceSpecification
  { _imageBuilderImageRecipeEbsInstanceBlockDeviceSpecificationDeleteOnTermination :: Maybe (Val Bool)
  , _imageBuilderImageRecipeEbsInstanceBlockDeviceSpecificationEncrypted :: Maybe (Val Bool)
  , _imageBuilderImageRecipeEbsInstanceBlockDeviceSpecificationIops :: Maybe (Val Integer)
  , _imageBuilderImageRecipeEbsInstanceBlockDeviceSpecificationKmsKeyId :: Maybe (Val Text)
  , _imageBuilderImageRecipeEbsInstanceBlockDeviceSpecificationSnapshotId :: Maybe (Val Text)
  , _imageBuilderImageRecipeEbsInstanceBlockDeviceSpecificationVolumeSize :: Maybe (Val Integer)
  , _imageBuilderImageRecipeEbsInstanceBlockDeviceSpecificationVolumeType :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON ImageBuilderImageRecipeEbsInstanceBlockDeviceSpecification where
  toJSON ImageBuilderImageRecipeEbsInstanceBlockDeviceSpecification{..} =
    object $
    catMaybes
    [ fmap (("DeleteOnTermination",) . toJSON) _imageBuilderImageRecipeEbsInstanceBlockDeviceSpecificationDeleteOnTermination
    , fmap (("Encrypted",) . toJSON) _imageBuilderImageRecipeEbsInstanceBlockDeviceSpecificationEncrypted
    , fmap (("Iops",) . toJSON) _imageBuilderImageRecipeEbsInstanceBlockDeviceSpecificationIops
    , fmap (("KmsKeyId",) . toJSON) _imageBuilderImageRecipeEbsInstanceBlockDeviceSpecificationKmsKeyId
    , fmap (("SnapshotId",) . toJSON) _imageBuilderImageRecipeEbsInstanceBlockDeviceSpecificationSnapshotId
    , fmap (("VolumeSize",) . toJSON) _imageBuilderImageRecipeEbsInstanceBlockDeviceSpecificationVolumeSize
    , fmap (("VolumeType",) . toJSON) _imageBuilderImageRecipeEbsInstanceBlockDeviceSpecificationVolumeType
    ]

-- | Constructor for
-- 'ImageBuilderImageRecipeEbsInstanceBlockDeviceSpecification' containing
-- required fields as arguments.
imageBuilderImageRecipeEbsInstanceBlockDeviceSpecification
  :: ImageBuilderImageRecipeEbsInstanceBlockDeviceSpecification
imageBuilderImageRecipeEbsInstanceBlockDeviceSpecification  =
  ImageBuilderImageRecipeEbsInstanceBlockDeviceSpecification
  { _imageBuilderImageRecipeEbsInstanceBlockDeviceSpecificationDeleteOnTermination = Nothing
  , _imageBuilderImageRecipeEbsInstanceBlockDeviceSpecificationEncrypted = Nothing
  , _imageBuilderImageRecipeEbsInstanceBlockDeviceSpecificationIops = Nothing
  , _imageBuilderImageRecipeEbsInstanceBlockDeviceSpecificationKmsKeyId = Nothing
  , _imageBuilderImageRecipeEbsInstanceBlockDeviceSpecificationSnapshotId = Nothing
  , _imageBuilderImageRecipeEbsInstanceBlockDeviceSpecificationVolumeSize = Nothing
  , _imageBuilderImageRecipeEbsInstanceBlockDeviceSpecificationVolumeType = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-imagerecipe-ebsinstanceblockdevicespecification.html#cfn-imagebuilder-imagerecipe-ebsinstanceblockdevicespecification-deleteontermination
ibireibdsDeleteOnTermination :: Lens' ImageBuilderImageRecipeEbsInstanceBlockDeviceSpecification (Maybe (Val Bool))
ibireibdsDeleteOnTermination = lens _imageBuilderImageRecipeEbsInstanceBlockDeviceSpecificationDeleteOnTermination (\s a -> s { _imageBuilderImageRecipeEbsInstanceBlockDeviceSpecificationDeleteOnTermination = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-imagerecipe-ebsinstanceblockdevicespecification.html#cfn-imagebuilder-imagerecipe-ebsinstanceblockdevicespecification-encrypted
ibireibdsEncrypted :: Lens' ImageBuilderImageRecipeEbsInstanceBlockDeviceSpecification (Maybe (Val Bool))
ibireibdsEncrypted = lens _imageBuilderImageRecipeEbsInstanceBlockDeviceSpecificationEncrypted (\s a -> s { _imageBuilderImageRecipeEbsInstanceBlockDeviceSpecificationEncrypted = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-imagerecipe-ebsinstanceblockdevicespecification.html#cfn-imagebuilder-imagerecipe-ebsinstanceblockdevicespecification-iops
ibireibdsIops :: Lens' ImageBuilderImageRecipeEbsInstanceBlockDeviceSpecification (Maybe (Val Integer))
ibireibdsIops = lens _imageBuilderImageRecipeEbsInstanceBlockDeviceSpecificationIops (\s a -> s { _imageBuilderImageRecipeEbsInstanceBlockDeviceSpecificationIops = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-imagerecipe-ebsinstanceblockdevicespecification.html#cfn-imagebuilder-imagerecipe-ebsinstanceblockdevicespecification-kmskeyid
ibireibdsKmsKeyId :: Lens' ImageBuilderImageRecipeEbsInstanceBlockDeviceSpecification (Maybe (Val Text))
ibireibdsKmsKeyId = lens _imageBuilderImageRecipeEbsInstanceBlockDeviceSpecificationKmsKeyId (\s a -> s { _imageBuilderImageRecipeEbsInstanceBlockDeviceSpecificationKmsKeyId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-imagerecipe-ebsinstanceblockdevicespecification.html#cfn-imagebuilder-imagerecipe-ebsinstanceblockdevicespecification-snapshotid
ibireibdsSnapshotId :: Lens' ImageBuilderImageRecipeEbsInstanceBlockDeviceSpecification (Maybe (Val Text))
ibireibdsSnapshotId = lens _imageBuilderImageRecipeEbsInstanceBlockDeviceSpecificationSnapshotId (\s a -> s { _imageBuilderImageRecipeEbsInstanceBlockDeviceSpecificationSnapshotId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-imagerecipe-ebsinstanceblockdevicespecification.html#cfn-imagebuilder-imagerecipe-ebsinstanceblockdevicespecification-volumesize
ibireibdsVolumeSize :: Lens' ImageBuilderImageRecipeEbsInstanceBlockDeviceSpecification (Maybe (Val Integer))
ibireibdsVolumeSize = lens _imageBuilderImageRecipeEbsInstanceBlockDeviceSpecificationVolumeSize (\s a -> s { _imageBuilderImageRecipeEbsInstanceBlockDeviceSpecificationVolumeSize = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-imagerecipe-ebsinstanceblockdevicespecification.html#cfn-imagebuilder-imagerecipe-ebsinstanceblockdevicespecification-volumetype
ibireibdsVolumeType :: Lens' ImageBuilderImageRecipeEbsInstanceBlockDeviceSpecification (Maybe (Val Text))
ibireibdsVolumeType = lens _imageBuilderImageRecipeEbsInstanceBlockDeviceSpecificationVolumeType (\s a -> s { _imageBuilderImageRecipeEbsInstanceBlockDeviceSpecificationVolumeType = a })
