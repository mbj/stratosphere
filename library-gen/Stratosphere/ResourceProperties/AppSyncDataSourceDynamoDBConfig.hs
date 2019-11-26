{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-dynamodbconfig.html

module Stratosphere.ResourceProperties.AppSyncDataSourceDynamoDBConfig where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.AppSyncDataSourceDeltaSyncConfig

-- | Full data type definition for AppSyncDataSourceDynamoDBConfig. See
-- 'appSyncDataSourceDynamoDBConfig' for a more convenient constructor.
data AppSyncDataSourceDynamoDBConfig =
  AppSyncDataSourceDynamoDBConfig
  { _appSyncDataSourceDynamoDBConfigAwsRegion :: Val Text
  , _appSyncDataSourceDynamoDBConfigDeltaSyncConfig :: Maybe AppSyncDataSourceDeltaSyncConfig
  , _appSyncDataSourceDynamoDBConfigTableName :: Val Text
  , _appSyncDataSourceDynamoDBConfigUseCallerCredentials :: Maybe (Val Bool)
  , _appSyncDataSourceDynamoDBConfigVersioned :: Maybe (Val Bool)
  } deriving (Show, Eq)

instance ToJSON AppSyncDataSourceDynamoDBConfig where
  toJSON AppSyncDataSourceDynamoDBConfig{..} =
    object $
    catMaybes
    [ (Just . ("AwsRegion",) . toJSON) _appSyncDataSourceDynamoDBConfigAwsRegion
    , fmap (("DeltaSyncConfig",) . toJSON) _appSyncDataSourceDynamoDBConfigDeltaSyncConfig
    , (Just . ("TableName",) . toJSON) _appSyncDataSourceDynamoDBConfigTableName
    , fmap (("UseCallerCredentials",) . toJSON) _appSyncDataSourceDynamoDBConfigUseCallerCredentials
    , fmap (("Versioned",) . toJSON) _appSyncDataSourceDynamoDBConfigVersioned
    ]

-- | Constructor for 'AppSyncDataSourceDynamoDBConfig' containing required
-- fields as arguments.
appSyncDataSourceDynamoDBConfig
  :: Val Text -- ^ 'asdsddbcAwsRegion'
  -> Val Text -- ^ 'asdsddbcTableName'
  -> AppSyncDataSourceDynamoDBConfig
appSyncDataSourceDynamoDBConfig awsRegionarg tableNamearg =
  AppSyncDataSourceDynamoDBConfig
  { _appSyncDataSourceDynamoDBConfigAwsRegion = awsRegionarg
  , _appSyncDataSourceDynamoDBConfigDeltaSyncConfig = Nothing
  , _appSyncDataSourceDynamoDBConfigTableName = tableNamearg
  , _appSyncDataSourceDynamoDBConfigUseCallerCredentials = Nothing
  , _appSyncDataSourceDynamoDBConfigVersioned = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-dynamodbconfig.html#cfn-appsync-datasource-dynamodbconfig-awsregion
asdsddbcAwsRegion :: Lens' AppSyncDataSourceDynamoDBConfig (Val Text)
asdsddbcAwsRegion = lens _appSyncDataSourceDynamoDBConfigAwsRegion (\s a -> s { _appSyncDataSourceDynamoDBConfigAwsRegion = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-dynamodbconfig.html#cfn-appsync-datasource-dynamodbconfig-deltasyncconfig
asdsddbcDeltaSyncConfig :: Lens' AppSyncDataSourceDynamoDBConfig (Maybe AppSyncDataSourceDeltaSyncConfig)
asdsddbcDeltaSyncConfig = lens _appSyncDataSourceDynamoDBConfigDeltaSyncConfig (\s a -> s { _appSyncDataSourceDynamoDBConfigDeltaSyncConfig = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-dynamodbconfig.html#cfn-appsync-datasource-dynamodbconfig-tablename
asdsddbcTableName :: Lens' AppSyncDataSourceDynamoDBConfig (Val Text)
asdsddbcTableName = lens _appSyncDataSourceDynamoDBConfigTableName (\s a -> s { _appSyncDataSourceDynamoDBConfigTableName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-dynamodbconfig.html#cfn-appsync-datasource-dynamodbconfig-usecallercredentials
asdsddbcUseCallerCredentials :: Lens' AppSyncDataSourceDynamoDBConfig (Maybe (Val Bool))
asdsddbcUseCallerCredentials = lens _appSyncDataSourceDynamoDBConfigUseCallerCredentials (\s a -> s { _appSyncDataSourceDynamoDBConfigUseCallerCredentials = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-dynamodbconfig.html#cfn-appsync-datasource-dynamodbconfig-versioned
asdsddbcVersioned :: Lens' AppSyncDataSourceDynamoDBConfig (Maybe (Val Bool))
asdsddbcVersioned = lens _appSyncDataSourceDynamoDBConfigVersioned (\s a -> s { _appSyncDataSourceDynamoDBConfigVersioned = a })
