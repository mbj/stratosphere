{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-connectionconfiguration.html

module Stratosphere.ResourceProperties.KendraDataSourceConnectionConfiguration where

import Stratosphere.ResourceImports


-- | Full data type definition for KendraDataSourceConnectionConfiguration.
-- See 'kendraDataSourceConnectionConfiguration' for a more convenient
-- constructor.
data KendraDataSourceConnectionConfiguration =
  KendraDataSourceConnectionConfiguration
  { _kendraDataSourceConnectionConfigurationDatabaseHost :: Val Text
  , _kendraDataSourceConnectionConfigurationDatabaseName :: Val Text
  , _kendraDataSourceConnectionConfigurationDatabasePort :: Val Integer
  , _kendraDataSourceConnectionConfigurationSecretArn :: Val Text
  , _kendraDataSourceConnectionConfigurationTableName :: Val Text
  } deriving (Show, Eq)

instance ToJSON KendraDataSourceConnectionConfiguration where
  toJSON KendraDataSourceConnectionConfiguration{..} =
    object $
    catMaybes
    [ (Just . ("DatabaseHost",) . toJSON) _kendraDataSourceConnectionConfigurationDatabaseHost
    , (Just . ("DatabaseName",) . toJSON) _kendraDataSourceConnectionConfigurationDatabaseName
    , (Just . ("DatabasePort",) . toJSON) _kendraDataSourceConnectionConfigurationDatabasePort
    , (Just . ("SecretArn",) . toJSON) _kendraDataSourceConnectionConfigurationSecretArn
    , (Just . ("TableName",) . toJSON) _kendraDataSourceConnectionConfigurationTableName
    ]

-- | Constructor for 'KendraDataSourceConnectionConfiguration' containing
-- required fields as arguments.
kendraDataSourceConnectionConfiguration
  :: Val Text -- ^ 'kdsccDatabaseHost'
  -> Val Text -- ^ 'kdsccDatabaseName'
  -> Val Integer -- ^ 'kdsccDatabasePort'
  -> Val Text -- ^ 'kdsccSecretArn'
  -> Val Text -- ^ 'kdsccTableName'
  -> KendraDataSourceConnectionConfiguration
kendraDataSourceConnectionConfiguration databaseHostarg databaseNamearg databasePortarg secretArnarg tableNamearg =
  KendraDataSourceConnectionConfiguration
  { _kendraDataSourceConnectionConfigurationDatabaseHost = databaseHostarg
  , _kendraDataSourceConnectionConfigurationDatabaseName = databaseNamearg
  , _kendraDataSourceConnectionConfigurationDatabasePort = databasePortarg
  , _kendraDataSourceConnectionConfigurationSecretArn = secretArnarg
  , _kendraDataSourceConnectionConfigurationTableName = tableNamearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-connectionconfiguration.html#cfn-kendra-datasource-connectionconfiguration-databasehost
kdsccDatabaseHost :: Lens' KendraDataSourceConnectionConfiguration (Val Text)
kdsccDatabaseHost = lens _kendraDataSourceConnectionConfigurationDatabaseHost (\s a -> s { _kendraDataSourceConnectionConfigurationDatabaseHost = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-connectionconfiguration.html#cfn-kendra-datasource-connectionconfiguration-databasename
kdsccDatabaseName :: Lens' KendraDataSourceConnectionConfiguration (Val Text)
kdsccDatabaseName = lens _kendraDataSourceConnectionConfigurationDatabaseName (\s a -> s { _kendraDataSourceConnectionConfigurationDatabaseName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-connectionconfiguration.html#cfn-kendra-datasource-connectionconfiguration-databaseport
kdsccDatabasePort :: Lens' KendraDataSourceConnectionConfiguration (Val Integer)
kdsccDatabasePort = lens _kendraDataSourceConnectionConfigurationDatabasePort (\s a -> s { _kendraDataSourceConnectionConfigurationDatabasePort = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-connectionconfiguration.html#cfn-kendra-datasource-connectionconfiguration-secretarn
kdsccSecretArn :: Lens' KendraDataSourceConnectionConfiguration (Val Text)
kdsccSecretArn = lens _kendraDataSourceConnectionConfigurationSecretArn (\s a -> s { _kendraDataSourceConnectionConfigurationSecretArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-connectionconfiguration.html#cfn-kendra-datasource-connectionconfiguration-tablename
kdsccTableName :: Lens' KendraDataSourceConnectionConfiguration (Val Text)
kdsccTableName = lens _kendraDataSourceConnectionConfigurationTableName (\s a -> s { _kendraDataSourceConnectionConfigurationTableName = a })
