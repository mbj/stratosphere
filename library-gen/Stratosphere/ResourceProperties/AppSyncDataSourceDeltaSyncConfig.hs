
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-deltasyncconfig.html

module Stratosphere.ResourceProperties.AppSyncDataSourceDeltaSyncConfig where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for AppSyncDataSourceDeltaSyncConfig. See
-- 'appSyncDataSourceDeltaSyncConfig' for a more convenient constructor.
data AppSyncDataSourceDeltaSyncConfig =
  AppSyncDataSourceDeltaSyncConfig
  { _appSyncDataSourceDeltaSyncConfigBaseTableTTL :: Val Text
  , _appSyncDataSourceDeltaSyncConfigDeltaSyncTableName :: Val Text
  , _appSyncDataSourceDeltaSyncConfigDeltaSyncTableTTL :: Val Text
  } deriving (Show, Eq)

instance ToJSON AppSyncDataSourceDeltaSyncConfig where
  toJSON AppSyncDataSourceDeltaSyncConfig{..} =
    object $
    catMaybes
    [ (Just . ("BaseTableTTL",) . toJSON) _appSyncDataSourceDeltaSyncConfigBaseTableTTL
    , (Just . ("DeltaSyncTableName",) . toJSON) _appSyncDataSourceDeltaSyncConfigDeltaSyncTableName
    , (Just . ("DeltaSyncTableTTL",) . toJSON) _appSyncDataSourceDeltaSyncConfigDeltaSyncTableTTL
    ]

-- | Constructor for 'AppSyncDataSourceDeltaSyncConfig' containing required
-- fields as arguments.
appSyncDataSourceDeltaSyncConfig
  :: Val Text -- ^ 'asdsdscBaseTableTTL'
  -> Val Text -- ^ 'asdsdscDeltaSyncTableName'
  -> Val Text -- ^ 'asdsdscDeltaSyncTableTTL'
  -> AppSyncDataSourceDeltaSyncConfig
appSyncDataSourceDeltaSyncConfig baseTableTTLarg deltaSyncTableNamearg deltaSyncTableTTLarg =
  AppSyncDataSourceDeltaSyncConfig
  { _appSyncDataSourceDeltaSyncConfigBaseTableTTL = baseTableTTLarg
  , _appSyncDataSourceDeltaSyncConfigDeltaSyncTableName = deltaSyncTableNamearg
  , _appSyncDataSourceDeltaSyncConfigDeltaSyncTableTTL = deltaSyncTableTTLarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-deltasyncconfig.html#cfn-appsync-datasource-deltasyncconfig-basetablettl
asdsdscBaseTableTTL :: Lens' AppSyncDataSourceDeltaSyncConfig (Val Text)
asdsdscBaseTableTTL = lens _appSyncDataSourceDeltaSyncConfigBaseTableTTL (\s a -> s { _appSyncDataSourceDeltaSyncConfigBaseTableTTL = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-deltasyncconfig.html#cfn-appsync-datasource-deltasyncconfig-deltasynctablename
asdsdscDeltaSyncTableName :: Lens' AppSyncDataSourceDeltaSyncConfig (Val Text)
asdsdscDeltaSyncTableName = lens _appSyncDataSourceDeltaSyncConfigDeltaSyncTableName (\s a -> s { _appSyncDataSourceDeltaSyncConfigDeltaSyncTableName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-deltasyncconfig.html#cfn-appsync-datasource-deltasyncconfig-deltasynctablettl
asdsdscDeltaSyncTableTTL :: Lens' AppSyncDataSourceDeltaSyncConfig (Val Text)
asdsdscDeltaSyncTableTTL = lens _appSyncDataSourceDeltaSyncConfigDeltaSyncTableTTL (\s a -> s { _appSyncDataSourceDeltaSyncConfigDeltaSyncTableTTL = a })
