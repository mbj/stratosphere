{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancefleetconfig-volumespecification.html

module Stratosphere.ResourceProperties.EMRInstanceFleetConfigVolumeSpecification where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for EMRInstanceFleetConfigVolumeSpecification.
-- See 'emrInstanceFleetConfigVolumeSpecification' for a more convenient
-- constructor.
data EMRInstanceFleetConfigVolumeSpecification =
  EMRInstanceFleetConfigVolumeSpecification
  { _eMRInstanceFleetConfigVolumeSpecificationIops :: Maybe (Val Integer)
  , _eMRInstanceFleetConfigVolumeSpecificationSizeInGB :: Val Integer
  , _eMRInstanceFleetConfigVolumeSpecificationVolumeType :: Val Text
  } deriving (Show, Eq)

instance ToJSON EMRInstanceFleetConfigVolumeSpecification where
  toJSON EMRInstanceFleetConfigVolumeSpecification{..} =
    object $
    catMaybes
    [ fmap (("Iops",) . toJSON . fmap Integer') _eMRInstanceFleetConfigVolumeSpecificationIops
    , (Just . ("SizeInGB",) . toJSON . fmap Integer') _eMRInstanceFleetConfigVolumeSpecificationSizeInGB
    , (Just . ("VolumeType",) . toJSON) _eMRInstanceFleetConfigVolumeSpecificationVolumeType
    ]

instance FromJSON EMRInstanceFleetConfigVolumeSpecification where
  parseJSON (Object obj) =
    EMRInstanceFleetConfigVolumeSpecification <$>
      fmap (fmap (fmap unInteger')) (obj .:? "Iops") <*>
      fmap (fmap unInteger') (obj .: "SizeInGB") <*>
      (obj .: "VolumeType")
  parseJSON _ = mempty

-- | Constructor for 'EMRInstanceFleetConfigVolumeSpecification' containing
-- required fields as arguments.
emrInstanceFleetConfigVolumeSpecification
  :: Val Integer -- ^ 'emrifcvsSizeInGB'
  -> Val Text -- ^ 'emrifcvsVolumeType'
  -> EMRInstanceFleetConfigVolumeSpecification
emrInstanceFleetConfigVolumeSpecification sizeInGBarg volumeTypearg =
  EMRInstanceFleetConfigVolumeSpecification
  { _eMRInstanceFleetConfigVolumeSpecificationIops = Nothing
  , _eMRInstanceFleetConfigVolumeSpecificationSizeInGB = sizeInGBarg
  , _eMRInstanceFleetConfigVolumeSpecificationVolumeType = volumeTypearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancefleetconfig-volumespecification.html#cfn-elasticmapreduce-instancefleetconfig-volumespecification-iops
emrifcvsIops :: Lens' EMRInstanceFleetConfigVolumeSpecification (Maybe (Val Integer))
emrifcvsIops = lens _eMRInstanceFleetConfigVolumeSpecificationIops (\s a -> s { _eMRInstanceFleetConfigVolumeSpecificationIops = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancefleetconfig-volumespecification.html#cfn-elasticmapreduce-instancefleetconfig-volumespecification-sizeingb
emrifcvsSizeInGB :: Lens' EMRInstanceFleetConfigVolumeSpecification (Val Integer)
emrifcvsSizeInGB = lens _eMRInstanceFleetConfigVolumeSpecificationSizeInGB (\s a -> s { _eMRInstanceFleetConfigVolumeSpecificationSizeInGB = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancefleetconfig-volumespecification.html#cfn-elasticmapreduce-instancefleetconfig-volumespecification-volumetype
emrifcvsVolumeType :: Lens' EMRInstanceFleetConfigVolumeSpecification (Val Text)
emrifcvsVolumeType = lens _eMRInstanceFleetConfigVolumeSpecificationVolumeType (\s a -> s { _eMRInstanceFleetConfigVolumeSpecificationVolumeType = a })
