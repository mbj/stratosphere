{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-datasource.html

module Stratosphere.Resources.AppSyncDataSource where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.AppSyncDataSourceDynamoDBConfig
import Stratosphere.ResourceProperties.AppSyncDataSourceElasticsearchConfig
import Stratosphere.ResourceProperties.AppSyncDataSourceHttpConfig
import Stratosphere.ResourceProperties.AppSyncDataSourceLambdaConfig
import Stratosphere.ResourceProperties.AppSyncDataSourceRelationalDatabaseConfig

-- | Full data type definition for AppSyncDataSource. See 'appSyncDataSource'
-- for a more convenient constructor.
data AppSyncDataSource =
  AppSyncDataSource
  { _appSyncDataSourceApiId :: Val Text
  , _appSyncDataSourceDescription :: Maybe (Val Text)
  , _appSyncDataSourceDynamoDBConfig :: Maybe AppSyncDataSourceDynamoDBConfig
  , _appSyncDataSourceElasticsearchConfig :: Maybe AppSyncDataSourceElasticsearchConfig
  , _appSyncDataSourceHttpConfig :: Maybe AppSyncDataSourceHttpConfig
  , _appSyncDataSourceLambdaConfig :: Maybe AppSyncDataSourceLambdaConfig
  , _appSyncDataSourceName :: Val Text
  , _appSyncDataSourceRelationalDatabaseConfig :: Maybe AppSyncDataSourceRelationalDatabaseConfig
  , _appSyncDataSourceServiceRoleArn :: Maybe (Val Text)
  , _appSyncDataSourceType :: Val Text
  } deriving (Show, Eq)

instance ToResourceProperties AppSyncDataSource where
  toResourceProperties AppSyncDataSource{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::AppSync::DataSource"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("ApiId",) . toJSON) _appSyncDataSourceApiId
        , fmap (("Description",) . toJSON) _appSyncDataSourceDescription
        , fmap (("DynamoDBConfig",) . toJSON) _appSyncDataSourceDynamoDBConfig
        , fmap (("ElasticsearchConfig",) . toJSON) _appSyncDataSourceElasticsearchConfig
        , fmap (("HttpConfig",) . toJSON) _appSyncDataSourceHttpConfig
        , fmap (("LambdaConfig",) . toJSON) _appSyncDataSourceLambdaConfig
        , (Just . ("Name",) . toJSON) _appSyncDataSourceName
        , fmap (("RelationalDatabaseConfig",) . toJSON) _appSyncDataSourceRelationalDatabaseConfig
        , fmap (("ServiceRoleArn",) . toJSON) _appSyncDataSourceServiceRoleArn
        , (Just . ("Type",) . toJSON) _appSyncDataSourceType
        ]
    }

-- | Constructor for 'AppSyncDataSource' containing required fields as
-- arguments.
appSyncDataSource
  :: Val Text -- ^ 'asdsApiId'
  -> Val Text -- ^ 'asdsName'
  -> Val Text -- ^ 'asdsType'
  -> AppSyncDataSource
appSyncDataSource apiIdarg namearg typearg =
  AppSyncDataSource
  { _appSyncDataSourceApiId = apiIdarg
  , _appSyncDataSourceDescription = Nothing
  , _appSyncDataSourceDynamoDBConfig = Nothing
  , _appSyncDataSourceElasticsearchConfig = Nothing
  , _appSyncDataSourceHttpConfig = Nothing
  , _appSyncDataSourceLambdaConfig = Nothing
  , _appSyncDataSourceName = namearg
  , _appSyncDataSourceRelationalDatabaseConfig = Nothing
  , _appSyncDataSourceServiceRoleArn = Nothing
  , _appSyncDataSourceType = typearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-datasource.html#cfn-appsync-datasource-apiid
asdsApiId :: Lens' AppSyncDataSource (Val Text)
asdsApiId = lens _appSyncDataSourceApiId (\s a -> s { _appSyncDataSourceApiId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-datasource.html#cfn-appsync-datasource-description
asdsDescription :: Lens' AppSyncDataSource (Maybe (Val Text))
asdsDescription = lens _appSyncDataSourceDescription (\s a -> s { _appSyncDataSourceDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-datasource.html#cfn-appsync-datasource-dynamodbconfig
asdsDynamoDBConfig :: Lens' AppSyncDataSource (Maybe AppSyncDataSourceDynamoDBConfig)
asdsDynamoDBConfig = lens _appSyncDataSourceDynamoDBConfig (\s a -> s { _appSyncDataSourceDynamoDBConfig = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-datasource.html#cfn-appsync-datasource-elasticsearchconfig
asdsElasticsearchConfig :: Lens' AppSyncDataSource (Maybe AppSyncDataSourceElasticsearchConfig)
asdsElasticsearchConfig = lens _appSyncDataSourceElasticsearchConfig (\s a -> s { _appSyncDataSourceElasticsearchConfig = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-datasource.html#cfn-appsync-datasource-httpconfig
asdsHttpConfig :: Lens' AppSyncDataSource (Maybe AppSyncDataSourceHttpConfig)
asdsHttpConfig = lens _appSyncDataSourceHttpConfig (\s a -> s { _appSyncDataSourceHttpConfig = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-datasource.html#cfn-appsync-datasource-lambdaconfig
asdsLambdaConfig :: Lens' AppSyncDataSource (Maybe AppSyncDataSourceLambdaConfig)
asdsLambdaConfig = lens _appSyncDataSourceLambdaConfig (\s a -> s { _appSyncDataSourceLambdaConfig = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-datasource.html#cfn-appsync-datasource-name
asdsName :: Lens' AppSyncDataSource (Val Text)
asdsName = lens _appSyncDataSourceName (\s a -> s { _appSyncDataSourceName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-datasource.html#cfn-appsync-datasource-relationaldatabaseconfig
asdsRelationalDatabaseConfig :: Lens' AppSyncDataSource (Maybe AppSyncDataSourceRelationalDatabaseConfig)
asdsRelationalDatabaseConfig = lens _appSyncDataSourceRelationalDatabaseConfig (\s a -> s { _appSyncDataSourceRelationalDatabaseConfig = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-datasource.html#cfn-appsync-datasource-servicerolearn
asdsServiceRoleArn :: Lens' AppSyncDataSource (Maybe (Val Text))
asdsServiceRoleArn = lens _appSyncDataSourceServiceRoleArn (\s a -> s { _appSyncDataSourceServiceRoleArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-datasource.html#cfn-appsync-datasource-type
asdsType :: Lens' AppSyncDataSource (Val Text)
asdsType = lens _appSyncDataSourceType (\s a -> s { _appSyncDataSourceType = a })
