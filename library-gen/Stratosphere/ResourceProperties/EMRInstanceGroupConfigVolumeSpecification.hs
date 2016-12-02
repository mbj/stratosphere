{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emr-ebsconfiguration-ebsblockdeviceconfig-volumespecification.html

module Stratosphere.ResourceProperties.EMRInstanceGroupConfigVolumeSpecification where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for EMRInstanceGroupConfigVolumeSpecification.
-- | See 'emrInstanceGroupConfigVolumeSpecification' for a more convenient
-- | constructor.
data EMRInstanceGroupConfigVolumeSpecification =
  EMRInstanceGroupConfigVolumeSpecification
  { _eMRInstanceGroupConfigVolumeSpecificationIops :: Maybe (Val Integer')
  , _eMRInstanceGroupConfigVolumeSpecificationSizeInGB :: Val Integer'
  , _eMRInstanceGroupConfigVolumeSpecificationVolumeType :: Val Text
  } deriving (Show, Generic)

instance ToJSON EMRInstanceGroupConfigVolumeSpecification where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 42, omitNothingFields = True }

instance FromJSON EMRInstanceGroupConfigVolumeSpecification where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 42, omitNothingFields = True }

-- | Constructor for 'EMRInstanceGroupConfigVolumeSpecification' containing
-- | required fields as arguments.
emrInstanceGroupConfigVolumeSpecification
  :: Val Integer' -- ^ 'emrigcvsSizeInGB'
  -> Val Text -- ^ 'emrigcvsVolumeType'
  -> EMRInstanceGroupConfigVolumeSpecification
emrInstanceGroupConfigVolumeSpecification sizeInGBarg volumeTypearg =
  EMRInstanceGroupConfigVolumeSpecification
  { _eMRInstanceGroupConfigVolumeSpecificationIops = Nothing
  , _eMRInstanceGroupConfigVolumeSpecificationSizeInGB = sizeInGBarg
  , _eMRInstanceGroupConfigVolumeSpecificationVolumeType = volumeTypearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emr-ebsconfiguration-ebsblockdeviceconfig-volumespecification.html#cfn-emr-ebsconfiguration-ebsblockdeviceconfig-volumespecification-iops
emrigcvsIops :: Lens' EMRInstanceGroupConfigVolumeSpecification (Maybe (Val Integer'))
emrigcvsIops = lens _eMRInstanceGroupConfigVolumeSpecificationIops (\s a -> s { _eMRInstanceGroupConfigVolumeSpecificationIops = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emr-ebsconfiguration-ebsblockdeviceconfig-volumespecification.html#cfn-emr-ebsconfiguration-ebsblockdeviceconfig-volumespecification-sizeingb
emrigcvsSizeInGB :: Lens' EMRInstanceGroupConfigVolumeSpecification (Val Integer')
emrigcvsSizeInGB = lens _eMRInstanceGroupConfigVolumeSpecificationSizeInGB (\s a -> s { _eMRInstanceGroupConfigVolumeSpecificationSizeInGB = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emr-ebsconfiguration-ebsblockdeviceconfig-volumespecification.html#cfn-emr-ebsconfiguration-ebsblockdeviceconfig-volumespecification-volumetype
emrigcvsVolumeType :: Lens' EMRInstanceGroupConfigVolumeSpecification (Val Text)
emrigcvsVolumeType = lens _eMRInstanceGroupConfigVolumeSpecificationVolumeType (\s a -> s { _eMRInstanceGroupConfigVolumeSpecificationVolumeType = a })
