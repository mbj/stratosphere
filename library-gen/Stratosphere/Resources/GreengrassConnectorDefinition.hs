{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-connectordefinition.html

module Stratosphere.Resources.GreengrassConnectorDefinition where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.GreengrassConnectorDefinitionConnectorDefinitionVersion

-- | Full data type definition for GreengrassConnectorDefinition. See
-- 'greengrassConnectorDefinition' for a more convenient constructor.
data GreengrassConnectorDefinition =
  GreengrassConnectorDefinition
  { _greengrassConnectorDefinitionInitialVersion :: Maybe GreengrassConnectorDefinitionConnectorDefinitionVersion
  , _greengrassConnectorDefinitionName :: Val Text
  , _greengrassConnectorDefinitionTags :: Maybe Object
  } deriving (Show, Eq)

instance ToResourceProperties GreengrassConnectorDefinition where
  toResourceProperties GreengrassConnectorDefinition{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::Greengrass::ConnectorDefinition"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("InitialVersion",) . toJSON) _greengrassConnectorDefinitionInitialVersion
        , (Just . ("Name",) . toJSON) _greengrassConnectorDefinitionName
        , fmap (("Tags",) . toJSON) _greengrassConnectorDefinitionTags
        ]
    }

-- | Constructor for 'GreengrassConnectorDefinition' containing required
-- fields as arguments.
greengrassConnectorDefinition
  :: Val Text -- ^ 'gcdnName'
  -> GreengrassConnectorDefinition
greengrassConnectorDefinition namearg =
  GreengrassConnectorDefinition
  { _greengrassConnectorDefinitionInitialVersion = Nothing
  , _greengrassConnectorDefinitionName = namearg
  , _greengrassConnectorDefinitionTags = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-connectordefinition.html#cfn-greengrass-connectordefinition-initialversion
gcdnInitialVersion :: Lens' GreengrassConnectorDefinition (Maybe GreengrassConnectorDefinitionConnectorDefinitionVersion)
gcdnInitialVersion = lens _greengrassConnectorDefinitionInitialVersion (\s a -> s { _greengrassConnectorDefinitionInitialVersion = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-connectordefinition.html#cfn-greengrass-connectordefinition-name
gcdnName :: Lens' GreengrassConnectorDefinition (Val Text)
gcdnName = lens _greengrassConnectorDefinitionName (\s a -> s { _greengrassConnectorDefinitionName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-connectordefinition.html#cfn-greengrass-connectordefinition-tags
gcdnTags :: Lens' GreengrassConnectorDefinition (Maybe Object)
gcdnTags = lens _greengrassConnectorDefinitionTags (\s a -> s { _greengrassConnectorDefinitionTags = a })
