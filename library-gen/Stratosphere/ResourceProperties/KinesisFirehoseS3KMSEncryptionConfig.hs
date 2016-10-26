{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | KMSEncryptionConfig is a property of the Amazon Kinesis Firehose
-- DeliveryStream S3DestinationConfiguration EncryptionConfiguration property
-- that specifies the AWS Key Management Service (AWS KMS) encryption key that
-- Amazon Simple Storage Service (Amazon S3) uses to encrypt data delivered by
-- the Amazon Kinesis Firehose (Firehose) stream.

module Stratosphere.ResourceProperties.KinesisFirehoseS3KMSEncryptionConfig where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for KinesisFirehoseS3KMSEncryptionConfig. See
-- 'kinesisFirehoseS3KMSEncryptionConfig' for a more convenient constructor.
data KinesisFirehoseS3KMSEncryptionConfig =
  KinesisFirehoseS3KMSEncryptionConfig
  { _kinesisFirehoseS3KMSEncryptionConfigAWSKMSKeyARN :: Val Text
  } deriving (Show, Generic)

instance ToJSON KinesisFirehoseS3KMSEncryptionConfig where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 37, omitNothingFields = True }

instance FromJSON KinesisFirehoseS3KMSEncryptionConfig where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 37, omitNothingFields = True }

-- | Constructor for 'KinesisFirehoseS3KMSEncryptionConfig' containing
-- required fields as arguments.
kinesisFirehoseS3KMSEncryptionConfig
  :: Val Text -- ^ 'kfskmsecAWSKMSKeyARN'
  -> KinesisFirehoseS3KMSEncryptionConfig
kinesisFirehoseS3KMSEncryptionConfig aWSKMSKeyARNarg =
  KinesisFirehoseS3KMSEncryptionConfig
  { _kinesisFirehoseS3KMSEncryptionConfigAWSKMSKeyARN = aWSKMSKeyARNarg
  }

-- | The Amazon Resource Name (ARN) of the AWS KMS encryption key that Amazon
-- S3 uses to encrypt data delivered by the Firehose stream. The key must
-- belong to the same region as the destination S3 bucket.
kfskmsecAWSKMSKeyARN :: Lens' KinesisFirehoseS3KMSEncryptionConfig (Val Text)
kfskmsecAWSKMSKeyARN = lens _kinesisFirehoseS3KMSEncryptionConfigAWSKMSKeyARN (\s a -> s { _kinesisFirehoseS3KMSEncryptionConfigAWSKMSKeyARN = a })