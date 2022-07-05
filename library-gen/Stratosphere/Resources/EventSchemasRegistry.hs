{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eventschemas-registry.html

module Stratosphere.Resources.EventSchemasRegistry where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.EventSchemasRegistryTagsEntry

-- | Full data type definition for EventSchemasRegistry. See
-- 'eventSchemasRegistry' for a more convenient constructor.
data EventSchemasRegistry =
  EventSchemasRegistry
  { _eventSchemasRegistryDescription :: Maybe (Val Text)
  , _eventSchemasRegistryRegistryName :: Maybe (Val Text)
  , _eventSchemasRegistryTags :: Maybe [EventSchemasRegistryTagsEntry]
  } deriving (Show, Eq)

instance ToResourceProperties EventSchemasRegistry where
  toResourceProperties EventSchemasRegistry{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::EventSchemas::Registry"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("Description",) . toJSON) _eventSchemasRegistryDescription
        , fmap (("RegistryName",) . toJSON) _eventSchemasRegistryRegistryName
        , fmap (("Tags",) . toJSON) _eventSchemasRegistryTags
        ]
    }

-- | Constructor for 'EventSchemasRegistry' containing required fields as
-- arguments.
eventSchemasRegistry
  :: EventSchemasRegistry
eventSchemasRegistry  =
  EventSchemasRegistry
  { _eventSchemasRegistryDescription = Nothing
  , _eventSchemasRegistryRegistryName = Nothing
  , _eventSchemasRegistryTags = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eventschemas-registry.html#cfn-eventschemas-registry-description
esrDescription :: Lens' EventSchemasRegistry (Maybe (Val Text))
esrDescription = lens _eventSchemasRegistryDescription (\s a -> s { _eventSchemasRegistryDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eventschemas-registry.html#cfn-eventschemas-registry-registryname
esrRegistryName :: Lens' EventSchemasRegistry (Maybe (Val Text))
esrRegistryName = lens _eventSchemasRegistryRegistryName (\s a -> s { _eventSchemasRegistryRegistryName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eventschemas-registry.html#cfn-eventschemas-registry-tags
esrTags :: Lens' EventSchemasRegistry (Maybe [EventSchemasRegistryTagsEntry])
esrTags = lens _eventSchemasRegistryTags (\s a -> s { _eventSchemasRegistryTags = a })
