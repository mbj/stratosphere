{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-ebsblockdeviceconfig.html

module Stratosphere.ResourceProperties.EMRClusterEbsBlockDeviceConfig where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.EMRClusterVolumeSpecification

-- | Full data type definition for EMRClusterEbsBlockDeviceConfig. See
-- 'emrClusterEbsBlockDeviceConfig' for a more convenient constructor.
data EMRClusterEbsBlockDeviceConfig =
  EMRClusterEbsBlockDeviceConfig
  { _eMRClusterEbsBlockDeviceConfigVolumeSpecification :: EMRClusterVolumeSpecification
  , _eMRClusterEbsBlockDeviceConfigVolumesPerInstance :: Maybe (Val Integer)
  } deriving (Show, Eq)

instance ToJSON EMRClusterEbsBlockDeviceConfig where
  toJSON EMRClusterEbsBlockDeviceConfig{..} =
    object $
    catMaybes
    [ (Just . ("VolumeSpecification",) . toJSON) _eMRClusterEbsBlockDeviceConfigVolumeSpecification
    , fmap (("VolumesPerInstance",) . toJSON . fmap Integer') _eMRClusterEbsBlockDeviceConfigVolumesPerInstance
    ]

-- | Constructor for 'EMRClusterEbsBlockDeviceConfig' containing required
-- fields as arguments.
emrClusterEbsBlockDeviceConfig
  :: EMRClusterVolumeSpecification -- ^ 'emrcebdcVolumeSpecification'
  -> EMRClusterEbsBlockDeviceConfig
emrClusterEbsBlockDeviceConfig volumeSpecificationarg =
  EMRClusterEbsBlockDeviceConfig
  { _eMRClusterEbsBlockDeviceConfigVolumeSpecification = volumeSpecificationarg
  , _eMRClusterEbsBlockDeviceConfigVolumesPerInstance = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-ebsblockdeviceconfig.html#cfn-elasticmapreduce-cluster-ebsblockdeviceconfig-volumespecification
emrcebdcVolumeSpecification :: Lens' EMRClusterEbsBlockDeviceConfig EMRClusterVolumeSpecification
emrcebdcVolumeSpecification = lens _eMRClusterEbsBlockDeviceConfigVolumeSpecification (\s a -> s { _eMRClusterEbsBlockDeviceConfigVolumeSpecification = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-ebsblockdeviceconfig.html#cfn-elasticmapreduce-cluster-ebsblockdeviceconfig-volumesperinstance
emrcebdcVolumesPerInstance :: Lens' EMRClusterEbsBlockDeviceConfig (Maybe (Val Integer))
emrcebdcVolumesPerInstance = lens _eMRClusterEbsBlockDeviceConfigVolumesPerInstance (\s a -> s { _eMRClusterEbsBlockDeviceConfigVolumesPerInstance = a })
