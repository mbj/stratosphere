{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-kinesisdeliverystream-s3destinationconfiguration-encryptionconfiguration-kmsencryptionconfig.html

module Stratosphere.ResourceProperties.KinesisFirehoseDeliveryStreamKMSEncryptionConfig where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for
-- | KinesisFirehoseDeliveryStreamKMSEncryptionConfig. See
-- | 'kinesisFirehoseDeliveryStreamKMSEncryptionConfig' for a more convenient
-- | constructor.
data KinesisFirehoseDeliveryStreamKMSEncryptionConfig =
  KinesisFirehoseDeliveryStreamKMSEncryptionConfig
  { _kinesisFirehoseDeliveryStreamKMSEncryptionConfigAWSKMSKeyARN :: Val Text
  } deriving (Show, Eq, Generic)

instance ToJSON KinesisFirehoseDeliveryStreamKMSEncryptionConfig where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 49, omitNothingFields = True }

instance FromJSON KinesisFirehoseDeliveryStreamKMSEncryptionConfig where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 49, omitNothingFields = True }

-- | Constructor for 'KinesisFirehoseDeliveryStreamKMSEncryptionConfig'
-- | containing required fields as arguments.
kinesisFirehoseDeliveryStreamKMSEncryptionConfig
  :: Val Text -- ^ 'kfdskmsecAWSKMSKeyARN'
  -> KinesisFirehoseDeliveryStreamKMSEncryptionConfig
kinesisFirehoseDeliveryStreamKMSEncryptionConfig aWSKMSKeyARNarg =
  KinesisFirehoseDeliveryStreamKMSEncryptionConfig
  { _kinesisFirehoseDeliveryStreamKMSEncryptionConfigAWSKMSKeyARN = aWSKMSKeyARNarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-kinesisdeliverystream-s3destinationconfiguration-encryptionconfiguration-kmsencryptionconfig.html#cfn-kinesisfirehose-kinesisdeliverystream-s3destinationconfiguration-encryptionconfiguration-kmsencryptionconfig-awskmskeyarn
kfdskmsecAWSKMSKeyARN :: Lens' KinesisFirehoseDeliveryStreamKMSEncryptionConfig (Val Text)
kfdskmsecAWSKMSKeyARN = lens _kinesisFirehoseDeliveryStreamKMSEncryptionConfigAWSKMSKeyARN (\s a -> s { _kinesisFirehoseDeliveryStreamKMSEncryptionConfigAWSKMSKeyARN = a })
