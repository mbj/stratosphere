{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-kinesisstreamsourceconfiguration.html

module Stratosphere.ResourceProperties.KinesisFirehoseDeliveryStreamKinesisStreamSourceConfiguration where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- KinesisFirehoseDeliveryStreamKinesisStreamSourceConfiguration. See
-- 'kinesisFirehoseDeliveryStreamKinesisStreamSourceConfiguration' for a
-- more convenient constructor.
data KinesisFirehoseDeliveryStreamKinesisStreamSourceConfiguration =
  KinesisFirehoseDeliveryStreamKinesisStreamSourceConfiguration
  { _kinesisFirehoseDeliveryStreamKinesisStreamSourceConfigurationKinesisStreamARN :: Val Text
  , _kinesisFirehoseDeliveryStreamKinesisStreamSourceConfigurationRoleARN :: Val Text
  } deriving (Show, Eq)

instance ToJSON KinesisFirehoseDeliveryStreamKinesisStreamSourceConfiguration where
  toJSON KinesisFirehoseDeliveryStreamKinesisStreamSourceConfiguration{..} =
    object $
    catMaybes
    [ (Just . ("KinesisStreamARN",) . toJSON) _kinesisFirehoseDeliveryStreamKinesisStreamSourceConfigurationKinesisStreamARN
    , (Just . ("RoleARN",) . toJSON) _kinesisFirehoseDeliveryStreamKinesisStreamSourceConfigurationRoleARN
    ]

instance FromJSON KinesisFirehoseDeliveryStreamKinesisStreamSourceConfiguration where
  parseJSON (Object obj) =
    KinesisFirehoseDeliveryStreamKinesisStreamSourceConfiguration <$>
      (obj .: "KinesisStreamARN") <*>
      (obj .: "RoleARN")
  parseJSON _ = mempty

-- | Constructor for
-- 'KinesisFirehoseDeliveryStreamKinesisStreamSourceConfiguration'
-- containing required fields as arguments.
kinesisFirehoseDeliveryStreamKinesisStreamSourceConfiguration
  :: Val Text -- ^ 'kfdsksscKinesisStreamARN'
  -> Val Text -- ^ 'kfdsksscRoleARN'
  -> KinesisFirehoseDeliveryStreamKinesisStreamSourceConfiguration
kinesisFirehoseDeliveryStreamKinesisStreamSourceConfiguration kinesisStreamARNarg roleARNarg =
  KinesisFirehoseDeliveryStreamKinesisStreamSourceConfiguration
  { _kinesisFirehoseDeliveryStreamKinesisStreamSourceConfigurationKinesisStreamARN = kinesisStreamARNarg
  , _kinesisFirehoseDeliveryStreamKinesisStreamSourceConfigurationRoleARN = roleARNarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-kinesisstreamsourceconfiguration.html#cfn-kinesisfirehose-deliverystream-kinesisstreamsourceconfiguration-kinesisstreamarn
kfdsksscKinesisStreamARN :: Lens' KinesisFirehoseDeliveryStreamKinesisStreamSourceConfiguration (Val Text)
kfdsksscKinesisStreamARN = lens _kinesisFirehoseDeliveryStreamKinesisStreamSourceConfigurationKinesisStreamARN (\s a -> s { _kinesisFirehoseDeliveryStreamKinesisStreamSourceConfigurationKinesisStreamARN = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-kinesisstreamsourceconfiguration.html#cfn-kinesisfirehose-deliverystream-kinesisstreamsourceconfiguration-rolearn
kfdsksscRoleARN :: Lens' KinesisFirehoseDeliveryStreamKinesisStreamSourceConfiguration (Val Text)
kfdsksscRoleARN = lens _kinesisFirehoseDeliveryStreamKinesisStreamSourceConfigurationRoleARN (\s a -> s { _kinesisFirehoseDeliveryStreamKinesisStreamSourceConfigurationRoleARN = a })
