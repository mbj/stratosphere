
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-kmsencryptionconfig.html

module Stratosphere.ResourceProperties.KinesisFirehoseDeliveryStreamKMSEncryptionConfig where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for
-- KinesisFirehoseDeliveryStreamKMSEncryptionConfig. See
-- 'kinesisFirehoseDeliveryStreamKMSEncryptionConfig' for a more convenient
-- constructor.
data KinesisFirehoseDeliveryStreamKMSEncryptionConfig =
  KinesisFirehoseDeliveryStreamKMSEncryptionConfig
  { _kinesisFirehoseDeliveryStreamKMSEncryptionConfigAWSKMSKeyARN :: Val Text
  } deriving (Show, Eq)

instance ToJSON KinesisFirehoseDeliveryStreamKMSEncryptionConfig where
  toJSON KinesisFirehoseDeliveryStreamKMSEncryptionConfig{..} =
    object $
    catMaybes
    [ (Just . ("AWSKMSKeyARN",) . toJSON) _kinesisFirehoseDeliveryStreamKMSEncryptionConfigAWSKMSKeyARN
    ]

-- | Constructor for 'KinesisFirehoseDeliveryStreamKMSEncryptionConfig'
-- containing required fields as arguments.
kinesisFirehoseDeliveryStreamKMSEncryptionConfig
  :: Val Text -- ^ 'kfdskmsecAWSKMSKeyARN'
  -> KinesisFirehoseDeliveryStreamKMSEncryptionConfig
kinesisFirehoseDeliveryStreamKMSEncryptionConfig aWSKMSKeyARNarg =
  KinesisFirehoseDeliveryStreamKMSEncryptionConfig
  { _kinesisFirehoseDeliveryStreamKMSEncryptionConfigAWSKMSKeyARN = aWSKMSKeyARNarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-kmsencryptionconfig.html#cfn-kinesisfirehose-deliverystream-kmsencryptionconfig-awskmskeyarn
kfdskmsecAWSKMSKeyARN :: Lens' KinesisFirehoseDeliveryStreamKMSEncryptionConfig (Val Text)
kfdskmsecAWSKMSKeyARN = lens _kinesisFirehoseDeliveryStreamKMSEncryptionConfigAWSKMSKeyARN (\s a -> s { _kinesisFirehoseDeliveryStreamKMSEncryptionConfigAWSKMSKeyARN = a })
