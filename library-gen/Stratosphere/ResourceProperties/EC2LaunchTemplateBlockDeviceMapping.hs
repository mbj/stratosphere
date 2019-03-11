{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-blockdevicemapping.html

module Stratosphere.ResourceProperties.EC2LaunchTemplateBlockDeviceMapping where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.EC2LaunchTemplateEbs

-- | Full data type definition for EC2LaunchTemplateBlockDeviceMapping. See
-- 'ec2LaunchTemplateBlockDeviceMapping' for a more convenient constructor.
data EC2LaunchTemplateBlockDeviceMapping =
  EC2LaunchTemplateBlockDeviceMapping
  { _eC2LaunchTemplateBlockDeviceMappingDeviceName :: Maybe (Val Text)
  , _eC2LaunchTemplateBlockDeviceMappingEbs :: Maybe EC2LaunchTemplateEbs
  , _eC2LaunchTemplateBlockDeviceMappingNoDevice :: Maybe (Val Text)
  , _eC2LaunchTemplateBlockDeviceMappingVirtualName :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON EC2LaunchTemplateBlockDeviceMapping where
  toJSON EC2LaunchTemplateBlockDeviceMapping{..} =
    object $
    catMaybes
    [ fmap (("DeviceName",) . toJSON) _eC2LaunchTemplateBlockDeviceMappingDeviceName
    , fmap (("Ebs",) . toJSON) _eC2LaunchTemplateBlockDeviceMappingEbs
    , fmap (("NoDevice",) . toJSON) _eC2LaunchTemplateBlockDeviceMappingNoDevice
    , fmap (("VirtualName",) . toJSON) _eC2LaunchTemplateBlockDeviceMappingVirtualName
    ]

-- | Constructor for 'EC2LaunchTemplateBlockDeviceMapping' containing required
-- fields as arguments.
ec2LaunchTemplateBlockDeviceMapping
  :: EC2LaunchTemplateBlockDeviceMapping
ec2LaunchTemplateBlockDeviceMapping  =
  EC2LaunchTemplateBlockDeviceMapping
  { _eC2LaunchTemplateBlockDeviceMappingDeviceName = Nothing
  , _eC2LaunchTemplateBlockDeviceMappingEbs = Nothing
  , _eC2LaunchTemplateBlockDeviceMappingNoDevice = Nothing
  , _eC2LaunchTemplateBlockDeviceMappingVirtualName = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-blockdevicemapping.html#cfn-ec2-launchtemplate-blockdevicemapping-devicename
ecltbdmDeviceName :: Lens' EC2LaunchTemplateBlockDeviceMapping (Maybe (Val Text))
ecltbdmDeviceName = lens _eC2LaunchTemplateBlockDeviceMappingDeviceName (\s a -> s { _eC2LaunchTemplateBlockDeviceMappingDeviceName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-blockdevicemapping.html#cfn-ec2-launchtemplate-blockdevicemapping-ebs
ecltbdmEbs :: Lens' EC2LaunchTemplateBlockDeviceMapping (Maybe EC2LaunchTemplateEbs)
ecltbdmEbs = lens _eC2LaunchTemplateBlockDeviceMappingEbs (\s a -> s { _eC2LaunchTemplateBlockDeviceMappingEbs = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-blockdevicemapping.html#cfn-ec2-launchtemplate-blockdevicemapping-nodevice
ecltbdmNoDevice :: Lens' EC2LaunchTemplateBlockDeviceMapping (Maybe (Val Text))
ecltbdmNoDevice = lens _eC2LaunchTemplateBlockDeviceMappingNoDevice (\s a -> s { _eC2LaunchTemplateBlockDeviceMappingNoDevice = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-blockdevicemapping.html#cfn-ec2-launchtemplate-blockdevicemapping-virtualname
ecltbdmVirtualName :: Lens' EC2LaunchTemplateBlockDeviceMapping (Maybe (Val Text))
ecltbdmVirtualName = lens _eC2LaunchTemplateBlockDeviceMappingVirtualName (\s a -> s { _eC2LaunchTemplateBlockDeviceMappingVirtualName = a })
