{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eventschemas-schema.html

module Stratosphere.Resources.EventSchemasSchema where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.EventSchemasSchemaTagsEntry

-- | Full data type definition for EventSchemasSchema. See
-- 'eventSchemasSchema' for a more convenient constructor.
data EventSchemasSchema =
  EventSchemasSchema
  { _eventSchemasSchemaContent :: Val Text
  , _eventSchemasSchemaDescription :: Maybe (Val Text)
  , _eventSchemasSchemaRegistryName :: Val Text
  , _eventSchemasSchemaSchemaName :: Maybe (Val Text)
  , _eventSchemasSchemaTags :: Maybe [EventSchemasSchemaTagsEntry]
  , _eventSchemasSchemaType :: Val Text
  } deriving (Show, Eq)

instance ToResourceProperties EventSchemasSchema where
  toResourceProperties EventSchemasSchema{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::EventSchemas::Schema"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("Content",) . toJSON) _eventSchemasSchemaContent
        , fmap (("Description",) . toJSON) _eventSchemasSchemaDescription
        , (Just . ("RegistryName",) . toJSON) _eventSchemasSchemaRegistryName
        , fmap (("SchemaName",) . toJSON) _eventSchemasSchemaSchemaName
        , fmap (("Tags",) . toJSON) _eventSchemasSchemaTags
        , (Just . ("Type",) . toJSON) _eventSchemasSchemaType
        ]
    }

-- | Constructor for 'EventSchemasSchema' containing required fields as
-- arguments.
eventSchemasSchema
  :: Val Text -- ^ 'essContent'
  -> Val Text -- ^ 'essRegistryName'
  -> Val Text -- ^ 'essType'
  -> EventSchemasSchema
eventSchemasSchema contentarg registryNamearg typearg =
  EventSchemasSchema
  { _eventSchemasSchemaContent = contentarg
  , _eventSchemasSchemaDescription = Nothing
  , _eventSchemasSchemaRegistryName = registryNamearg
  , _eventSchemasSchemaSchemaName = Nothing
  , _eventSchemasSchemaTags = Nothing
  , _eventSchemasSchemaType = typearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eventschemas-schema.html#cfn-eventschemas-schema-content
essContent :: Lens' EventSchemasSchema (Val Text)
essContent = lens _eventSchemasSchemaContent (\s a -> s { _eventSchemasSchemaContent = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eventschemas-schema.html#cfn-eventschemas-schema-description
essDescription :: Lens' EventSchemasSchema (Maybe (Val Text))
essDescription = lens _eventSchemasSchemaDescription (\s a -> s { _eventSchemasSchemaDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eventschemas-schema.html#cfn-eventschemas-schema-registryname
essRegistryName :: Lens' EventSchemasSchema (Val Text)
essRegistryName = lens _eventSchemasSchemaRegistryName (\s a -> s { _eventSchemasSchemaRegistryName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eventschemas-schema.html#cfn-eventschemas-schema-schemaname
essSchemaName :: Lens' EventSchemasSchema (Maybe (Val Text))
essSchemaName = lens _eventSchemasSchemaSchemaName (\s a -> s { _eventSchemasSchemaSchemaName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eventschemas-schema.html#cfn-eventschemas-schema-tags
essTags :: Lens' EventSchemasSchema (Maybe [EventSchemasSchemaTagsEntry])
essTags = lens _eventSchemasSchemaTags (\s a -> s { _eventSchemasSchemaTags = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eventschemas-schema.html#cfn-eventschemas-schema-type
essType :: Lens' EventSchemasSchema (Val Text)
essType = lens _eventSchemasSchemaType (\s a -> s { _eventSchemasSchemaType = a })
