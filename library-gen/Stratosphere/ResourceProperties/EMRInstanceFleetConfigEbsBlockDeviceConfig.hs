{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancefleetconfig-ebsblockdeviceconfig.html

module Stratosphere.ResourceProperties.EMRInstanceFleetConfigEbsBlockDeviceConfig where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.EMRInstanceFleetConfigVolumeSpecification

-- | Full data type definition for EMRInstanceFleetConfigEbsBlockDeviceConfig.
-- See 'emrInstanceFleetConfigEbsBlockDeviceConfig' for a more convenient
-- constructor.
data EMRInstanceFleetConfigEbsBlockDeviceConfig =
  EMRInstanceFleetConfigEbsBlockDeviceConfig
  { _eMRInstanceFleetConfigEbsBlockDeviceConfigVolumeSpecification :: EMRInstanceFleetConfigVolumeSpecification
  , _eMRInstanceFleetConfigEbsBlockDeviceConfigVolumesPerInstance :: Maybe (Val Integer)
  } deriving (Show, Eq)

instance ToJSON EMRInstanceFleetConfigEbsBlockDeviceConfig where
  toJSON EMRInstanceFleetConfigEbsBlockDeviceConfig{..} =
    object $
    catMaybes
    [ (Just . ("VolumeSpecification",) . toJSON) _eMRInstanceFleetConfigEbsBlockDeviceConfigVolumeSpecification
    , fmap (("VolumesPerInstance",) . toJSON) _eMRInstanceFleetConfigEbsBlockDeviceConfigVolumesPerInstance
    ]

-- | Constructor for 'EMRInstanceFleetConfigEbsBlockDeviceConfig' containing
-- required fields as arguments.
emrInstanceFleetConfigEbsBlockDeviceConfig
  :: EMRInstanceFleetConfigVolumeSpecification -- ^ 'emrifcebdcVolumeSpecification'
  -> EMRInstanceFleetConfigEbsBlockDeviceConfig
emrInstanceFleetConfigEbsBlockDeviceConfig volumeSpecificationarg =
  EMRInstanceFleetConfigEbsBlockDeviceConfig
  { _eMRInstanceFleetConfigEbsBlockDeviceConfigVolumeSpecification = volumeSpecificationarg
  , _eMRInstanceFleetConfigEbsBlockDeviceConfigVolumesPerInstance = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancefleetconfig-ebsblockdeviceconfig.html#cfn-elasticmapreduce-instancefleetconfig-ebsblockdeviceconfig-volumespecification
emrifcebdcVolumeSpecification :: Lens' EMRInstanceFleetConfigEbsBlockDeviceConfig EMRInstanceFleetConfigVolumeSpecification
emrifcebdcVolumeSpecification = lens _eMRInstanceFleetConfigEbsBlockDeviceConfigVolumeSpecification (\s a -> s { _eMRInstanceFleetConfigEbsBlockDeviceConfigVolumeSpecification = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancefleetconfig-ebsblockdeviceconfig.html#cfn-elasticmapreduce-instancefleetconfig-ebsblockdeviceconfig-volumesperinstance
emrifcebdcVolumesPerInstance :: Lens' EMRInstanceFleetConfigEbsBlockDeviceConfig (Maybe (Val Integer))
emrifcebdcVolumesPerInstance = lens _eMRInstanceFleetConfigEbsBlockDeviceConfigVolumesPerInstance (\s a -> s { _eMRInstanceFleetConfigEbsBlockDeviceConfigVolumesPerInstance = a })
