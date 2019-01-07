{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amazonmq-configuration-tagsentry.html

module Stratosphere.ResourceProperties.AmazonMQConfigurationTagsEntry where

import Stratosphere.ResourceImports


-- | Full data type definition for AmazonMQConfigurationTagsEntry. See
-- 'amazonMQConfigurationTagsEntry' for a more convenient constructor.
data AmazonMQConfigurationTagsEntry =
  AmazonMQConfigurationTagsEntry
  { _amazonMQConfigurationTagsEntryKey :: Val Text
  , _amazonMQConfigurationTagsEntryValue :: Val Text
  } deriving (Show, Eq)

instance ToJSON AmazonMQConfigurationTagsEntry where
  toJSON AmazonMQConfigurationTagsEntry{..} =
    object $
    catMaybes
    [ (Just . ("Key",) . toJSON) _amazonMQConfigurationTagsEntryKey
    , (Just . ("Value",) . toJSON) _amazonMQConfigurationTagsEntryValue
    ]

instance FromJSON AmazonMQConfigurationTagsEntry where
  parseJSON (Object obj) =
    AmazonMQConfigurationTagsEntry <$>
      (obj .: "Key") <*>
      (obj .: "Value")
  parseJSON _ = mempty

-- | Constructor for 'AmazonMQConfigurationTagsEntry' containing required
-- fields as arguments.
amazonMQConfigurationTagsEntry
  :: Val Text -- ^ 'amqcteKey'
  -> Val Text -- ^ 'amqcteValue'
  -> AmazonMQConfigurationTagsEntry
amazonMQConfigurationTagsEntry keyarg valuearg =
  AmazonMQConfigurationTagsEntry
  { _amazonMQConfigurationTagsEntryKey = keyarg
  , _amazonMQConfigurationTagsEntryValue = valuearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amazonmq-configuration-tagsentry.html#cfn-amazonmq-configuration-tagsentry-key
amqcteKey :: Lens' AmazonMQConfigurationTagsEntry (Val Text)
amqcteKey = lens _amazonMQConfigurationTagsEntryKey (\s a -> s { _amazonMQConfigurationTagsEntryKey = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amazonmq-configuration-tagsentry.html#cfn-amazonmq-configuration-tagsentry-value
amqcteValue :: Lens' AmazonMQConfigurationTagsEntry (Val Text)
amqcteValue = lens _amazonMQConfigurationTagsEntryValue (\s a -> s { _amazonMQConfigurationTagsEntryValue = a })
