{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emr-ebsconfiguration-ebsblockdeviceconfig-volumespecification.html

module Stratosphere.ResourceProperties.EMRInstanceGroupConfigVolumeSpecification where

import Stratosphere.ResourceImports


-- | Full data type definition for EMRInstanceGroupConfigVolumeSpecification.
-- See 'emrInstanceGroupConfigVolumeSpecification' for a more convenient
-- constructor.
data EMRInstanceGroupConfigVolumeSpecification =
  EMRInstanceGroupConfigVolumeSpecification
  { _eMRInstanceGroupConfigVolumeSpecificationIops :: Maybe (Val Integer)
  , _eMRInstanceGroupConfigVolumeSpecificationSizeInGB :: Val Integer
  , _eMRInstanceGroupConfigVolumeSpecificationVolumeType :: Val Text
  } deriving (Show, Eq)

instance ToJSON EMRInstanceGroupConfigVolumeSpecification where
  toJSON EMRInstanceGroupConfigVolumeSpecification{..} =
    object $
    catMaybes
    [ fmap (("Iops",) . toJSON . fmap Integer') _eMRInstanceGroupConfigVolumeSpecificationIops
    , (Just . ("SizeInGB",) . toJSON . fmap Integer') _eMRInstanceGroupConfigVolumeSpecificationSizeInGB
    , (Just . ("VolumeType",) . toJSON) _eMRInstanceGroupConfigVolumeSpecificationVolumeType
    ]

-- | Constructor for 'EMRInstanceGroupConfigVolumeSpecification' containing
-- required fields as arguments.
emrInstanceGroupConfigVolumeSpecification
  :: Val Integer -- ^ 'emrigcvsSizeInGB'
  -> Val Text -- ^ 'emrigcvsVolumeType'
  -> EMRInstanceGroupConfigVolumeSpecification
emrInstanceGroupConfigVolumeSpecification sizeInGBarg volumeTypearg =
  EMRInstanceGroupConfigVolumeSpecification
  { _eMRInstanceGroupConfigVolumeSpecificationIops = Nothing
  , _eMRInstanceGroupConfigVolumeSpecificationSizeInGB = sizeInGBarg
  , _eMRInstanceGroupConfigVolumeSpecificationVolumeType = volumeTypearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emr-ebsconfiguration-ebsblockdeviceconfig-volumespecification.html#cfn-emr-ebsconfiguration-ebsblockdeviceconfig-volumespecification-iops
emrigcvsIops :: Lens' EMRInstanceGroupConfigVolumeSpecification (Maybe (Val Integer))
emrigcvsIops = lens _eMRInstanceGroupConfigVolumeSpecificationIops (\s a -> s { _eMRInstanceGroupConfigVolumeSpecificationIops = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emr-ebsconfiguration-ebsblockdeviceconfig-volumespecification.html#cfn-emr-ebsconfiguration-ebsblockdeviceconfig-volumespecification-sizeingb
emrigcvsSizeInGB :: Lens' EMRInstanceGroupConfigVolumeSpecification (Val Integer)
emrigcvsSizeInGB = lens _eMRInstanceGroupConfigVolumeSpecificationSizeInGB (\s a -> s { _eMRInstanceGroupConfigVolumeSpecificationSizeInGB = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emr-ebsconfiguration-ebsblockdeviceconfig-volumespecification.html#cfn-emr-ebsconfiguration-ebsblockdeviceconfig-volumespecification-volumetype
emrigcvsVolumeType :: Lens' EMRInstanceGroupConfigVolumeSpecification (Val Text)
emrigcvsVolumeType = lens _eMRInstanceGroupConfigVolumeSpecificationVolumeType (\s a -> s { _eMRInstanceGroupConfigVolumeSpecificationVolumeType = a })
