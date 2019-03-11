{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-instance-blockdevicemapping.html

module Stratosphere.ResourceProperties.OpsWorksInstanceBlockDeviceMapping where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.OpsWorksInstanceEbsBlockDevice

-- | Full data type definition for OpsWorksInstanceBlockDeviceMapping. See
-- 'opsWorksInstanceBlockDeviceMapping' for a more convenient constructor.
data OpsWorksInstanceBlockDeviceMapping =
  OpsWorksInstanceBlockDeviceMapping
  { _opsWorksInstanceBlockDeviceMappingDeviceName :: Maybe (Val Text)
  , _opsWorksInstanceBlockDeviceMappingEbs :: Maybe OpsWorksInstanceEbsBlockDevice
  , _opsWorksInstanceBlockDeviceMappingNoDevice :: Maybe (Val Text)
  , _opsWorksInstanceBlockDeviceMappingVirtualName :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON OpsWorksInstanceBlockDeviceMapping where
  toJSON OpsWorksInstanceBlockDeviceMapping{..} =
    object $
    catMaybes
    [ fmap (("DeviceName",) . toJSON) _opsWorksInstanceBlockDeviceMappingDeviceName
    , fmap (("Ebs",) . toJSON) _opsWorksInstanceBlockDeviceMappingEbs
    , fmap (("NoDevice",) . toJSON) _opsWorksInstanceBlockDeviceMappingNoDevice
    , fmap (("VirtualName",) . toJSON) _opsWorksInstanceBlockDeviceMappingVirtualName
    ]

-- | Constructor for 'OpsWorksInstanceBlockDeviceMapping' containing required
-- fields as arguments.
opsWorksInstanceBlockDeviceMapping
  :: OpsWorksInstanceBlockDeviceMapping
opsWorksInstanceBlockDeviceMapping  =
  OpsWorksInstanceBlockDeviceMapping
  { _opsWorksInstanceBlockDeviceMappingDeviceName = Nothing
  , _opsWorksInstanceBlockDeviceMappingEbs = Nothing
  , _opsWorksInstanceBlockDeviceMappingNoDevice = Nothing
  , _opsWorksInstanceBlockDeviceMappingVirtualName = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-instance-blockdevicemapping.html#cfn-opsworks-instance-blockdevicemapping-devicename
owibdmDeviceName :: Lens' OpsWorksInstanceBlockDeviceMapping (Maybe (Val Text))
owibdmDeviceName = lens _opsWorksInstanceBlockDeviceMappingDeviceName (\s a -> s { _opsWorksInstanceBlockDeviceMappingDeviceName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-instance-blockdevicemapping.html#cfn-opsworks-instance-blockdevicemapping-ebs
owibdmEbs :: Lens' OpsWorksInstanceBlockDeviceMapping (Maybe OpsWorksInstanceEbsBlockDevice)
owibdmEbs = lens _opsWorksInstanceBlockDeviceMappingEbs (\s a -> s { _opsWorksInstanceBlockDeviceMappingEbs = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-instance-blockdevicemapping.html#cfn-opsworks-instance-blockdevicemapping-nodevice
owibdmNoDevice :: Lens' OpsWorksInstanceBlockDeviceMapping (Maybe (Val Text))
owibdmNoDevice = lens _opsWorksInstanceBlockDeviceMappingNoDevice (\s a -> s { _opsWorksInstanceBlockDeviceMappingNoDevice = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-instance-blockdevicemapping.html#cfn-opsworks-instance-blockdevicemapping-virtualname
owibdmVirtualName :: Lens' OpsWorksInstanceBlockDeviceMapping (Maybe (Val Text))
owibdmVirtualName = lens _opsWorksInstanceBlockDeviceMappingVirtualName (\s a -> s { _opsWorksInstanceBlockDeviceMappingVirtualName = a })
