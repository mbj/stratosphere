{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-instance-blockdevicemapping.html

module Stratosphere.ResourceProperties.OpsWorksInstanceBlockDeviceMapping where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.ResourceProperties.OpsWorksInstanceEbsBlockDevice

-- | Full data type definition for OpsWorksInstanceBlockDeviceMapping. See
-- | 'opsWorksInstanceBlockDeviceMapping' for a more convenient constructor.
data OpsWorksInstanceBlockDeviceMapping =
  OpsWorksInstanceBlockDeviceMapping
  { _opsWorksInstanceBlockDeviceMappingDeviceName :: Maybe (Val Text)
  , _opsWorksInstanceBlockDeviceMappingEbs :: Maybe OpsWorksInstanceEbsBlockDevice
  , _opsWorksInstanceBlockDeviceMappingNoDevice :: Maybe (Val Text)
  , _opsWorksInstanceBlockDeviceMappingVirtualName :: Maybe (Val Text)
  } deriving (Show, Generic)

instance ToJSON OpsWorksInstanceBlockDeviceMapping where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 35, omitNothingFields = True }

instance FromJSON OpsWorksInstanceBlockDeviceMapping where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 35, omitNothingFields = True }

-- | Constructor for 'OpsWorksInstanceBlockDeviceMapping' containing required
-- | fields as arguments.
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
