{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eventschemas-schema-tagsentry.html

module Stratosphere.ResourceProperties.EventSchemasSchemaTagsEntry where

import Stratosphere.ResourceImports


-- | Full data type definition for EventSchemasSchemaTagsEntry. See
-- 'eventSchemasSchemaTagsEntry' for a more convenient constructor.
data EventSchemasSchemaTagsEntry =
  EventSchemasSchemaTagsEntry
  { _eventSchemasSchemaTagsEntryKey :: Val Text
  , _eventSchemasSchemaTagsEntryValue :: Val Text
  } deriving (Show, Eq)

instance ToJSON EventSchemasSchemaTagsEntry where
  toJSON EventSchemasSchemaTagsEntry{..} =
    object $
    catMaybes
    [ (Just . ("Key",) . toJSON) _eventSchemasSchemaTagsEntryKey
    , (Just . ("Value",) . toJSON) _eventSchemasSchemaTagsEntryValue
    ]

-- | Constructor for 'EventSchemasSchemaTagsEntry' containing required fields
-- as arguments.
eventSchemasSchemaTagsEntry
  :: Val Text -- ^ 'essteKey'
  -> Val Text -- ^ 'essteValue'
  -> EventSchemasSchemaTagsEntry
eventSchemasSchemaTagsEntry keyarg valuearg =
  EventSchemasSchemaTagsEntry
  { _eventSchemasSchemaTagsEntryKey = keyarg
  , _eventSchemasSchemaTagsEntryValue = valuearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eventschemas-schema-tagsentry.html#cfn-eventschemas-schema-tagsentry-key
essteKey :: Lens' EventSchemasSchemaTagsEntry (Val Text)
essteKey = lens _eventSchemasSchemaTagsEntryKey (\s a -> s { _eventSchemasSchemaTagsEntryKey = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eventschemas-schema-tagsentry.html#cfn-eventschemas-schema-tagsentry-value
essteValue :: Lens' EventSchemasSchemaTagsEntry (Val Text)
essteValue = lens _eventSchemasSchemaTagsEntryValue (\s a -> s { _eventSchemasSchemaTagsEntryValue = a })
