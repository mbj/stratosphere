{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | The Amazon EC2 block device mapping property is an embedded property of
-- the AWS::EC2::Instance resource. For block device mappings for an Auto
-- Scaling launch configuration, see AutoScaling Block Device Mapping.

module Stratosphere.ResourceProperties.EC2BlockDeviceMapping where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.ResourceProperties.EBSBlockDevice

data EC2BlockDeviceMapping =
  EC2BlockDeviceMapping
  { _eC2BlockDeviceMappingDeviceName :: Val Text
  , _eC2BlockDeviceMappingEbs :: Maybe EBSBlockDevice
  , _eC2BlockDeviceMappingNoDevice :: Maybe ()
  , _eC2BlockDeviceMappingVirtualName :: Maybe (Val Text)
  } deriving (Show, Generic)

instance ToJSON EC2BlockDeviceMapping where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 22, omitNothingFields = True }

instance FromJSON EC2BlockDeviceMapping where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 22, omitNothingFields = True }

ec2BlockDeviceMapping
  :: Val Text -- ^ DeviceName
  -> EC2BlockDeviceMapping
ec2BlockDeviceMapping deviceNamearg =
  EC2BlockDeviceMapping
  { _eC2BlockDeviceMappingDeviceName = deviceNamearg
  , _eC2BlockDeviceMappingEbs = Nothing
  , _eC2BlockDeviceMappingNoDevice = Nothing
  , _eC2BlockDeviceMappingVirtualName = Nothing
  }

-- | The name of the device within Amazon EC2.
ecbdmDeviceName :: Lens' EC2BlockDeviceMapping (Val Text)
ecbdmDeviceName = lens _eC2BlockDeviceMappingDeviceName (\s a -> s { _eC2BlockDeviceMappingDeviceName = a })

-- |
ecbdmEbs :: Lens' EC2BlockDeviceMapping (Maybe EBSBlockDevice)
ecbdmEbs = lens _eC2BlockDeviceMappingEbs (\s a -> s { _eC2BlockDeviceMappingEbs = a })

-- | This property can be used to unmap a defined device.
ecbdmNoDevice :: Lens' EC2BlockDeviceMapping (Maybe ())
ecbdmNoDevice = lens _eC2BlockDeviceMappingNoDevice (\s a -> s { _eC2BlockDeviceMappingNoDevice = a })

-- | The name of the virtual device. The name must be in the form ephemeralX
-- where X is a number starting from zero (0); for example, ephemeral0.
ecbdmVirtualName :: Lens' EC2BlockDeviceMapping (Maybe (Val Text))
ecbdmVirtualName = lens _eC2BlockDeviceMappingVirtualName (\s a -> s { _eC2BlockDeviceMappingVirtualName = a })