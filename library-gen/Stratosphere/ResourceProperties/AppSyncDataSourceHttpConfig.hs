
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-httpconfig.html

module Stratosphere.ResourceProperties.AppSyncDataSourceHttpConfig where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.AppSyncDataSourceAuthorizationConfig

-- | Full data type definition for AppSyncDataSourceHttpConfig. See
-- 'appSyncDataSourceHttpConfig' for a more convenient constructor.
data AppSyncDataSourceHttpConfig =
  AppSyncDataSourceHttpConfig
  { _appSyncDataSourceHttpConfigAuthorizationConfig :: Maybe AppSyncDataSourceAuthorizationConfig
  , _appSyncDataSourceHttpConfigEndpoint :: Val Text
  } deriving (Show, Eq)

instance ToJSON AppSyncDataSourceHttpConfig where
  toJSON AppSyncDataSourceHttpConfig{..} =
    object $
    catMaybes
    [ fmap (("AuthorizationConfig",) . toJSON) _appSyncDataSourceHttpConfigAuthorizationConfig
    , (Just . ("Endpoint",) . toJSON) _appSyncDataSourceHttpConfigEndpoint
    ]

-- | Constructor for 'AppSyncDataSourceHttpConfig' containing required fields
-- as arguments.
appSyncDataSourceHttpConfig
  :: Val Text -- ^ 'asdshcEndpoint'
  -> AppSyncDataSourceHttpConfig
appSyncDataSourceHttpConfig endpointarg =
  AppSyncDataSourceHttpConfig
  { _appSyncDataSourceHttpConfigAuthorizationConfig = Nothing
  , _appSyncDataSourceHttpConfigEndpoint = endpointarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-httpconfig.html#cfn-appsync-datasource-httpconfig-authorizationconfig
asdshcAuthorizationConfig :: Lens' AppSyncDataSourceHttpConfig (Maybe AppSyncDataSourceAuthorizationConfig)
asdshcAuthorizationConfig = lens _appSyncDataSourceHttpConfigAuthorizationConfig (\s a -> s { _appSyncDataSourceHttpConfigAuthorizationConfig = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-httpconfig.html#cfn-appsync-datasource-httpconfig-endpoint
asdshcEndpoint :: Lens' AppSyncDataSourceHttpConfig (Val Text)
asdshcEndpoint = lens _appSyncDataSourceHttpConfigEndpoint (\s a -> s { _appSyncDataSourceHttpConfigEndpoint = a })
