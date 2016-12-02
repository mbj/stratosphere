{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-blockdev-mapping.html

module Stratosphere.ResourceProperties.EC2InstanceBlockDeviceMapping where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.ResourceProperties.EC2InstanceEbs
import Stratosphere.ResourceProperties.EC2InstanceNoDevice

-- | Full data type definition for EC2InstanceBlockDeviceMapping. See
-- | 'ec2InstanceBlockDeviceMapping' for a more convenient constructor.
data EC2InstanceBlockDeviceMapping =
  EC2InstanceBlockDeviceMapping
  { _eC2InstanceBlockDeviceMappingDeviceName :: Val Text
  , _eC2InstanceBlockDeviceMappingEbs :: Maybe EC2InstanceEbs
  , _eC2InstanceBlockDeviceMappingNoDevice :: Maybe EC2InstanceNoDevice
  , _eC2InstanceBlockDeviceMappingVirtualName :: Maybe (Val Text)
  } deriving (Show, Generic)

instance ToJSON EC2InstanceBlockDeviceMapping where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 30, omitNothingFields = True }

instance FromJSON EC2InstanceBlockDeviceMapping where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 30, omitNothingFields = True }

-- | Constructor for 'EC2InstanceBlockDeviceMapping' containing required
-- | fields as arguments.
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
