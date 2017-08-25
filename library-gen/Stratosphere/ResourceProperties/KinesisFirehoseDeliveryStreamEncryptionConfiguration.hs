{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-encryptionconfiguration.html

module Stratosphere.ResourceProperties.KinesisFirehoseDeliveryStreamEncryptionConfiguration where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values
import Stratosphere.Types
import Stratosphere.ResourceProperties.KinesisFirehoseDeliveryStreamKMSEncryptionConfig

-- | Full data type definition for
-- KinesisFirehoseDeliveryStreamEncryptionConfiguration. See
-- 'kinesisFirehoseDeliveryStreamEncryptionConfiguration' for a more
-- convenient constructor.
data KinesisFirehoseDeliveryStreamEncryptionConfiguration =
  KinesisFirehoseDeliveryStreamEncryptionConfiguration
  { _kinesisFirehoseDeliveryStreamEncryptionConfigurationKMSEncryptionConfig :: Maybe KinesisFirehoseDeliveryStreamKMSEncryptionConfig
  , _kinesisFirehoseDeliveryStreamEncryptionConfigurationNoEncryptionConfig :: Maybe (Val KinesisFirehoseNoEncryptionConfig)
  } deriving (Show, Eq)

instance ToJSON KinesisFirehoseDeliveryStreamEncryptionConfiguration where
  toJSON KinesisFirehoseDeliveryStreamEncryptionConfiguration{..} =
    object $
    catMaybes
    [ fmap (("KMSEncryptionConfig",) . toJSON) _kinesisFirehoseDeliveryStreamEncryptionConfigurationKMSEncryptionConfig
    , fmap (("NoEncryptionConfig",) . toJSON) _kinesisFirehoseDeliveryStreamEncryptionConfigurationNoEncryptionConfig
    ]

instance FromJSON KinesisFirehoseDeliveryStreamEncryptionConfiguration where
  parseJSON (Object obj) =
    KinesisFirehoseDeliveryStreamEncryptionConfiguration <$>
      (obj .:? "KMSEncryptionConfig") <*>
      (obj .:? "NoEncryptionConfig")
  parseJSON _ = mempty

-- | Constructor for 'KinesisFirehoseDeliveryStreamEncryptionConfiguration'
-- containing required fields as arguments.
kinesisFirehoseDeliveryStreamEncryptionConfiguration
  :: KinesisFirehoseDeliveryStreamEncryptionConfiguration
kinesisFirehoseDeliveryStreamEncryptionConfiguration  =
  KinesisFirehoseDeliveryStreamEncryptionConfiguration
  { _kinesisFirehoseDeliveryStreamEncryptionConfigurationKMSEncryptionConfig = Nothing
  , _kinesisFirehoseDeliveryStreamEncryptionConfigurationNoEncryptionConfig = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-encryptionconfiguration.html#cfn-kinesisfirehose-deliverystream-encryptionconfiguration-kmsencryptionconfig
kfdsecKMSEncryptionConfig :: Lens' KinesisFirehoseDeliveryStreamEncryptionConfiguration (Maybe KinesisFirehoseDeliveryStreamKMSEncryptionConfig)
kfdsecKMSEncryptionConfig = lens _kinesisFirehoseDeliveryStreamEncryptionConfigurationKMSEncryptionConfig (\s a -> s { _kinesisFirehoseDeliveryStreamEncryptionConfigurationKMSEncryptionConfig = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-encryptionconfiguration.html#cfn-kinesisfirehose-deliverystream-encryptionconfiguration-noencryptionconfig
kfdsecNoEncryptionConfig :: Lens' KinesisFirehoseDeliveryStreamEncryptionConfiguration (Maybe (Val KinesisFirehoseNoEncryptionConfig))
kfdsecNoEncryptionConfig = lens _kinesisFirehoseDeliveryStreamEncryptionConfigurationNoEncryptionConfig (\s a -> s { _kinesisFirehoseDeliveryStreamEncryptionConfigurationNoEncryptionConfig = a })
