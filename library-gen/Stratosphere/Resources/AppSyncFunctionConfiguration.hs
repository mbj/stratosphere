{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-functionconfiguration.html

module Stratosphere.Resources.AppSyncFunctionConfiguration where

import Stratosphere.ResourceImports


-- | Full data type definition for AppSyncFunctionConfiguration. See
-- 'appSyncFunctionConfiguration' for a more convenient constructor.
data AppSyncFunctionConfiguration =
  AppSyncFunctionConfiguration
  { _appSyncFunctionConfigurationApiId :: Val Text
  , _appSyncFunctionConfigurationDataSourceName :: Maybe (Val Text)
  , _appSyncFunctionConfigurationDescription :: Maybe (Val Text)
  , _appSyncFunctionConfigurationFunctionVersion :: Maybe (Val Text)
  , _appSyncFunctionConfigurationName :: Maybe (Val Text)
  , _appSyncFunctionConfigurationRequestMappingTemplate :: Maybe (Val Text)
  , _appSyncFunctionConfigurationRequestMappingTemplateS3Location :: Maybe (Val Text)
  , _appSyncFunctionConfigurationResponseMappingTemplate :: Maybe (Val Text)
  , _appSyncFunctionConfigurationResponseMappingTemplateS3Location :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON AppSyncFunctionConfiguration where
  toJSON AppSyncFunctionConfiguration{..} =
    object $
    catMaybes
    [ (Just . ("ApiId",) . toJSON) _appSyncFunctionConfigurationApiId
    , fmap (("DataSourceName",) . toJSON) _appSyncFunctionConfigurationDataSourceName
    , fmap (("Description",) . toJSON) _appSyncFunctionConfigurationDescription
    , fmap (("FunctionVersion",) . toJSON) _appSyncFunctionConfigurationFunctionVersion
    , fmap (("Name",) . toJSON) _appSyncFunctionConfigurationName
    , fmap (("RequestMappingTemplate",) . toJSON) _appSyncFunctionConfigurationRequestMappingTemplate
    , fmap (("RequestMappingTemplateS3Location",) . toJSON) _appSyncFunctionConfigurationRequestMappingTemplateS3Location
    , fmap (("ResponseMappingTemplate",) . toJSON) _appSyncFunctionConfigurationResponseMappingTemplate
    , fmap (("ResponseMappingTemplateS3Location",) . toJSON) _appSyncFunctionConfigurationResponseMappingTemplateS3Location
    ]

-- | Constructor for 'AppSyncFunctionConfiguration' containing required fields
-- as arguments.
appSyncFunctionConfiguration
  :: Val Text -- ^ 'asfcApiId'
  -> AppSyncFunctionConfiguration
appSyncFunctionConfiguration apiIdarg =
  AppSyncFunctionConfiguration
  { _appSyncFunctionConfigurationApiId = apiIdarg
  , _appSyncFunctionConfigurationDataSourceName = Nothing
  , _appSyncFunctionConfigurationDescription = Nothing
  , _appSyncFunctionConfigurationFunctionVersion = Nothing
  , _appSyncFunctionConfigurationName = Nothing
  , _appSyncFunctionConfigurationRequestMappingTemplate = Nothing
  , _appSyncFunctionConfigurationRequestMappingTemplateS3Location = Nothing
  , _appSyncFunctionConfigurationResponseMappingTemplate = Nothing
  , _appSyncFunctionConfigurationResponseMappingTemplateS3Location = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-functionconfiguration.html#cfn-appsync-functionconfiguration-apiid
asfcApiId :: Lens' AppSyncFunctionConfiguration (Val Text)
asfcApiId = lens _appSyncFunctionConfigurationApiId (\s a -> s { _appSyncFunctionConfigurationApiId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-functionconfiguration.html#cfn-appsync-functionconfiguration-datasourcename
asfcDataSourceName :: Lens' AppSyncFunctionConfiguration (Maybe (Val Text))
asfcDataSourceName = lens _appSyncFunctionConfigurationDataSourceName (\s a -> s { _appSyncFunctionConfigurationDataSourceName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-functionconfiguration.html#cfn-appsync-functionconfiguration-description
asfcDescription :: Lens' AppSyncFunctionConfiguration (Maybe (Val Text))
asfcDescription = lens _appSyncFunctionConfigurationDescription (\s a -> s { _appSyncFunctionConfigurationDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-functionconfiguration.html#cfn-appsync-functionconfiguration-functionversion
asfcFunctionVersion :: Lens' AppSyncFunctionConfiguration (Maybe (Val Text))
asfcFunctionVersion = lens _appSyncFunctionConfigurationFunctionVersion (\s a -> s { _appSyncFunctionConfigurationFunctionVersion = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-functionconfiguration.html#cfn-appsync-functionconfiguration-name
asfcName :: Lens' AppSyncFunctionConfiguration (Maybe (Val Text))
asfcName = lens _appSyncFunctionConfigurationName (\s a -> s { _appSyncFunctionConfigurationName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-functionconfiguration.html#cfn-appsync-functionconfiguration-requestmappingtemplate
asfcRequestMappingTemplate :: Lens' AppSyncFunctionConfiguration (Maybe (Val Text))
asfcRequestMappingTemplate = lens _appSyncFunctionConfigurationRequestMappingTemplate (\s a -> s { _appSyncFunctionConfigurationRequestMappingTemplate = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-functionconfiguration.html#cfn-appsync-functionconfiguration-requestmappingtemplates3location
asfcRequestMappingTemplateS3Location :: Lens' AppSyncFunctionConfiguration (Maybe (Val Text))
asfcRequestMappingTemplateS3Location = lens _appSyncFunctionConfigurationRequestMappingTemplateS3Location (\s a -> s { _appSyncFunctionConfigurationRequestMappingTemplateS3Location = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-functionconfiguration.html#cfn-appsync-functionconfiguration-responsemappingtemplate
asfcResponseMappingTemplate :: Lens' AppSyncFunctionConfiguration (Maybe (Val Text))
asfcResponseMappingTemplate = lens _appSyncFunctionConfigurationResponseMappingTemplate (\s a -> s { _appSyncFunctionConfigurationResponseMappingTemplate = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-functionconfiguration.html#cfn-appsync-functionconfiguration-responsemappingtemplates3location
asfcResponseMappingTemplateS3Location :: Lens' AppSyncFunctionConfiguration (Maybe (Val Text))
asfcResponseMappingTemplateS3Location = lens _appSyncFunctionConfigurationResponseMappingTemplateS3Location (\s a -> s { _appSyncFunctionConfigurationResponseMappingTemplateS3Location = a })
