{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eventschemas-discoverer.html

module Stratosphere.Resources.EventSchemasDiscoverer where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.EventSchemasDiscovererTagsEntry

-- | Full data type definition for EventSchemasDiscoverer. See
-- 'eventSchemasDiscoverer' for a more convenient constructor.
data EventSchemasDiscoverer =
  EventSchemasDiscoverer
  { _eventSchemasDiscovererDescription :: Maybe (Val Text)
  , _eventSchemasDiscovererSourceArn :: Val Text
  , _eventSchemasDiscovererTags :: Maybe [EventSchemasDiscovererTagsEntry]
  } deriving (Show, Eq)

instance ToResourceProperties EventSchemasDiscoverer where
  toResourceProperties EventSchemasDiscoverer{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::EventSchemas::Discoverer"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("Description",) . toJSON) _eventSchemasDiscovererDescription
        , (Just . ("SourceArn",) . toJSON) _eventSchemasDiscovererSourceArn
        , fmap (("Tags",) . toJSON) _eventSchemasDiscovererTags
        ]
    }

-- | Constructor for 'EventSchemasDiscoverer' containing required fields as
-- arguments.
eventSchemasDiscoverer
  :: Val Text -- ^ 'esdSourceArn'
  -> EventSchemasDiscoverer
eventSchemasDiscoverer sourceArnarg =
  EventSchemasDiscoverer
  { _eventSchemasDiscovererDescription = Nothing
  , _eventSchemasDiscovererSourceArn = sourceArnarg
  , _eventSchemasDiscovererTags = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eventschemas-discoverer.html#cfn-eventschemas-discoverer-description
esdDescription :: Lens' EventSchemasDiscoverer (Maybe (Val Text))
esdDescription = lens _eventSchemasDiscovererDescription (\s a -> s { _eventSchemasDiscovererDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eventschemas-discoverer.html#cfn-eventschemas-discoverer-sourcearn
esdSourceArn :: Lens' EventSchemasDiscoverer (Val Text)
esdSourceArn = lens _eventSchemasDiscovererSourceArn (\s a -> s { _eventSchemasDiscovererSourceArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eventschemas-discoverer.html#cfn-eventschemas-discoverer-tags
esdTags :: Lens' EventSchemasDiscoverer (Maybe [EventSchemasDiscovererTagsEntry])
esdTags = lens _eventSchemasDiscovererTags (\s a -> s { _eventSchemasDiscovererTags = a })
