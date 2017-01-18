{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emr-ebsconfiguration-ebsblockdeviceconfig-volumespecification.html

module Stratosphere.ResourceProperties.EMRClusterVolumeSpecification where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for EMRClusterVolumeSpecification. See
-- | 'emrClusterVolumeSpecification' for a more convenient constructor.
data EMRClusterVolumeSpecification =
  EMRClusterVolumeSpecification
  { _eMRClusterVolumeSpecificationIops :: Maybe (Val Integer')
  , _eMRClusterVolumeSpecificationSizeInGB :: Val Integer'
  , _eMRClusterVolumeSpecificationVolumeType :: Val Text
  } deriving (Show, Eq, Generic)

instance ToJSON EMRClusterVolumeSpecification where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 30, omitNothingFields = True }

instance FromJSON EMRClusterVolumeSpecification where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 30, omitNothingFields = True }

-- | Constructor for 'EMRClusterVolumeSpecification' containing required
-- | fields as arguments.
emrClusterVolumeSpecification
  :: Val Integer' -- ^ 'emrcvsSizeInGB'
  -> Val Text -- ^ 'emrcvsVolumeType'
  -> EMRClusterVolumeSpecification
emrClusterVolumeSpecification sizeInGBarg volumeTypearg =
  EMRClusterVolumeSpecification
  { _eMRClusterVolumeSpecificationIops = Nothing
  , _eMRClusterVolumeSpecificationSizeInGB = sizeInGBarg
  , _eMRClusterVolumeSpecificationVolumeType = volumeTypearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emr-ebsconfiguration-ebsblockdeviceconfig-volumespecification.html#cfn-emr-ebsconfiguration-ebsblockdeviceconfig-volumespecification-iops
emrcvsIops :: Lens' EMRClusterVolumeSpecification (Maybe (Val Integer'))
emrcvsIops = lens _eMRClusterVolumeSpecificationIops (\s a -> s { _eMRClusterVolumeSpecificationIops = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emr-ebsconfiguration-ebsblockdeviceconfig-volumespecification.html#cfn-emr-ebsconfiguration-ebsblockdeviceconfig-volumespecification-sizeingb
emrcvsSizeInGB :: Lens' EMRClusterVolumeSpecification (Val Integer')
emrcvsSizeInGB = lens _eMRClusterVolumeSpecificationSizeInGB (\s a -> s { _eMRClusterVolumeSpecificationSizeInGB = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emr-ebsconfiguration-ebsblockdeviceconfig-volumespecification.html#cfn-emr-ebsconfiguration-ebsblockdeviceconfig-volumespecification-volumetype
emrcvsVolumeType :: Lens' EMRClusterVolumeSpecification (Val Text)
emrcvsVolumeType = lens _eMRClusterVolumeSpecificationVolumeType (\s a -> s { _eMRClusterVolumeSpecificationVolumeType = a })
