
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amazonmq-broker-tagsentry.html

module Stratosphere.ResourceProperties.AmazonMQBrokerTagsEntry where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for AmazonMQBrokerTagsEntry. See
-- 'amazonMQBrokerTagsEntry' for a more convenient constructor.
data AmazonMQBrokerTagsEntry =
  AmazonMQBrokerTagsEntry
  { _amazonMQBrokerTagsEntryKey :: Val Text
  , _amazonMQBrokerTagsEntryValue :: Val Text
  } deriving (Show, Eq)

instance ToJSON AmazonMQBrokerTagsEntry where
  toJSON AmazonMQBrokerTagsEntry{..} =
    object $
    catMaybes
    [ (Just . ("Key",) . toJSON) _amazonMQBrokerTagsEntryKey
    , (Just . ("Value",) . toJSON) _amazonMQBrokerTagsEntryValue
    ]

-- | Constructor for 'AmazonMQBrokerTagsEntry' containing required fields as
-- arguments.
amazonMQBrokerTagsEntry
  :: Val Text -- ^ 'amqbteKey'
  -> Val Text -- ^ 'amqbteValue'
  -> AmazonMQBrokerTagsEntry
amazonMQBrokerTagsEntry keyarg valuearg =
  AmazonMQBrokerTagsEntry
  { _amazonMQBrokerTagsEntryKey = keyarg
  , _amazonMQBrokerTagsEntryValue = valuearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amazonmq-broker-tagsentry.html#cfn-amazonmq-broker-tagsentry-key
amqbteKey :: Lens' AmazonMQBrokerTagsEntry (Val Text)
amqbteKey = lens _amazonMQBrokerTagsEntryKey (\s a -> s { _amazonMQBrokerTagsEntryKey = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amazonmq-broker-tagsentry.html#cfn-amazonmq-broker-tagsentry-value
amqbteValue :: Lens' AmazonMQBrokerTagsEntry (Val Text)
amqbteValue = lens _amazonMQBrokerTagsEntryValue (\s a -> s { _amazonMQBrokerTagsEntryValue = a })
