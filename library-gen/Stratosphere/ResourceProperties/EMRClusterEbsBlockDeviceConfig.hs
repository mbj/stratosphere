{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emr-ebsconfiguration-ebsblockdeviceconfig.html

module Stratosphere.ResourceProperties.EMRClusterEbsBlockDeviceConfig where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.ResourceProperties.EMRClusterVolumeSpecification

-- | Full data type definition for EMRClusterEbsBlockDeviceConfig. See
-- | 'emrClusterEbsBlockDeviceConfig' for a more convenient constructor.
data EMRClusterEbsBlockDeviceConfig =
  EMRClusterEbsBlockDeviceConfig
  { _eMRClusterEbsBlockDeviceConfigVolumeSpecification :: EMRClusterVolumeSpecification
  , _eMRClusterEbsBlockDeviceConfigVolumesPerInstance :: Maybe (Val Integer')
  } deriving (Show, Eq, Generic)

instance ToJSON EMRClusterEbsBlockDeviceConfig where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 31, omitNothingFields = True }

instance FromJSON EMRClusterEbsBlockDeviceConfig where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 31, omitNothingFields = True }

-- | Constructor for 'EMRClusterEbsBlockDeviceConfig' containing required
-- | fields as arguments.
emrClusterEbsBlockDeviceConfig
  :: EMRClusterVolumeSpecification -- ^ 'emrcebdcVolumeSpecification'
  -> EMRClusterEbsBlockDeviceConfig
emrClusterEbsBlockDeviceConfig volumeSpecificationarg =
  EMRClusterEbsBlockDeviceConfig
  { _eMRClusterEbsBlockDeviceConfigVolumeSpecification = volumeSpecificationarg
  , _eMRClusterEbsBlockDeviceConfigVolumesPerInstance = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emr-ebsconfiguration-ebsblockdeviceconfig.html#cfn-emr-ebsconfiguration-ebsblockdeviceconfig-volumespecification
emrcebdcVolumeSpecification :: Lens' EMRClusterEbsBlockDeviceConfig EMRClusterVolumeSpecification
emrcebdcVolumeSpecification = lens _eMRClusterEbsBlockDeviceConfigVolumeSpecification (\s a -> s { _eMRClusterEbsBlockDeviceConfigVolumeSpecification = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emr-ebsconfiguration-ebsblockdeviceconfig.html#cfn-emr-ebsconfiguration-ebsblockdeviceconfig-volumesperinstance
emrcebdcVolumesPerInstance :: Lens' EMRClusterEbsBlockDeviceConfig (Maybe (Val Integer'))
emrcebdcVolumesPerInstance = lens _eMRClusterEbsBlockDeviceConfigVolumesPerInstance (\s a -> s { _eMRClusterEbsBlockDeviceConfigVolumesPerInstance = a })
