
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eventschemas-registry-tagsentry.html

module Stratosphere.ResourceProperties.EventSchemasRegistryTagsEntry where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for EventSchemasRegistryTagsEntry. See
-- 'eventSchemasRegistryTagsEntry' for a more convenient constructor.
data EventSchemasRegistryTagsEntry =
  EventSchemasRegistryTagsEntry
  { _eventSchemasRegistryTagsEntryKey :: Val Text
  , _eventSchemasRegistryTagsEntryValue :: Val Text
  } deriving (Show, Eq)

instance ToJSON EventSchemasRegistryTagsEntry where
  toJSON EventSchemasRegistryTagsEntry{..} =
    object $
    catMaybes
    [ (Just . ("Key",) . toJSON) _eventSchemasRegistryTagsEntryKey
    , (Just . ("Value",) . toJSON) _eventSchemasRegistryTagsEntryValue
    ]

-- | Constructor for 'EventSchemasRegistryTagsEntry' containing required
-- fields as arguments.
eventSchemasRegistryTagsEntry
  :: Val Text -- ^ 'esrteKey'
  -> Val Text -- ^ 'esrteValue'
  -> EventSchemasRegistryTagsEntry
eventSchemasRegistryTagsEntry keyarg valuearg =
  EventSchemasRegistryTagsEntry
  { _eventSchemasRegistryTagsEntryKey = keyarg
  , _eventSchemasRegistryTagsEntryValue = valuearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eventschemas-registry-tagsentry.html#cfn-eventschemas-registry-tagsentry-key
esrteKey :: Lens' EventSchemasRegistryTagsEntry (Val Text)
esrteKey = lens _eventSchemasRegistryTagsEntryKey (\s a -> s { _eventSchemasRegistryTagsEntryKey = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eventschemas-registry-tagsentry.html#cfn-eventschemas-registry-tagsentry-value
esrteValue :: Lens' EventSchemasRegistryTagsEntry (Val Text)
esrteValue = lens _eventSchemasRegistryTagsEntryValue (\s a -> s { _eventSchemasRegistryTagsEntryValue = a })
