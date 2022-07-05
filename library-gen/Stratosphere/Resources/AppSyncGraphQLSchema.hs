{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-graphqlschema.html

module Stratosphere.Resources.AppSyncGraphQLSchema where

import Stratosphere.ResourceImports


-- | Full data type definition for AppSyncGraphQLSchema. See
-- 'appSyncGraphQLSchema' for a more convenient constructor.
data AppSyncGraphQLSchema =
  AppSyncGraphQLSchema
  { _appSyncGraphQLSchemaApiId :: Val Text
  , _appSyncGraphQLSchemaDefinition :: Maybe (Val Text)
  , _appSyncGraphQLSchemaDefinitionS3Location :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToResourceProperties AppSyncGraphQLSchema where
  toResourceProperties AppSyncGraphQLSchema{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::AppSync::GraphQLSchema"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("ApiId",) . toJSON) _appSyncGraphQLSchemaApiId
        , fmap (("Definition",) . toJSON) _appSyncGraphQLSchemaDefinition
        , fmap (("DefinitionS3Location",) . toJSON) _appSyncGraphQLSchemaDefinitionS3Location
        ]
    }

-- | Constructor for 'AppSyncGraphQLSchema' containing required fields as
-- arguments.
appSyncGraphQLSchema
  :: Val Text -- ^ 'asgqlsApiId'
  -> AppSyncGraphQLSchema
appSyncGraphQLSchema apiIdarg =
  AppSyncGraphQLSchema
  { _appSyncGraphQLSchemaApiId = apiIdarg
  , _appSyncGraphQLSchemaDefinition = Nothing
  , _appSyncGraphQLSchemaDefinitionS3Location = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-graphqlschema.html#cfn-appsync-graphqlschema-apiid
asgqlsApiId :: Lens' AppSyncGraphQLSchema (Val Text)
asgqlsApiId = lens _appSyncGraphQLSchemaApiId (\s a -> s { _appSyncGraphQLSchemaApiId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-graphqlschema.html#cfn-appsync-graphqlschema-definition
asgqlsDefinition :: Lens' AppSyncGraphQLSchema (Maybe (Val Text))
asgqlsDefinition = lens _appSyncGraphQLSchemaDefinition (\s a -> s { _appSyncGraphQLSchemaDefinition = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-graphqlschema.html#cfn-appsync-graphqlschema-definitions3location
asgqlsDefinitionS3Location :: Lens' AppSyncGraphQLSchema (Maybe (Val Text))
asgqlsDefinitionS3Location = lens _appSyncGraphQLSchemaDefinitionS3Location (\s a -> s { _appSyncGraphQLSchemaDefinitionS3Location = a })
