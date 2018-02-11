{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-launchconfig-blockdev-mapping.html

module Stratosphere.ResourceProperties.AutoScalingLaunchConfigurationBlockDeviceMapping where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.AutoScalingLaunchConfigurationBlockDevice

-- | Full data type definition for
-- AutoScalingLaunchConfigurationBlockDeviceMapping. See
-- 'autoScalingLaunchConfigurationBlockDeviceMapping' for a more convenient
-- constructor.
data AutoScalingLaunchConfigurationBlockDeviceMapping =
  AutoScalingLaunchConfigurationBlockDeviceMapping
  { _autoScalingLaunchConfigurationBlockDeviceMappingDeviceName :: Val Text
  , _autoScalingLaunchConfigurationBlockDeviceMappingEbs :: Maybe AutoScalingLaunchConfigurationBlockDevice
  , _autoScalingLaunchConfigurationBlockDeviceMappingNoDevice :: Maybe (Val Bool)
  , _autoScalingLaunchConfigurationBlockDeviceMappingVirtualName :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON AutoScalingLaunchConfigurationBlockDeviceMapping where
  toJSON AutoScalingLaunchConfigurationBlockDeviceMapping{..} =
    object $
    catMaybes
    [ (Just . ("DeviceName",) . toJSON) _autoScalingLaunchConfigurationBlockDeviceMappingDeviceName
    , fmap (("Ebs",) . toJSON) _autoScalingLaunchConfigurationBlockDeviceMappingEbs
    , fmap (("NoDevice",) . toJSON . fmap Bool') _autoScalingLaunchConfigurationBlockDeviceMappingNoDevice
    , fmap (("VirtualName",) . toJSON) _autoScalingLaunchConfigurationBlockDeviceMappingVirtualName
    ]

instance FromJSON AutoScalingLaunchConfigurationBlockDeviceMapping where
  parseJSON (Object obj) =
    AutoScalingLaunchConfigurationBlockDeviceMapping <$>
      (obj .: "DeviceName") <*>
      (obj .:? "Ebs") <*>
      fmap (fmap (fmap unBool')) (obj .:? "NoDevice") <*>
      (obj .:? "VirtualName")
  parseJSON _ = mempty

-- | Constructor for 'AutoScalingLaunchConfigurationBlockDeviceMapping'
-- containing required fields as arguments.
autoScalingLaunchConfigurationBlockDeviceMapping
  :: Val Text -- ^ 'aslcbdmDeviceName'
  -> AutoScalingLaunchConfigurationBlockDeviceMapping
autoScalingLaunchConfigurationBlockDeviceMapping deviceNamearg =
  AutoScalingLaunchConfigurationBlockDeviceMapping
  { _autoScalingLaunchConfigurationBlockDeviceMappingDeviceName = deviceNamearg
  , _autoScalingLaunchConfigurationBlockDeviceMappingEbs = Nothing
  , _autoScalingLaunchConfigurationBlockDeviceMappingNoDevice = Nothing
  , _autoScalingLaunchConfigurationBlockDeviceMappingVirtualName = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-launchconfig-blockdev-mapping.html#cfn-as-launchconfig-blockdev-mapping-devicename
aslcbdmDeviceName :: Lens' AutoScalingLaunchConfigurationBlockDeviceMapping (Val Text)
aslcbdmDeviceName = lens _autoScalingLaunchConfigurationBlockDeviceMappingDeviceName (\s a -> s { _autoScalingLaunchConfigurationBlockDeviceMappingDeviceName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-launchconfig-blockdev-mapping.html#cfn-as-launchconfig-blockdev-mapping-ebs
aslcbdmEbs :: Lens' AutoScalingLaunchConfigurationBlockDeviceMapping (Maybe AutoScalingLaunchConfigurationBlockDevice)
aslcbdmEbs = lens _autoScalingLaunchConfigurationBlockDeviceMappingEbs (\s a -> s { _autoScalingLaunchConfigurationBlockDeviceMappingEbs = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-launchconfig-blockdev-mapping.html#cfn-as-launchconfig-blockdev-mapping-nodevice
aslcbdmNoDevice :: Lens' AutoScalingLaunchConfigurationBlockDeviceMapping (Maybe (Val Bool))
aslcbdmNoDevice = lens _autoScalingLaunchConfigurationBlockDeviceMappingNoDevice (\s a -> s { _autoScalingLaunchConfigurationBlockDeviceMappingNoDevice = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-launchconfig-blockdev-mapping.html#cfn-as-launchconfig-blockdev-mapping-virtualname
aslcbdmVirtualName :: Lens' AutoScalingLaunchConfigurationBlockDeviceMapping (Maybe (Val Text))
aslcbdmVirtualName = lens _autoScalingLaunchConfigurationBlockDeviceMappingVirtualName (\s a -> s { _autoScalingLaunchConfigurationBlockDeviceMappingVirtualName = a })
