
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eventschemas-discoverer-tagsentry.html

module Stratosphere.ResourceProperties.EventSchemasDiscovererTagsEntry where

import Stratosphere.ResourceImports


-- | Full data type definition for EventSchemasDiscovererTagsEntry. See
-- 'eventSchemasDiscovererTagsEntry' for a more convenient constructor.
data EventSchemasDiscovererTagsEntry =
  EventSchemasDiscovererTagsEntry
  { _eventSchemasDiscovererTagsEntryKey :: Val Text
  , _eventSchemasDiscovererTagsEntryValue :: Val Text
  } deriving (Show, Eq)

instance ToJSON EventSchemasDiscovererTagsEntry where
  toJSON EventSchemasDiscovererTagsEntry{..} =
    object $
    catMaybes
    [ (Just . ("Key",) . toJSON) _eventSchemasDiscovererTagsEntryKey
    , (Just . ("Value",) . toJSON) _eventSchemasDiscovererTagsEntryValue
    ]

-- | Constructor for 'EventSchemasDiscovererTagsEntry' containing required
-- fields as arguments.
eventSchemasDiscovererTagsEntry
  :: Val Text -- ^ 'esdteKey'
  -> Val Text -- ^ 'esdteValue'
  -> EventSchemasDiscovererTagsEntry
eventSchemasDiscovererTagsEntry keyarg valuearg =
  EventSchemasDiscovererTagsEntry
  { _eventSchemasDiscovererTagsEntryKey = keyarg
  , _eventSchemasDiscovererTagsEntryValue = valuearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eventschemas-discoverer-tagsentry.html#cfn-eventschemas-discoverer-tagsentry-key
esdteKey :: Lens' EventSchemasDiscovererTagsEntry (Val Text)
esdteKey = lens _eventSchemasDiscovererTagsEntryKey (\s a -> s { _eventSchemasDiscovererTagsEntryKey = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eventschemas-discoverer-tagsentry.html#cfn-eventschemas-discoverer-tagsentry-value
esdteValue :: Lens' EventSchemasDiscovererTagsEntry (Val Text)
esdteValue = lens _eventSchemasDiscovererTagsEntryValue (\s a -> s { _eventSchemasDiscovererTagsEntryValue = a })
