{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-launchconfig-blockdev-template.html

module Stratosphere.ResourceProperties.AutoScalingLaunchConfigurationBlockDevice where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for AutoScalingLaunchConfigurationBlockDevice.
-- | See 'autoScalingLaunchConfigurationBlockDevice' for a more convenient
-- | constructor.
data AutoScalingLaunchConfigurationBlockDevice =
  AutoScalingLaunchConfigurationBlockDevice
  { _autoScalingLaunchConfigurationBlockDeviceDeleteOnTermination :: Maybe (Val Bool')
  , _autoScalingLaunchConfigurationBlockDeviceEncrypted :: Maybe (Val Bool')
  , _autoScalingLaunchConfigurationBlockDeviceIops :: Maybe (Val Integer')
  , _autoScalingLaunchConfigurationBlockDeviceSnapshotId :: Maybe (Val Text)
  , _autoScalingLaunchConfigurationBlockDeviceVolumeSize :: Maybe (Val Text)
  , _autoScalingLaunchConfigurationBlockDeviceVolumeType :: Maybe (Val Text)
  } deriving (Show, Eq, Generic)

instance ToJSON AutoScalingLaunchConfigurationBlockDevice where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 42, omitNothingFields = True }

instance FromJSON AutoScalingLaunchConfigurationBlockDevice where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 42, omitNothingFields = True }

-- | Constructor for 'AutoScalingLaunchConfigurationBlockDevice' containing
-- | required fields as arguments.
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
aslcbdDeleteOnTermination :: Lens' AutoScalingLaunchConfigurationBlockDevice (Maybe (Val Bool'))
aslcbdDeleteOnTermination = lens _autoScalingLaunchConfigurationBlockDeviceDeleteOnTermination (\s a -> s { _autoScalingLaunchConfigurationBlockDeviceDeleteOnTermination = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-launchconfig-blockdev-template.html#cfn-as-launchconfig-blockdev-template-encrypted
aslcbdEncrypted :: Lens' AutoScalingLaunchConfigurationBlockDevice (Maybe (Val Bool'))
aslcbdEncrypted = lens _autoScalingLaunchConfigurationBlockDeviceEncrypted (\s a -> s { _autoScalingLaunchConfigurationBlockDeviceEncrypted = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-launchconfig-blockdev-template.html#cfn-as-launchconfig-blockdev-template-iops
aslcbdIops :: Lens' AutoScalingLaunchConfigurationBlockDevice (Maybe (Val Integer'))
aslcbdIops = lens _autoScalingLaunchConfigurationBlockDeviceIops (\s a -> s { _autoScalingLaunchConfigurationBlockDeviceIops = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-launchconfig-blockdev-template.html#cfn-as-launchconfig-blockdev-template-snapshotid
aslcbdSnapshotId :: Lens' AutoScalingLaunchConfigurationBlockDevice (Maybe (Val Text))
aslcbdSnapshotId = lens _autoScalingLaunchConfigurationBlockDeviceSnapshotId (\s a -> s { _autoScalingLaunchConfigurationBlockDeviceSnapshotId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-launchconfig-blockdev-template.html#cfn-as-launchconfig-blockdev-template-volumesize
aslcbdVolumeSize :: Lens' AutoScalingLaunchConfigurationBlockDevice (Maybe (Val Text))
aslcbdVolumeSize = lens _autoScalingLaunchConfigurationBlockDeviceVolumeSize (\s a -> s { _autoScalingLaunchConfigurationBlockDeviceVolumeSize = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-launchconfig-blockdev-template.html#cfn-as-launchconfig-blockdev-template-volumetype
aslcbdVolumeType :: Lens' AutoScalingLaunchConfigurationBlockDevice (Maybe (Val Text))
aslcbdVolumeType = lens _autoScalingLaunchConfigurationBlockDeviceVolumeType (\s a -> s { _autoScalingLaunchConfigurationBlockDeviceVolumeType = a })
