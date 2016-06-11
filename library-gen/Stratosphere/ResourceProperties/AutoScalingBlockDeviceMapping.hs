{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | The AutoScaling Block Device Mapping type is an embedded property of the
-- AWS::AutoScaling::LaunchConfiguration type.

module Stratosphere.ResourceProperties.AutoScalingBlockDeviceMapping where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.ResourceProperties.AutoScalingEBSBlockDevice

-- | Full data type definition for AutoScalingBlockDeviceMapping. See
-- 'autoScalingBlockDeviceMapping' for a more convenient constructor.
data AutoScalingBlockDeviceMapping =
  AutoScalingBlockDeviceMapping
  { _autoScalingBlockDeviceMappingDeviceName :: Val Text
  , _autoScalingBlockDeviceMappingEbs :: Maybe AutoScalingEBSBlockDevice
  , _autoScalingBlockDeviceMappingNoDevice :: Maybe (Val Bool')
  , _autoScalingBlockDeviceMappingVirtualName :: Maybe (Val Text)
  } deriving (Show, Generic)

instance ToJSON AutoScalingBlockDeviceMapping where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 30, omitNothingFields = True }

instance FromJSON AutoScalingBlockDeviceMapping where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 30, omitNothingFields = True }

-- | Constructor for 'AutoScalingBlockDeviceMapping' containing required
-- fields as arguments.
autoScalingBlockDeviceMapping
  :: Val Text -- ^ 'asbdmDeviceName'
  -> AutoScalingBlockDeviceMapping
autoScalingBlockDeviceMapping deviceNamearg =
  AutoScalingBlockDeviceMapping
  { _autoScalingBlockDeviceMappingDeviceName = deviceNamearg
  , _autoScalingBlockDeviceMappingEbs = Nothing
  , _autoScalingBlockDeviceMappingNoDevice = Nothing
  , _autoScalingBlockDeviceMappingVirtualName = Nothing
  }

-- | The name of the device within Amazon EC2.
asbdmDeviceName :: Lens' AutoScalingBlockDeviceMapping (Val Text)
asbdmDeviceName = lens _autoScalingBlockDeviceMappingDeviceName (\s a -> s { _autoScalingBlockDeviceMappingDeviceName = a })

-- | The Amazon Elastic Block Store volume information.
asbdmEbs :: Lens' AutoScalingBlockDeviceMapping (Maybe AutoScalingEBSBlockDevice)
asbdmEbs = lens _autoScalingBlockDeviceMappingEbs (\s a -> s { _autoScalingBlockDeviceMappingEbs = a })

-- | Suppresses the device mapping. If NoDevice is set to true for the root
-- device, the instance might fail the Amazon EC2 health check. Auto Scaling
-- launches a replacement instance if the instance fails the health check.
asbdmNoDevice :: Lens' AutoScalingBlockDeviceMapping (Maybe (Val Bool'))
asbdmNoDevice = lens _autoScalingBlockDeviceMappingNoDevice (\s a -> s { _autoScalingBlockDeviceMappingNoDevice = a })

-- | The name of the virtual device. The name must be in the form ephemeralX
-- where X is a number starting from zero (0), for example, ephemeral0.
asbdmVirtualName :: Lens' AutoScalingBlockDeviceMapping (Maybe (Val Text))
asbdmVirtualName = lens _autoScalingBlockDeviceMappingVirtualName (\s a -> s { _autoScalingBlockDeviceMappingVirtualName = a })