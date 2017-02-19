{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-kinesisdeliverystream-s3destinationconfiguration-encryptionconfiguration-kmsencryptionconfig.html

module Stratosphere.ResourceProperties.KinesisFirehoseDeliveryStreamKMSEncryptionConfig where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for
-- | KinesisFirehoseDeliveryStreamKMSEncryptionConfig. See
-- | 'kinesisFirehoseDeliveryStreamKMSEncryptionConfig' for a more convenient
-- | constructor.
data KinesisFirehoseDeliveryStreamKMSEncryptionConfig =
  KinesisFirehoseDeliveryStreamKMSEncryptionConfig
  { _kinesisFirehoseDeliveryStreamKMSEncryptionConfigAWSKMSKeyARN :: Val Text
  } deriving (Show, Eq)

instance ToJSON KinesisFirehoseDeliveryStreamKMSEncryptionConfig where
  toJSON KinesisFirehoseDeliveryStreamKMSEncryptionConfig{..} =
    object $
    catMaybes
    [ Just ("AWSKMSKeyARN" .= _kinesisFirehoseDeliveryStreamKMSEncryptionConfigAWSKMSKeyARN)
    ]

instance FromJSON KinesisFirehoseDeliveryStreamKMSEncryptionConfig where
  parseJSON (Object obj) =
    KinesisFirehoseDeliveryStreamKMSEncryptionConfig <$>
      obj .: "AWSKMSKeyARN"
  parseJSON _ = mempty

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
