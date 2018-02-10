{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-launchconfig-blockdev-template.html

module Stratosphere.ResourceProperties.AutoScalingLaunchConfigurationBlockDevice where

import Stratosphere.ResourceImports


-- | Full data type definition for AutoScalingLaunchConfigurationBlockDevice.
-- See 'autoScalingLaunchConfigurationBlockDevice' for a more convenient
-- constructor.
data AutoScalingLaunchConfigurationBlockDevice =
  AutoScalingLaunchConfigurationBlockDevice
  { _autoScalingLaunchConfigurationBlockDeviceDeleteOnTermination :: Maybe (Val Bool)
  , _autoScalingLaunchConfigurationBlockDeviceEncrypted :: Maybe (Val Bool)
  , _autoScalingLaunchConfigurationBlockDeviceIops :: Maybe (Val Integer)
  , _autoScalingLaunchConfigurationBlockDeviceSnapshotId :: Maybe (Val Text)
  , _autoScalingLaunchConfigurationBlockDeviceVolumeSize :: Maybe (Val Integer)
  , _autoScalingLaunchConfigurationBlockDeviceVolumeType :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON AutoScalingLaunchConfigurationBlockDevice where
  toJSON AutoScalingLaunchConfigurationBlockDevice{..} =
    object $
    catMaybes
    [ fmap (("DeleteOnTermination",) . toJSON . fmap Bool') _autoScalingLaunchConfigurationBlockDeviceDeleteOnTermination
    , fmap (("Encrypted",) . toJSON . fmap Bool') _autoScalingLaunchConfigurationBlockDeviceEncrypted
    , fmap (("Iops",) . toJSON . fmap Integer') _autoScalingLaunchConfigurationBlockDeviceIops
    , fmap (("SnapshotId",) . toJSON) _autoScalingLaunchConfigurationBlockDeviceSnapshotId
    , fmap (("VolumeSize",) . toJSON . fmap Integer') _autoScalingLaunchConfigurationBlockDeviceVolumeSize
    , fmap (("VolumeType",) . toJSON) _autoScalingLaunchConfigurationBlockDeviceVolumeType
    ]

instance FromJSON AutoScalingLaunchConfigurationBlockDevice where
  parseJSON (Object obj) =
    AutoScalingLaunchConfigurationBlockDevice <$>
      fmap (fmap (fmap unBool')) (obj .:? "DeleteOnTermination") <*>
      fmap (fmap (fmap unBool')) (obj .:? "Encrypted") <*>
      fmap (fmap (fmap unInteger')) (obj .:? "Iops") <*>
      (obj .:? "SnapshotId") <*>
      fmap (fmap (fmap unInteger')) (obj .:? "VolumeSize") <*>
      (obj .:? "VolumeType")
  parseJSON _ = mempty

-- | Constructor for 'AutoScalingLaunchConfigurationBlockDevice' containing
-- required fields as arguments.
autoScalingLaunchConfigurationBlockDevice
  :: AutoScalingLaunchConfigurationBlockDevice
autoScalingLaunchConfigurationBlockDevice  =
  AutoScalingLaunchConfigurationBlockDevice
  { _autoScalingLaunchConfigurationBlockDeviceDeleteOnTermination = Nothing
  , _autoScalingLaunchConfigurationBlockDeviceEncrypted = Nothing
  , _autoScalingLaunchConfigurationBlockDeviceIops = Nothing
  , _autoScalingLaunchConfigurationBlockDeviceSnapshotId = Nothing
  , _autoScalingLaunchConfigurationBlockDeviceVolumeSize = Nothing
  , _autoScalingLaunchConfigurationBlockDeviceVolumeType = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-launchconfig-blockdev-template.html#cfn-as-launchconfig-blockdev-template-deleteonterm
aslcbdDeleteOnTermination :: Lens' AutoScalingLaunchConfigurationBlockDevice (Maybe (Val Bool))
aslcbdDeleteOnTermination = lens _autoScalingLaunchConfigurationBlockDeviceDeleteOnTermination (\s a -> s { _autoScalingLaunchConfigurationBlockDeviceDeleteOnTermination = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-launchconfig-blockdev-template.html#cfn-as-launchconfig-blockdev-template-encrypted
aslcbdEncrypted :: Lens' AutoScalingLaunchConfigurationBlockDevice (Maybe (Val Bool))
aslcbdEncrypted = lens _autoScalingLaunchConfigurationBlockDeviceEncrypted (\s a -> s { _autoScalingLaunchConfigurationBlockDeviceEncrypted = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-launchconfig-blockdev-template.html#cfn-as-launchconfig-blockdev-template-iops
aslcbdIops :: Lens' AutoScalingLaunchConfigurationBlockDevice (Maybe (Val Integer))
aslcbdIops = lens _autoScalingLaunchConfigurationBlockDeviceIops (\s a -> s { _autoScalingLaunchConfigurationBlockDeviceIops = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-launchconfig-blockdev-template.html#cfn-as-launchconfig-blockdev-template-snapshotid
aslcbdSnapshotId :: Lens' AutoScalingLaunchConfigurationBlockDevice (Maybe (Val Text))
aslcbdSnapshotId = lens _autoScalingLaunchConfigurationBlockDeviceSnapshotId (\s a -> s { _autoScalingLaunchConfigurationBlockDeviceSnapshotId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-launchconfig-blockdev-template.html#cfn-as-launchconfig-blockdev-template-volumesize
aslcbdVolumeSize :: Lens' AutoScalingLaunchConfigurationBlockDevice (Maybe (Val Integer))
aslcbdVolumeSize = lens _autoScalingLaunchConfigurationBlockDeviceVolumeSize (\s a -> s { _autoScalingLaunchConfigurationBlockDeviceVolumeSize = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-launchconfig-blockdev-template.html#cfn-as-launchconfig-blockdev-template-volumetype
aslcbdVolumeType :: Lens' AutoScalingLaunchConfigurationBlockDevice (Maybe (Val Text))
aslcbdVolumeType = lens _autoScalingLaunchConfigurationBlockDeviceVolumeType (\s a -> s { _autoScalingLaunchConfigurationBlockDeviceVolumeType = a })
