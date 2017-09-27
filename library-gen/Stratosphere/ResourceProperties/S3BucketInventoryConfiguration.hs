{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-inventoryconfiguration.html

module Stratosphere.ResourceProperties.S3BucketInventoryConfiguration where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values
import Stratosphere.ResourceProperties.S3BucketDestination

-- | Full data type definition for S3BucketInventoryConfiguration. See
-- 's3BucketInventoryConfiguration' for a more convenient constructor.
data S3BucketInventoryConfiguration =
  S3BucketInventoryConfiguration
  { _s3BucketInventoryConfigurationDestination :: S3BucketDestination
  , _s3BucketInventoryConfigurationEnabled :: Val Bool
  , _s3BucketInventoryConfigurationId :: Val Text
  , _s3BucketInventoryConfigurationIncludedObjectVersions :: Val Text
  , _s3BucketInventoryConfigurationOptionalFields :: Maybe (ValList Text)
  , _s3BucketInventoryConfigurationPrefix :: Maybe (Val Text)
  , _s3BucketInventoryConfigurationScheduleFrequency :: Val Text
  } deriving (Show, Eq)

instance ToJSON S3BucketInventoryConfiguration where
  toJSON S3BucketInventoryConfiguration{..} =
    object $
    catMaybes
    [ (Just . ("Destination",) . toJSON) _s3BucketInventoryConfigurationDestination
    , (Just . ("Enabled",) . toJSON . fmap Bool') _s3BucketInventoryConfigurationEnabled
    , (Just . ("Id",) . toJSON) _s3BucketInventoryConfigurationId
    , (Just . ("IncludedObjectVersions",) . toJSON) _s3BucketInventoryConfigurationIncludedObjectVersions
    , fmap (("OptionalFields",) . toJSON) _s3BucketInventoryConfigurationOptionalFields
    , fmap (("Prefix",) . toJSON) _s3BucketInventoryConfigurationPrefix
    , (Just . ("ScheduleFrequency",) . toJSON) _s3BucketInventoryConfigurationScheduleFrequency
    ]

instance FromJSON S3BucketInventoryConfiguration where
  parseJSON (Object obj) =
    S3BucketInventoryConfiguration <$>
      (obj .: "Destination") <*>
      fmap (fmap unBool') (obj .: "Enabled") <*>
      (obj .: "Id") <*>
      (obj .: "IncludedObjectVersions") <*>
      (obj .:? "OptionalFields") <*>
      (obj .:? "Prefix") <*>
      (obj .: "ScheduleFrequency")
  parseJSON _ = mempty

-- | Constructor for 'S3BucketInventoryConfiguration' containing required
-- fields as arguments.
s3BucketInventoryConfiguration
  :: S3BucketDestination -- ^ 'sbicDestination'
  -> Val Bool -- ^ 'sbicEnabled'
  -> Val Text -- ^ 'sbicId'
  -> Val Text -- ^ 'sbicIncludedObjectVersions'
  -> Val Text -- ^ 'sbicScheduleFrequency'
  -> S3BucketInventoryConfiguration
s3BucketInventoryConfiguration destinationarg enabledarg idarg includedObjectVersionsarg scheduleFrequencyarg =
  S3BucketInventoryConfiguration
  { _s3BucketInventoryConfigurationDestination = destinationarg
  , _s3BucketInventoryConfigurationEnabled = enabledarg
  , _s3BucketInventoryConfigurationId = idarg
  , _s3BucketInventoryConfigurationIncludedObjectVersions = includedObjectVersionsarg
  , _s3BucketInventoryConfigurationOptionalFields = Nothing
  , _s3BucketInventoryConfigurationPrefix = Nothing
  , _s3BucketInventoryConfigurationScheduleFrequency = scheduleFrequencyarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-inventoryconfiguration.html#cfn-s3-bucket-inventoryconfiguration-destination
sbicDestination :: Lens' S3BucketInventoryConfiguration S3BucketDestination
sbicDestination = lens _s3BucketInventoryConfigurationDestination (\s a -> s { _s3BucketInventoryConfigurationDestination = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-inventoryconfiguration.html#cfn-s3-bucket-inventoryconfiguration-enabled
sbicEnabled :: Lens' S3BucketInventoryConfiguration (Val Bool)
sbicEnabled = lens _s3BucketInventoryConfigurationEnabled (\s a -> s { _s3BucketInventoryConfigurationEnabled = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-inventoryconfiguration.html#cfn-s3-bucket-inventoryconfiguration-id
sbicId :: Lens' S3BucketInventoryConfiguration (Val Text)
sbicId = lens _s3BucketInventoryConfigurationId (\s a -> s { _s3BucketInventoryConfigurationId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-inventoryconfiguration.html#cfn-s3-bucket-inventoryconfiguration-includedobjectversions
sbicIncludedObjectVersions :: Lens' S3BucketInventoryConfiguration (Val Text)
sbicIncludedObjectVersions = lens _s3BucketInventoryConfigurationIncludedObjectVersions (\s a -> s { _s3BucketInventoryConfigurationIncludedObjectVersions = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-inventoryconfiguration.html#cfn-s3-bucket-inventoryconfiguration-optionalfields
sbicOptionalFields :: Lens' S3BucketInventoryConfiguration (Maybe (ValList Text))
sbicOptionalFields = lens _s3BucketInventoryConfigurationOptionalFields (\s a -> s { _s3BucketInventoryConfigurationOptionalFields = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-inventoryconfiguration.html#cfn-s3-bucket-inventoryconfiguration-prefix
sbicPrefix :: Lens' S3BucketInventoryConfiguration (Maybe (Val Text))
sbicPrefix = lens _s3BucketInventoryConfigurationPrefix (\s a -> s { _s3BucketInventoryConfigurationPrefix = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-inventoryconfiguration.html#cfn-s3-bucket-inventoryconfiguration-schedulefrequency
sbicScheduleFrequency :: Lens' S3BucketInventoryConfiguration (Val Text)
sbicScheduleFrequency = lens _s3BucketInventoryConfigurationScheduleFrequency (\s a -> s { _s3BucketInventoryConfigurationScheduleFrequency = a })
