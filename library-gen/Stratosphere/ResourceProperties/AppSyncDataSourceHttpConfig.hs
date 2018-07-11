{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-httpconfig.html

module Stratosphere.ResourceProperties.AppSyncDataSourceHttpConfig where

import Stratosphere.ResourceImports


-- | Full data type definition for AppSyncDataSourceHttpConfig. See
-- 'appSyncDataSourceHttpConfig' for a more convenient constructor.
data AppSyncDataSourceHttpConfig =
  AppSyncDataSourceHttpConfig
  { _appSyncDataSourceHttpConfigEndpoint :: Val Text
  } deriving (Show, Eq)

instance ToJSON AppSyncDataSourceHttpConfig where
  toJSON AppSyncDataSourceHttpConfig{..} =
    object $
    catMaybes
    [ (Just . ("Endpoint",) . toJSON) _appSyncDataSourceHttpConfigEndpoint
    ]

instance FromJSON AppSyncDataSourceHttpConfig where
  parseJSON (Object obj) =
    AppSyncDataSourceHttpConfig <$>
      (obj .: "Endpoint")
  parseJSON _ = mempty

-- | Constructor for 'AppSyncDataSourceHttpConfig' containing required fields
-- as arguments.
appSyncDataSourceHttpConfig
  :: Val Text -- ^ 'asdshcEndpoint'
  -> AppSyncDataSourceHttpConfig
appSyncDataSourceHttpConfig endpointarg =
  AppSyncDataSourceHttpConfig
  { _appSyncDataSourceHttpConfigEndpoint = endpointarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-httpconfig.html#cfn-appsync-datasource-httpconfig-endpoint
asdshcEndpoint :: Lens' AppSyncDataSourceHttpConfig (Val Text)
asdshcEndpoint = lens _appSyncDataSourceHttpConfigEndpoint (\s a -> s { _appSyncDataSourceHttpConfigEndpoint = a })
