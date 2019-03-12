{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-dynamodbconfig.html

module Stratosphere.ResourceProperties.AppSyncDataSourceDynamoDBConfig where

import Stratosphere.ResourceImports


-- | Full data type definition for AppSyncDataSourceDynamoDBConfig. See
-- 'appSyncDataSourceDynamoDBConfig' for a more convenient constructor.
data AppSyncDataSourceDynamoDBConfig =
  AppSyncDataSourceDynamoDBConfig
  { _appSyncDataSourceDynamoDBConfigAwsRegion :: Val Text
  , _appSyncDataSourceDynamoDBConfigTableName :: Val Text
  , _appSyncDataSourceDynamoDBConfigUseCallerCredentials :: Maybe (Val Bool)
  } deriving (Show, Eq)

instance ToJSON AppSyncDataSourceDynamoDBConfig where
  toJSON AppSyncDataSourceDynamoDBConfig{..} =
    object $
    catMaybes
    [ (Just . ("AwsRegion",) . toJSON) _appSyncDataSourceDynamoDBConfigAwsRegion
    , (Just . ("TableName",) . toJSON) _appSyncDataSourceDynamoDBConfigTableName
    , fmap (("UseCallerCredentials",) . toJSON) _appSyncDataSourceDynamoDBConfigUseCallerCredentials
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
  , _appSyncDataSourceDynamoDBConfigTableName = tableNamearg
  , _appSyncDataSourceDynamoDBConfigUseCallerCredentials = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-dynamodbconfig.html#cfn-appsync-datasource-dynamodbconfig-awsregion
asdsddbcAwsRegion :: Lens' AppSyncDataSourceDynamoDBConfig (Val Text)
asdsddbcAwsRegion = lens _appSyncDataSourceDynamoDBConfigAwsRegion (\s a -> s { _appSyncDataSourceDynamoDBConfigAwsRegion = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-dynamodbconfig.html#cfn-appsync-datasource-dynamodbconfig-tablename
asdsddbcTableName :: Lens' AppSyncDataSourceDynamoDBConfig (Val Text)
asdsddbcTableName = lens _appSyncDataSourceDynamoDBConfigTableName (\s a -> s { _appSyncDataSourceDynamoDBConfigTableName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-dynamodbconfig.html#cfn-appsync-datasource-dynamodbconfig-usecallercredentials
asdsddbcUseCallerCredentials :: Lens' AppSyncDataSourceDynamoDBConfig (Maybe (Val Bool))
asdsddbcUseCallerCredentials = lens _appSyncDataSourceDynamoDBConfigUseCallerCredentials (\s a -> s { _appSyncDataSourceDynamoDBConfigUseCallerCredentials = a })
