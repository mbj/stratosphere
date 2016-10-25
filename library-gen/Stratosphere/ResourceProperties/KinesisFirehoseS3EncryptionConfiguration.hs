{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | EncryptionConfiguration is a property of the Amazon Kinesis Firehose
-- DeliveryStream S3DestinationConfiguration property that specifies the
-- encryption settings that Amazon Kinesis Firehose (Firehose) uses when
-- delivering data to Amazon Simple Storage Service (Amazon S3).

module Stratosphere.ResourceProperties.KinesisFirehoseS3EncryptionConfiguration where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.ResourceProperties.KinesisFirehoseS3KMSEncryptionConfig
import Stratosphere.Types

-- | Full data type definition for KinesisFirehoseS3EncryptionConfiguration.
-- See 'kinesisFirehoseS3EncryptionConfiguration' for a more convenient
-- constructor.
data KinesisFirehoseS3EncryptionConfiguration =
  KinesisFirehoseS3EncryptionConfiguration
  { _kinesisFirehoseS3EncryptionConfigurationKMSEncryptionConfig :: Maybe KinesisFirehoseS3KMSEncryptionConfig
  , _kinesisFirehoseS3EncryptionConfigurationNoEncryptionConfig :: Maybe KinesisFirehoseNoEncryptionConfig
  } deriving (Show, Generic)

instance ToJSON KinesisFirehoseS3EncryptionConfiguration where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 41, omitNothingFields = True }

instance FromJSON KinesisFirehoseS3EncryptionConfiguration where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 41, omitNothingFields = True }

-- | Constructor for 'KinesisFirehoseS3EncryptionConfiguration' containing
-- required fields as arguments.
kinesisFirehoseS3EncryptionConfiguration
  :: KinesisFirehoseS3EncryptionConfiguration
kinesisFirehoseS3EncryptionConfiguration  =
  KinesisFirehoseS3EncryptionConfiguration
  { _kinesisFirehoseS3EncryptionConfigurationKMSEncryptionConfig = Nothing
  , _kinesisFirehoseS3EncryptionConfigurationNoEncryptionConfig = Nothing
  }

-- | The AWS Key Management Service (AWS KMS) encryption key that Amazon S3
-- uses to encrypt your data.
kfsecKMSEncryptionConfig :: Lens' KinesisFirehoseS3EncryptionConfiguration (Maybe KinesisFirehoseS3KMSEncryptionConfig)
kfsecKMSEncryptionConfig = lens _kinesisFirehoseS3EncryptionConfigurationKMSEncryptionConfig (\s a -> s { _kinesisFirehoseS3EncryptionConfigurationKMSEncryptionConfig = a })

-- | Disables encryption. For valid values, see the NoEncryptionConfig content
-- for the EncryptionConfiguration data type in the Amazon Kinesis Firehose
-- API Reference.
kfsecNoEncryptionConfig :: Lens' KinesisFirehoseS3EncryptionConfiguration (Maybe KinesisFirehoseNoEncryptionConfig)
kfsecNoEncryptionConfig = lens _kinesisFirehoseS3EncryptionConfigurationNoEncryptionConfig (\s a -> s { _kinesisFirehoseS3EncryptionConfigurationNoEncryptionConfig = a })