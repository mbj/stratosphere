{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-relationaldatabaseconfig.html

module Stratosphere.ResourceProperties.AppSyncDataSourceRelationalDatabaseConfig where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.AppSyncDataSourceRdsHttpEndpointConfig

-- | Full data type definition for AppSyncDataSourceRelationalDatabaseConfig.
-- See 'appSyncDataSourceRelationalDatabaseConfig' for a more convenient
-- constructor.
data AppSyncDataSourceRelationalDatabaseConfig =
  AppSyncDataSourceRelationalDatabaseConfig
  { _appSyncDataSourceRelationalDatabaseConfigRdsHttpEndpointConfig :: Maybe AppSyncDataSourceRdsHttpEndpointConfig
  , _appSyncDataSourceRelationalDatabaseConfigRelationalDatabaseSourceType :: Val Text
  } deriving (Show, Eq)

instance ToJSON AppSyncDataSourceRelationalDatabaseConfig where
  toJSON AppSyncDataSourceRelationalDatabaseConfig{..} =
    object $
    catMaybes
    [ fmap (("RdsHttpEndpointConfig",) . toJSON) _appSyncDataSourceRelationalDatabaseConfigRdsHttpEndpointConfig
    , (Just . ("RelationalDatabaseSourceType",) . toJSON) _appSyncDataSourceRelationalDatabaseConfigRelationalDatabaseSourceType
    ]

-- | Constructor for 'AppSyncDataSourceRelationalDatabaseConfig' containing
-- required fields as arguments.
appSyncDataSourceRelationalDatabaseConfig
  :: Val Text -- ^ 'asdsrdcRelationalDatabaseSourceType'
  -> AppSyncDataSourceRelationalDatabaseConfig
appSyncDataSourceRelationalDatabaseConfig relationalDatabaseSourceTypearg =
  AppSyncDataSourceRelationalDatabaseConfig
  { _appSyncDataSourceRelationalDatabaseConfigRdsHttpEndpointConfig = Nothing
  , _appSyncDataSourceRelationalDatabaseConfigRelationalDatabaseSourceType = relationalDatabaseSourceTypearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-relationaldatabaseconfig.html#cfn-appsync-datasource-relationaldatabaseconfig-rdshttpendpointconfig
asdsrdcRdsHttpEndpointConfig :: Lens' AppSyncDataSourceRelationalDatabaseConfig (Maybe AppSyncDataSourceRdsHttpEndpointConfig)
asdsrdcRdsHttpEndpointConfig = lens _appSyncDataSourceRelationalDatabaseConfigRdsHttpEndpointConfig (\s a -> s { _appSyncDataSourceRelationalDatabaseConfigRdsHttpEndpointConfig = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-relationaldatabaseconfig.html#cfn-appsync-datasource-relationaldatabaseconfig-relationaldatabasesourcetype
asdsrdcRelationalDatabaseSourceType :: Lens' AppSyncDataSourceRelationalDatabaseConfig (Val Text)
asdsrdcRelationalDatabaseSourceType = lens _appSyncDataSourceRelationalDatabaseConfigRelationalDatabaseSourceType (\s a -> s { _appSyncDataSourceRelationalDatabaseConfigRelationalDatabaseSourceType = a })
