{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-resolver.html

module Stratosphere.Resources.AppSyncResolver where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.AppSyncResolverCachingConfig
import Stratosphere.ResourceProperties.AppSyncResolverPipelineConfig
import Stratosphere.ResourceProperties.AppSyncResolverSyncConfig

-- | Full data type definition for AppSyncResolver. See 'appSyncResolver' for
-- a more convenient constructor.
data AppSyncResolver =
  AppSyncResolver
  { _appSyncResolverApiId :: Val Text
  , _appSyncResolverCachingConfig :: Maybe AppSyncResolverCachingConfig
  , _appSyncResolverDataSourceName :: Maybe (Val Text)
  , _appSyncResolverFieldName :: Val Text
  , _appSyncResolverKind :: Maybe (Val Text)
  , _appSyncResolverPipelineConfig :: Maybe AppSyncResolverPipelineConfig
  , _appSyncResolverRequestMappingTemplate :: Maybe (Val Text)
  , _appSyncResolverRequestMappingTemplateS3Location :: Maybe (Val Text)
  , _appSyncResolverResponseMappingTemplate :: Maybe (Val Text)
  , _appSyncResolverResponseMappingTemplateS3Location :: Maybe (Val Text)
  , _appSyncResolverSyncConfig :: Maybe AppSyncResolverSyncConfig
  , _appSyncResolverTypeName :: Val Text
  } deriving (Show, Eq)

instance ToResourceProperties AppSyncResolver where
  toResourceProperties AppSyncResolver{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::AppSync::Resolver"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("ApiId",) . toJSON) _appSyncResolverApiId
        , fmap (("CachingConfig",) . toJSON) _appSyncResolverCachingConfig
        , fmap (("DataSourceName",) . toJSON) _appSyncResolverDataSourceName
        , (Just . ("FieldName",) . toJSON) _appSyncResolverFieldName
        , fmap (("Kind",) . toJSON) _appSyncResolverKind
        , fmap (("PipelineConfig",) . toJSON) _appSyncResolverPipelineConfig
        , fmap (("RequestMappingTemplate",) . toJSON) _appSyncResolverRequestMappingTemplate
        , fmap (("RequestMappingTemplateS3Location",) . toJSON) _appSyncResolverRequestMappingTemplateS3Location
        , fmap (("ResponseMappingTemplate",) . toJSON) _appSyncResolverResponseMappingTemplate
        , fmap (("ResponseMappingTemplateS3Location",) . toJSON) _appSyncResolverResponseMappingTemplateS3Location
        , fmap (("SyncConfig",) . toJSON) _appSyncResolverSyncConfig
        , (Just . ("TypeName",) . toJSON) _appSyncResolverTypeName
        ]
    }

-- | Constructor for 'AppSyncResolver' containing required fields as
-- arguments.
appSyncResolver
  :: Val Text -- ^ 'asrApiId'
  -> Val Text -- ^ 'asrFieldName'
  -> Val Text -- ^ 'asrTypeName'
  -> AppSyncResolver
appSyncResolver apiIdarg fieldNamearg typeNamearg =
  AppSyncResolver
  { _appSyncResolverApiId = apiIdarg
  , _appSyncResolverCachingConfig = Nothing
  , _appSyncResolverDataSourceName = Nothing
  , _appSyncResolverFieldName = fieldNamearg
  , _appSyncResolverKind = Nothing
  , _appSyncResolverPipelineConfig = Nothing
  , _appSyncResolverRequestMappingTemplate = Nothing
  , _appSyncResolverRequestMappingTemplateS3Location = Nothing
  , _appSyncResolverResponseMappingTemplate = Nothing
  , _appSyncResolverResponseMappingTemplateS3Location = Nothing
  , _appSyncResolverSyncConfig = Nothing
  , _appSyncResolverTypeName = typeNamearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-resolver.html#cfn-appsync-resolver-apiid
asrApiId :: Lens' AppSyncResolver (Val Text)
asrApiId = lens _appSyncResolverApiId (\s a -> s { _appSyncResolverApiId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-resolver.html#cfn-appsync-resolver-cachingconfig
asrCachingConfig :: Lens' AppSyncResolver (Maybe AppSyncResolverCachingConfig)
asrCachingConfig = lens _appSyncResolverCachingConfig (\s a -> s { _appSyncResolverCachingConfig = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-resolver.html#cfn-appsync-resolver-datasourcename
asrDataSourceName :: Lens' AppSyncResolver (Maybe (Val Text))
asrDataSourceName = lens _appSyncResolverDataSourceName (\s a -> s { _appSyncResolverDataSourceName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-resolver.html#cfn-appsync-resolver-fieldname
asrFieldName :: Lens' AppSyncResolver (Val Text)
asrFieldName = lens _appSyncResolverFieldName (\s a -> s { _appSyncResolverFieldName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-resolver.html#cfn-appsync-resolver-kind
asrKind :: Lens' AppSyncResolver (Maybe (Val Text))
asrKind = lens _appSyncResolverKind (\s a -> s { _appSyncResolverKind = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-resolver.html#cfn-appsync-resolver-pipelineconfig
asrPipelineConfig :: Lens' AppSyncResolver (Maybe AppSyncResolverPipelineConfig)
asrPipelineConfig = lens _appSyncResolverPipelineConfig (\s a -> s { _appSyncResolverPipelineConfig = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-resolver.html#cfn-appsync-resolver-requestmappingtemplate
asrRequestMappingTemplate :: Lens' AppSyncResolver (Maybe (Val Text))
asrRequestMappingTemplate = lens _appSyncResolverRequestMappingTemplate (\s a -> s { _appSyncResolverRequestMappingTemplate = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-resolver.html#cfn-appsync-resolver-requestmappingtemplates3location
asrRequestMappingTemplateS3Location :: Lens' AppSyncResolver (Maybe (Val Text))
asrRequestMappingTemplateS3Location = lens _appSyncResolverRequestMappingTemplateS3Location (\s a -> s { _appSyncResolverRequestMappingTemplateS3Location = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-resolver.html#cfn-appsync-resolver-responsemappingtemplate
asrResponseMappingTemplate :: Lens' AppSyncResolver (Maybe (Val Text))
asrResponseMappingTemplate = lens _appSyncResolverResponseMappingTemplate (\s a -> s { _appSyncResolverResponseMappingTemplate = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-resolver.html#cfn-appsync-resolver-responsemappingtemplates3location
asrResponseMappingTemplateS3Location :: Lens' AppSyncResolver (Maybe (Val Text))
asrResponseMappingTemplateS3Location = lens _appSyncResolverResponseMappingTemplateS3Location (\s a -> s { _appSyncResolverResponseMappingTemplateS3Location = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-resolver.html#cfn-appsync-resolver-syncconfig
asrSyncConfig :: Lens' AppSyncResolver (Maybe AppSyncResolverSyncConfig)
asrSyncConfig = lens _appSyncResolverSyncConfig (\s a -> s { _appSyncResolverSyncConfig = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-resolver.html#cfn-appsync-resolver-typename
asrTypeName :: Lens' AppSyncResolver (Val Text)
asrTypeName = lens _appSyncResolverTypeName (\s a -> s { _appSyncResolverTypeName = a })
