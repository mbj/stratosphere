{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-databaseconfiguration.html

module Stratosphere.ResourceProperties.KendraDataSourceDatabaseConfiguration where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.KendraDataSourceAclConfiguration
import Stratosphere.ResourceProperties.KendraDataSourceColumnConfiguration
import Stratosphere.ResourceProperties.KendraDataSourceConnectionConfiguration
import Stratosphere.ResourceProperties.KendraDataSourceDataSourceVpcConfiguration
import Stratosphere.ResourceProperties.KendraDataSourceSqlConfiguration

-- | Full data type definition for KendraDataSourceDatabaseConfiguration. See
-- 'kendraDataSourceDatabaseConfiguration' for a more convenient
-- constructor.
data KendraDataSourceDatabaseConfiguration =
  KendraDataSourceDatabaseConfiguration
  { _kendraDataSourceDatabaseConfigurationAclConfiguration :: Maybe KendraDataSourceAclConfiguration
  , _kendraDataSourceDatabaseConfigurationColumnConfiguration :: KendraDataSourceColumnConfiguration
  , _kendraDataSourceDatabaseConfigurationConnectionConfiguration :: KendraDataSourceConnectionConfiguration
  , _kendraDataSourceDatabaseConfigurationDatabaseEngineType :: Val Text
  , _kendraDataSourceDatabaseConfigurationSqlConfiguration :: Maybe KendraDataSourceSqlConfiguration
  , _kendraDataSourceDatabaseConfigurationVpcConfiguration :: Maybe KendraDataSourceDataSourceVpcConfiguration
  } deriving (Show, Eq)

instance ToJSON KendraDataSourceDatabaseConfiguration where
  toJSON KendraDataSourceDatabaseConfiguration{..} =
    object $
    catMaybes
    [ fmap (("AclConfiguration",) . toJSON) _kendraDataSourceDatabaseConfigurationAclConfiguration
    , (Just . ("ColumnConfiguration",) . toJSON) _kendraDataSourceDatabaseConfigurationColumnConfiguration
    , (Just . ("ConnectionConfiguration",) . toJSON) _kendraDataSourceDatabaseConfigurationConnectionConfiguration
    , (Just . ("DatabaseEngineType",) . toJSON) _kendraDataSourceDatabaseConfigurationDatabaseEngineType
    , fmap (("SqlConfiguration",) . toJSON) _kendraDataSourceDatabaseConfigurationSqlConfiguration
    , fmap (("VpcConfiguration",) . toJSON) _kendraDataSourceDatabaseConfigurationVpcConfiguration
    ]

-- | Constructor for 'KendraDataSourceDatabaseConfiguration' containing
-- required fields as arguments.
kendraDataSourceDatabaseConfiguration
  :: KendraDataSourceColumnConfiguration -- ^ 'kdsdcColumnConfiguration'
  -> KendraDataSourceConnectionConfiguration -- ^ 'kdsdcConnectionConfiguration'
  -> Val Text -- ^ 'kdsdcDatabaseEngineType'
  -> KendraDataSourceDatabaseConfiguration
kendraDataSourceDatabaseConfiguration columnConfigurationarg connectionConfigurationarg databaseEngineTypearg =
  KendraDataSourceDatabaseConfiguration
  { _kendraDataSourceDatabaseConfigurationAclConfiguration = Nothing
  , _kendraDataSourceDatabaseConfigurationColumnConfiguration = columnConfigurationarg
  , _kendraDataSourceDatabaseConfigurationConnectionConfiguration = connectionConfigurationarg
  , _kendraDataSourceDatabaseConfigurationDatabaseEngineType = databaseEngineTypearg
  , _kendraDataSourceDatabaseConfigurationSqlConfiguration = Nothing
  , _kendraDataSourceDatabaseConfigurationVpcConfiguration = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-databaseconfiguration.html#cfn-kendra-datasource-databaseconfiguration-aclconfiguration
kdsdcAclConfiguration :: Lens' KendraDataSourceDatabaseConfiguration (Maybe KendraDataSourceAclConfiguration)
kdsdcAclConfiguration = lens _kendraDataSourceDatabaseConfigurationAclConfiguration (\s a -> s { _kendraDataSourceDatabaseConfigurationAclConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-databaseconfiguration.html#cfn-kendra-datasource-databaseconfiguration-columnconfiguration
kdsdcColumnConfiguration :: Lens' KendraDataSourceDatabaseConfiguration KendraDataSourceColumnConfiguration
kdsdcColumnConfiguration = lens _kendraDataSourceDatabaseConfigurationColumnConfiguration (\s a -> s { _kendraDataSourceDatabaseConfigurationColumnConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-databaseconfiguration.html#cfn-kendra-datasource-databaseconfiguration-connectionconfiguration
kdsdcConnectionConfiguration :: Lens' KendraDataSourceDatabaseConfiguration KendraDataSourceConnectionConfiguration
kdsdcConnectionConfiguration = lens _kendraDataSourceDatabaseConfigurationConnectionConfiguration (\s a -> s { _kendraDataSourceDatabaseConfigurationConnectionConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-databaseconfiguration.html#cfn-kendra-datasource-databaseconfiguration-databaseenginetype
kdsdcDatabaseEngineType :: Lens' KendraDataSourceDatabaseConfiguration (Val Text)
kdsdcDatabaseEngineType = lens _kendraDataSourceDatabaseConfigurationDatabaseEngineType (\s a -> s { _kendraDataSourceDatabaseConfigurationDatabaseEngineType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-databaseconfiguration.html#cfn-kendra-datasource-databaseconfiguration-sqlconfiguration
kdsdcSqlConfiguration :: Lens' KendraDataSourceDatabaseConfiguration (Maybe KendraDataSourceSqlConfiguration)
kdsdcSqlConfiguration = lens _kendraDataSourceDatabaseConfigurationSqlConfiguration (\s a -> s { _kendraDataSourceDatabaseConfigurationSqlConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-databaseconfiguration.html#cfn-kendra-datasource-databaseconfiguration-vpcconfiguration
kdsdcVpcConfiguration :: Lens' KendraDataSourceDatabaseConfiguration (Maybe KendraDataSourceDataSourceVpcConfiguration)
kdsdcVpcConfiguration = lens _kendraDataSourceDatabaseConfigurationVpcConfiguration (\s a -> s { _kendraDataSourceDatabaseConfigurationVpcConfiguration = a })
