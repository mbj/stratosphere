{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-authorizationconfig.html

module Stratosphere.ResourceProperties.AppSyncDataSourceAuthorizationConfig where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.AppSyncDataSourceAwsIamConfig

-- | Full data type definition for AppSyncDataSourceAuthorizationConfig. See
-- 'appSyncDataSourceAuthorizationConfig' for a more convenient constructor.
data AppSyncDataSourceAuthorizationConfig =
  AppSyncDataSourceAuthorizationConfig
  { _appSyncDataSourceAuthorizationConfigAuthorizationType :: Val Text
  , _appSyncDataSourceAuthorizationConfigAwsIamConfig :: Maybe AppSyncDataSourceAwsIamConfig
  } deriving (Show, Eq)

instance ToJSON AppSyncDataSourceAuthorizationConfig where
  toJSON AppSyncDataSourceAuthorizationConfig{..} =
    object $
    catMaybes
    [ (Just . ("AuthorizationType",) . toJSON) _appSyncDataSourceAuthorizationConfigAuthorizationType
    , fmap (("AwsIamConfig",) . toJSON) _appSyncDataSourceAuthorizationConfigAwsIamConfig
    ]

-- | Constructor for 'AppSyncDataSourceAuthorizationConfig' containing
-- required fields as arguments.
appSyncDataSourceAuthorizationConfig
  :: Val Text -- ^ 'asdsacAuthorizationType'
  -> AppSyncDataSourceAuthorizationConfig
appSyncDataSourceAuthorizationConfig authorizationTypearg =
  AppSyncDataSourceAuthorizationConfig
  { _appSyncDataSourceAuthorizationConfigAuthorizationType = authorizationTypearg
  , _appSyncDataSourceAuthorizationConfigAwsIamConfig = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-authorizationconfig.html#cfn-appsync-datasource-authorizationconfig-authorizationtype
asdsacAuthorizationType :: Lens' AppSyncDataSourceAuthorizationConfig (Val Text)
asdsacAuthorizationType = lens _appSyncDataSourceAuthorizationConfigAuthorizationType (\s a -> s { _appSyncDataSourceAuthorizationConfigAuthorizationType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-authorizationconfig.html#cfn-appsync-datasource-authorizationconfig-awsiamconfig
asdsacAwsIamConfig :: Lens' AppSyncDataSourceAuthorizationConfig (Maybe AppSyncDataSourceAwsIamConfig)
asdsacAwsIamConfig = lens _appSyncDataSourceAuthorizationConfigAwsIamConfig (\s a -> s { _appSyncDataSourceAuthorizationConfigAwsIamConfig = a })
