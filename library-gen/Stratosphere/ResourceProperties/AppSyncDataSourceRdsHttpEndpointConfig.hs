
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-rdshttpendpointconfig.html

module Stratosphere.ResourceProperties.AppSyncDataSourceRdsHttpEndpointConfig where

import Stratosphere.ResourceImports


-- | Full data type definition for AppSyncDataSourceRdsHttpEndpointConfig. See
-- 'appSyncDataSourceRdsHttpEndpointConfig' for a more convenient
-- constructor.
data AppSyncDataSourceRdsHttpEndpointConfig =
  AppSyncDataSourceRdsHttpEndpointConfig
  { _appSyncDataSourceRdsHttpEndpointConfigAwsRegion :: Val Text
  , _appSyncDataSourceRdsHttpEndpointConfigAwsSecretStoreArn :: Val Text
  , _appSyncDataSourceRdsHttpEndpointConfigDatabaseName :: Maybe (Val Text)
  , _appSyncDataSourceRdsHttpEndpointConfigDbClusterIdentifier :: Val Text
  , _appSyncDataSourceRdsHttpEndpointConfigSchema :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON AppSyncDataSourceRdsHttpEndpointConfig where
  toJSON AppSyncDataSourceRdsHttpEndpointConfig{..} =
    object $
    catMaybes
    [ (Just . ("AwsRegion",) . toJSON) _appSyncDataSourceRdsHttpEndpointConfigAwsRegion
    , (Just . ("AwsSecretStoreArn",) . toJSON) _appSyncDataSourceRdsHttpEndpointConfigAwsSecretStoreArn
    , fmap (("DatabaseName",) . toJSON) _appSyncDataSourceRdsHttpEndpointConfigDatabaseName
    , (Just . ("DbClusterIdentifier",) . toJSON) _appSyncDataSourceRdsHttpEndpointConfigDbClusterIdentifier
    , fmap (("Schema",) . toJSON) _appSyncDataSourceRdsHttpEndpointConfigSchema
    ]

-- | Constructor for 'AppSyncDataSourceRdsHttpEndpointConfig' containing
-- required fields as arguments.
appSyncDataSourceRdsHttpEndpointConfig
  :: Val Text -- ^ 'asdsrhecAwsRegion'
  -> Val Text -- ^ 'asdsrhecAwsSecretStoreArn'
  -> Val Text -- ^ 'asdsrhecDbClusterIdentifier'
  -> AppSyncDataSourceRdsHttpEndpointConfig
appSyncDataSourceRdsHttpEndpointConfig awsRegionarg awsSecretStoreArnarg dbClusterIdentifierarg =
  AppSyncDataSourceRdsHttpEndpointConfig
  { _appSyncDataSourceRdsHttpEndpointConfigAwsRegion = awsRegionarg
  , _appSyncDataSourceRdsHttpEndpointConfigAwsSecretStoreArn = awsSecretStoreArnarg
  , _appSyncDataSourceRdsHttpEndpointConfigDatabaseName = Nothing
  , _appSyncDataSourceRdsHttpEndpointConfigDbClusterIdentifier = dbClusterIdentifierarg
  , _appSyncDataSourceRdsHttpEndpointConfigSchema = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-rdshttpendpointconfig.html#cfn-appsync-datasource-rdshttpendpointconfig-awsregion
asdsrhecAwsRegion :: Lens' AppSyncDataSourceRdsHttpEndpointConfig (Val Text)
asdsrhecAwsRegion = lens _appSyncDataSourceRdsHttpEndpointConfigAwsRegion (\s a -> s { _appSyncDataSourceRdsHttpEndpointConfigAwsRegion = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-rdshttpendpointconfig.html#cfn-appsync-datasource-rdshttpendpointconfig-awssecretstorearn
asdsrhecAwsSecretStoreArn :: Lens' AppSyncDataSourceRdsHttpEndpointConfig (Val Text)
asdsrhecAwsSecretStoreArn = lens _appSyncDataSourceRdsHttpEndpointConfigAwsSecretStoreArn (\s a -> s { _appSyncDataSourceRdsHttpEndpointConfigAwsSecretStoreArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-rdshttpendpointconfig.html#cfn-appsync-datasource-rdshttpendpointconfig-databasename
asdsrhecDatabaseName :: Lens' AppSyncDataSourceRdsHttpEndpointConfig (Maybe (Val Text))
asdsrhecDatabaseName = lens _appSyncDataSourceRdsHttpEndpointConfigDatabaseName (\s a -> s { _appSyncDataSourceRdsHttpEndpointConfigDatabaseName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-rdshttpendpointconfig.html#cfn-appsync-datasource-rdshttpendpointconfig-dbclusteridentifier
asdsrhecDbClusterIdentifier :: Lens' AppSyncDataSourceRdsHttpEndpointConfig (Val Text)
asdsrhecDbClusterIdentifier = lens _appSyncDataSourceRdsHttpEndpointConfigDbClusterIdentifier (\s a -> s { _appSyncDataSourceRdsHttpEndpointConfigDbClusterIdentifier = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-rdshttpendpointconfig.html#cfn-appsync-datasource-rdshttpendpointconfig-schema
asdsrhecSchema :: Lens' AppSyncDataSourceRdsHttpEndpointConfig (Maybe (Val Text))
asdsrhecSchema = lens _appSyncDataSourceRdsHttpEndpointConfigSchema (\s a -> s { _appSyncDataSourceRdsHttpEndpointConfigSchema = a })
