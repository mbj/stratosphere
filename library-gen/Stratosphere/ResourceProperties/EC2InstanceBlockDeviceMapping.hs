{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-blockdev-mapping.html

module Stratosphere.ResourceProperties.EC2InstanceBlockDeviceMapping where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.EC2InstanceEbs
import Stratosphere.ResourceProperties.EC2InstanceNoDevice

-- | Full data type definition for EC2InstanceBlockDeviceMapping. See
-- 'ec2InstanceBlockDeviceMapping' for a more convenient constructor.
data EC2InstanceBlockDeviceMapping =
  EC2InstanceBlockDeviceMapping
  { _eC2InstanceBlockDeviceMappingDeviceName :: Val Text
  , _eC2InstanceBlockDeviceMappingEbs :: Maybe EC2InstanceEbs
  , _eC2InstanceBlockDeviceMappingNoDevice :: Maybe EC2InstanceNoDevice
  , _eC2InstanceBlockDeviceMappingVirtualName :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON EC2InstanceBlockDeviceMapping where
  toJSON EC2InstanceBlockDeviceMapping{..} =
    object $
    catMaybes
    [ (Just . ("DeviceName",) . toJSON) _eC2InstanceBlockDeviceMappingDeviceName
    , fmap (("Ebs",) . toJSON) _eC2InstanceBlockDeviceMappingEbs
    , fmap (("NoDevice",) . toJSON) _eC2InstanceBlockDeviceMappingNoDevice
    , fmap (("VirtualName",) . toJSON) _eC2InstanceBlockDeviceMappingVirtualName
    ]

instance FromJSON EC2InstanceBlockDeviceMapping where
  parseJSON (Object obj) =
    EC2InstanceBlockDeviceMapping <$>
      (obj .: "DeviceName") <*>
      (obj .:? "Ebs") <*>
      (obj .:? "NoDevice") <*>
      (obj .:? "VirtualName")
  parseJSON _ = mempty

-- | Constructor for 'EC2InstanceBlockDeviceMapping' containing required
-- fields as arguments.
ec2InstanceBlockDeviceMapping
  :: Val Text -- ^ 'ecibdmDeviceName'
  -> EC2InstanceBlockDeviceMapping
ec2InstanceBlockDeviceMapping deviceNamearg =
  EC2InstanceBlockDeviceMapping
  { _eC2InstanceBlockDeviceMappingDeviceName = deviceNamearg
  , _eC2InstanceBlockDeviceMappingEbs = Nothing
  , _eC2InstanceBlockDeviceMappingNoDevice = Nothing
  , _eC2InstanceBlockDeviceMappingVirtualName = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-blockdev-mapping.html#cfn-ec2-blockdev-mapping-devicename
ecibdmDeviceName :: Lens' EC2InstanceBlockDeviceMapping (Val Text)
ecibdmDeviceName = lens _eC2InstanceBlockDeviceMappingDeviceName (\s a -> s { _eC2InstanceBlockDeviceMappingDeviceName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-blockdev-mapping.html#cfn-ec2-blockdev-mapping-ebs
ecibdmEbs :: Lens' EC2InstanceBlockDeviceMapping (Maybe EC2InstanceEbs)
ecibdmEbs = lens _eC2InstanceBlockDeviceMappingEbs (\s a -> s { _eC2InstanceBlockDeviceMappingEbs = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-blockdev-mapping.html#cfn-ec2-blockdev-mapping-nodevice
ecibdmNoDevice :: Lens' EC2InstanceBlockDeviceMapping (Maybe EC2InstanceNoDevice)
ecibdmNoDevice = lens _eC2InstanceBlockDeviceMappingNoDevice (\s a -> s { _eC2InstanceBlockDeviceMappingNoDevice = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-blockdev-mapping.html#cfn-ec2-blockdev-mapping-virtualname
ecibdmVirtualName :: Lens' EC2InstanceBlockDeviceMapping (Maybe (Val Text))
ecibdmVirtualName = lens _eC2InstanceBlockDeviceMappingVirtualName (\s a -> s { _eC2InstanceBlockDeviceMappingVirtualName = a })
