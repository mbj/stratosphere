{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-lambdaconfig.html

module Stratosphere.ResourceProperties.AppSyncDataSourceLambdaConfig where

import Stratosphere.ResourceImports


-- | Full data type definition for AppSyncDataSourceLambdaConfig. See
-- 'appSyncDataSourceLambdaConfig' for a more convenient constructor.
data AppSyncDataSourceLambdaConfig =
  AppSyncDataSourceLambdaConfig
  { _appSyncDataSourceLambdaConfigLambdaFunctionArn :: Val Text
  } deriving (Show, Eq)

instance ToJSON AppSyncDataSourceLambdaConfig where
  toJSON AppSyncDataSourceLambdaConfig{..} =
    object $
    catMaybes
    [ (Just . ("LambdaFunctionArn",) . toJSON) _appSyncDataSourceLambdaConfigLambdaFunctionArn
    ]

-- | Constructor for 'AppSyncDataSourceLambdaConfig' containing required
-- fields as arguments.
appSyncDataSourceLambdaConfig
  :: Val Text -- ^ 'asdslcLambdaFunctionArn'
  -> AppSyncDataSourceLambdaConfig
appSyncDataSourceLambdaConfig lambdaFunctionArnarg =
  AppSyncDataSourceLambdaConfig
  { _appSyncDataSourceLambdaConfigLambdaFunctionArn = lambdaFunctionArnarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-lambdaconfig.html#cfn-appsync-datasource-lambdaconfig-lambdafunctionarn
asdslcLambdaFunctionArn :: Lens' AppSyncDataSourceLambdaConfig (Val Text)
asdslcLambdaFunctionArn = lens _appSyncDataSourceLambdaConfigLambdaFunctionArn (\s a -> s { _appSyncDataSourceLambdaConfigLambdaFunctionArn = a })
