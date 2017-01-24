{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emr-ebsconfiguration-ebsblockdeviceconfig.html

module Stratosphere.ResourceProperties.EMRClusterEbsBlockDeviceConfig where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values
import Stratosphere.ResourceProperties.EMRClusterVolumeSpecification

-- | Full data type definition for EMRClusterEbsBlockDeviceConfig. See
-- | 'emrClusterEbsBlockDeviceConfig' for a more convenient constructor.
data EMRClusterEbsBlockDeviceConfig =
  EMRClusterEbsBlockDeviceConfig
  { _eMRClusterEbsBlockDeviceConfigVolumeSpecification :: EMRClusterVolumeSpecification
  , _eMRClusterEbsBlockDeviceConfigVolumesPerInstance :: Maybe (Val Integer')
  } deriving (Show, Eq)

instance ToJSON EMRClusterEbsBlockDeviceConfig where
  toJSON EMRClusterEbsBlockDeviceConfig{..} =
    object
    [ "VolumeSpecification" .= _eMRClusterEbsBlockDeviceConfigVolumeSpecification
    , "VolumesPerInstance" .= _eMRClusterEbsBlockDeviceConfigVolumesPerInstance
    ]

instance FromJSON EMRClusterEbsBlockDeviceConfig where
  parseJSON (Object obj) =
    EMRClusterEbsBlockDeviceConfig <$>
      obj .: "VolumeSpecification" <*>
      obj .: "VolumesPerInstance"
  parseJSON _ = mempty

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
