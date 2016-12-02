{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-kinesisdeliverystream-s3destinationconfiguration-encryptionconfiguration.html

module Stratosphere.ResourceProperties.KinesisFirehoseDeliveryStreamEncryptionConfiguration where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.Types
import Stratosphere.ResourceProperties.KinesisFirehoseDeliveryStreamKMSEncryptionConfig

-- | Full data type definition for
-- | KinesisFirehoseDeliveryStreamEncryptionConfiguration. See
-- | 'kinesisFirehoseDeliveryStreamEncryptionConfiguration' for a more
-- | convenient constructor.
data KinesisFirehoseDeliveryStreamEncryptionConfiguration =
  KinesisFirehoseDeliveryStreamEncryptionConfiguration
  { _kinesisFirehoseDeliveryStreamEncryptionConfigurationKMSEncryptionConfig :: Maybe KinesisFirehoseDeliveryStreamKMSEncryptionConfig
  , _kinesisFirehoseDeliveryStreamEncryptionConfigurationNoEncryptionConfig :: Maybe (Val KinesisFirehoseNoEncryptionConfig)
  } deriving (Show, Generic)

instance ToJSON KinesisFirehoseDeliveryStreamEncryptionConfiguration where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 53, omitNothingFields = True }

instance FromJSON KinesisFirehoseDeliveryStreamEncryptionConfiguration where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 53, omitNothingFields = True }

-- | Constructor for 'KinesisFirehoseDeliveryStreamEncryptionConfiguration'
-- | containing required fields as arguments.
kinesisFirehoseDeliveryStreamEncryptionConfiguration
  :: KinesisFirehoseDeliveryStreamEncryptionConfiguration
kinesisFirehoseDeliveryStreamEncryptionConfiguration  =
  KinesisFirehoseDeliveryStreamEncryptionConfiguration
  { _kinesisFirehoseDeliveryStreamEncryptionConfigurationKMSEncryptionConfig = Nothing
  , _kinesisFirehoseDeliveryStreamEncryptionConfigurationNoEncryptionConfig = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-kinesisdeliverystream-s3destinationconfiguration-encryptionconfiguration.html#cfn-kinesisfirehose-kinesisdeliverystream-s3destinationconfiguration-encryptionconfiguration-kmsencryptionconfig
kfdsecKMSEncryptionConfig :: Lens' KinesisFirehoseDeliveryStreamEncryptionConfiguration (Maybe KinesisFirehoseDeliveryStreamKMSEncryptionConfig)
kfdsecKMSEncryptionConfig = lens _kinesisFirehoseDeliveryStreamEncryptionConfigurationKMSEncryptionConfig (\s a -> s { _kinesisFirehoseDeliveryStreamEncryptionConfigurationKMSEncryptionConfig = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-kinesisdeliverystream-s3destinationconfiguration-encryptionconfiguration.html#cfn-kinesisfirehose-kinesisdeliverystream-s3destinationconfiguration-encryptionconfiguration-noencryptionconfig
kfdsecNoEncryptionConfig :: Lens' KinesisFirehoseDeliveryStreamEncryptionConfiguration (Maybe (Val KinesisFirehoseNoEncryptionConfig))
kfdsecNoEncryptionConfig = lens _kinesisFirehoseDeliveryStreamEncryptionConfigurationNoEncryptionConfig (\s a -> s { _kinesisFirehoseDeliveryStreamEncryptionConfigurationNoEncryptionConfig = a })
