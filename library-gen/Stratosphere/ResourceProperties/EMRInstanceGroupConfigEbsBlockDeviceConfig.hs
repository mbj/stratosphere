{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emr-ebsconfiguration-ebsblockdeviceconfig.html

module Stratosphere.ResourceProperties.EMRInstanceGroupConfigEbsBlockDeviceConfig where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.EMRInstanceGroupConfigVolumeSpecification

-- | Full data type definition for EMRInstanceGroupConfigEbsBlockDeviceConfig.
-- See 'emrInstanceGroupConfigEbsBlockDeviceConfig' for a more convenient
-- constructor.
data EMRInstanceGroupConfigEbsBlockDeviceConfig =
  EMRInstanceGroupConfigEbsBlockDeviceConfig
  { _eMRInstanceGroupConfigEbsBlockDeviceConfigVolumeSpecification :: EMRInstanceGroupConfigVolumeSpecification
  , _eMRInstanceGroupConfigEbsBlockDeviceConfigVolumesPerInstance :: Maybe (Val Integer)
  } deriving (Show, Eq)

instance ToJSON EMRInstanceGroupConfigEbsBlockDeviceConfig where
  toJSON EMRInstanceGroupConfigEbsBlockDeviceConfig{..} =
    object $
    catMaybes
    [ (Just . ("VolumeSpecification",) . toJSON) _eMRInstanceGroupConfigEbsBlockDeviceConfigVolumeSpecification
    , fmap (("VolumesPerInstance",) . toJSON . fmap Integer') _eMRInstanceGroupConfigEbsBlockDeviceConfigVolumesPerInstance
    ]

-- | Constructor for 'EMRInstanceGroupConfigEbsBlockDeviceConfig' containing
-- required fields as arguments.
emrInstanceGroupConfigEbsBlockDeviceConfig
  :: EMRInstanceGroupConfigVolumeSpecification -- ^ 'emrigcebdcVolumeSpecification'
  -> EMRInstanceGroupConfigEbsBlockDeviceConfig
emrInstanceGroupConfigEbsBlockDeviceConfig volumeSpecificationarg =
  EMRInstanceGroupConfigEbsBlockDeviceConfig
  { _eMRInstanceGroupConfigEbsBlockDeviceConfigVolumeSpecification = volumeSpecificationarg
  , _eMRInstanceGroupConfigEbsBlockDeviceConfigVolumesPerInstance = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emr-ebsconfiguration-ebsblockdeviceconfig.html#cfn-emr-ebsconfiguration-ebsblockdeviceconfig-volumespecification
emrigcebdcVolumeSpecification :: Lens' EMRInstanceGroupConfigEbsBlockDeviceConfig EMRInstanceGroupConfigVolumeSpecification
emrigcebdcVolumeSpecification = lens _eMRInstanceGroupConfigEbsBlockDeviceConfigVolumeSpecification (\s a -> s { _eMRInstanceGroupConfigEbsBlockDeviceConfigVolumeSpecification = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emr-ebsconfiguration-ebsblockdeviceconfig.html#cfn-emr-ebsconfiguration-ebsblockdeviceconfig-volumesperinstance
emrigcebdcVolumesPerInstance :: Lens' EMRInstanceGroupConfigEbsBlockDeviceConfig (Maybe (Val Integer))
emrigcebdcVolumesPerInstance = lens _eMRInstanceGroupConfigEbsBlockDeviceConfigVolumesPerInstance (\s a -> s { _eMRInstanceGroupConfigEbsBlockDeviceConfigVolumesPerInstance = a })
