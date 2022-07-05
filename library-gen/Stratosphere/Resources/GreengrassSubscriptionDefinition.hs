{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-subscriptiondefinition.html

module Stratosphere.Resources.GreengrassSubscriptionDefinition where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.GreengrassSubscriptionDefinitionSubscriptionDefinitionVersion

-- | Full data type definition for GreengrassSubscriptionDefinition. See
-- 'greengrassSubscriptionDefinition' for a more convenient constructor.
data GreengrassSubscriptionDefinition =
  GreengrassSubscriptionDefinition
  { _greengrassSubscriptionDefinitionInitialVersion :: Maybe GreengrassSubscriptionDefinitionSubscriptionDefinitionVersion
  , _greengrassSubscriptionDefinitionName :: Val Text
  , _greengrassSubscriptionDefinitionTags :: Maybe Object
  } deriving (Show, Eq)

instance ToResourceProperties GreengrassSubscriptionDefinition where
  toResourceProperties GreengrassSubscriptionDefinition{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::Greengrass::SubscriptionDefinition"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("InitialVersion",) . toJSON) _greengrassSubscriptionDefinitionInitialVersion
        , (Just . ("Name",) . toJSON) _greengrassSubscriptionDefinitionName
        , fmap (("Tags",) . toJSON) _greengrassSubscriptionDefinitionTags
        ]
    }

-- | Constructor for 'GreengrassSubscriptionDefinition' containing required
-- fields as arguments.
greengrassSubscriptionDefinition
  :: Val Text -- ^ 'gsdName'
  -> GreengrassSubscriptionDefinition
greengrassSubscriptionDefinition namearg =
  GreengrassSubscriptionDefinition
  { _greengrassSubscriptionDefinitionInitialVersion = Nothing
  , _greengrassSubscriptionDefinitionName = namearg
  , _greengrassSubscriptionDefinitionTags = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-subscriptiondefinition.html#cfn-greengrass-subscriptiondefinition-initialversion
gsdInitialVersion :: Lens' GreengrassSubscriptionDefinition (Maybe GreengrassSubscriptionDefinitionSubscriptionDefinitionVersion)
gsdInitialVersion = lens _greengrassSubscriptionDefinitionInitialVersion (\s a -> s { _greengrassSubscriptionDefinitionInitialVersion = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-subscriptiondefinition.html#cfn-greengrass-subscriptiondefinition-name
gsdName :: Lens' GreengrassSubscriptionDefinition (Val Text)
gsdName = lens _greengrassSubscriptionDefinitionName (\s a -> s { _greengrassSubscriptionDefinitionName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-subscriptiondefinition.html#cfn-greengrass-subscriptiondefinition-tags
gsdTags :: Lens' GreengrassSubscriptionDefinition (Maybe Object)
gsdTags = lens _greengrassSubscriptionDefinitionTags (\s a -> s { _greengrassSubscriptionDefinitionTags = a })
