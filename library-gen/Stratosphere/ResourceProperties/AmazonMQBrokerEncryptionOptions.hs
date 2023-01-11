
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amazonmq-broker-encryptionoptions.html

module Stratosphere.ResourceProperties.AmazonMQBrokerEncryptionOptions where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for AmazonMQBrokerEncryptionOptions. See
-- 'amazonMQBrokerEncryptionOptions' for a more convenient constructor.
data AmazonMQBrokerEncryptionOptions =
  AmazonMQBrokerEncryptionOptions
  { _amazonMQBrokerEncryptionOptionsKmsKeyId :: Maybe (Val Text)
  , _amazonMQBrokerEncryptionOptionsUseAwsOwnedKey :: Val Bool
  } deriving (Show, Eq)

instance ToJSON AmazonMQBrokerEncryptionOptions where
  toJSON AmazonMQBrokerEncryptionOptions{..} =
    object $
    catMaybes
    [ fmap (("KmsKeyId",) . toJSON) _amazonMQBrokerEncryptionOptionsKmsKeyId
    , (Just . ("UseAwsOwnedKey",) . toJSON) _amazonMQBrokerEncryptionOptionsUseAwsOwnedKey
    ]

-- | Constructor for 'AmazonMQBrokerEncryptionOptions' containing required
-- fields as arguments.
amazonMQBrokerEncryptionOptions
  :: Val Bool -- ^ 'amqbeoUseAwsOwnedKey'
  -> AmazonMQBrokerEncryptionOptions
amazonMQBrokerEncryptionOptions useAwsOwnedKeyarg =
  AmazonMQBrokerEncryptionOptions
  { _amazonMQBrokerEncryptionOptionsKmsKeyId = Nothing
  , _amazonMQBrokerEncryptionOptionsUseAwsOwnedKey = useAwsOwnedKeyarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amazonmq-broker-encryptionoptions.html#cfn-amazonmq-broker-encryptionoptions-kmskeyid
amqbeoKmsKeyId :: Lens' AmazonMQBrokerEncryptionOptions (Maybe (Val Text))
amqbeoKmsKeyId = lens _amazonMQBrokerEncryptionOptionsKmsKeyId (\s a -> s { _amazonMQBrokerEncryptionOptionsKmsKeyId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amazonmq-broker-encryptionoptions.html#cfn-amazonmq-broker-encryptionoptions-useawsownedkey
amqbeoUseAwsOwnedKey :: Lens' AmazonMQBrokerEncryptionOptions (Val Bool)
amqbeoUseAwsOwnedKey = lens _amazonMQBrokerEncryptionOptionsUseAwsOwnedKey (\s a -> s { _amazonMQBrokerEncryptionOptionsUseAwsOwnedKey = a })
