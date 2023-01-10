
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-resolver-syncconfig.html

module Stratosphere.ResourceProperties.AppSyncResolverSyncConfig where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.AppSyncResolverLambdaConflictHandlerConfig

-- | Full data type definition for AppSyncResolverSyncConfig. See
-- 'appSyncResolverSyncConfig' for a more convenient constructor.
data AppSyncResolverSyncConfig =
  AppSyncResolverSyncConfig
  { _appSyncResolverSyncConfigConflictDetection :: Val Text
  , _appSyncResolverSyncConfigConflictHandler :: Maybe (Val Text)
  , _appSyncResolverSyncConfigLambdaConflictHandlerConfig :: Maybe AppSyncResolverLambdaConflictHandlerConfig
  } deriving (Show, Eq)

instance ToJSON AppSyncResolverSyncConfig where
  toJSON AppSyncResolverSyncConfig{..} =
    object $
    catMaybes
    [ (Just . ("ConflictDetection",) . toJSON) _appSyncResolverSyncConfigConflictDetection
    , fmap (("ConflictHandler",) . toJSON) _appSyncResolverSyncConfigConflictHandler
    , fmap (("LambdaConflictHandlerConfig",) . toJSON) _appSyncResolverSyncConfigLambdaConflictHandlerConfig
    ]

-- | Constructor for 'AppSyncResolverSyncConfig' containing required fields as
-- arguments.
appSyncResolverSyncConfig
  :: Val Text -- ^ 'asrscConflictDetection'
  -> AppSyncResolverSyncConfig
appSyncResolverSyncConfig conflictDetectionarg =
  AppSyncResolverSyncConfig
  { _appSyncResolverSyncConfigConflictDetection = conflictDetectionarg
  , _appSyncResolverSyncConfigConflictHandler = Nothing
  , _appSyncResolverSyncConfigLambdaConflictHandlerConfig = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-resolver-syncconfig.html#cfn-appsync-resolver-syncconfig-conflictdetection
asrscConflictDetection :: Lens' AppSyncResolverSyncConfig (Val Text)
asrscConflictDetection = lens _appSyncResolverSyncConfigConflictDetection (\s a -> s { _appSyncResolverSyncConfigConflictDetection = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-resolver-syncconfig.html#cfn-appsync-resolver-syncconfig-conflicthandler
asrscConflictHandler :: Lens' AppSyncResolverSyncConfig (Maybe (Val Text))
asrscConflictHandler = lens _appSyncResolverSyncConfigConflictHandler (\s a -> s { _appSyncResolverSyncConfigConflictHandler = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-resolver-syncconfig.html#cfn-appsync-resolver-syncconfig-lambdaconflicthandlerconfig
asrscLambdaConflictHandlerConfig :: Lens' AppSyncResolverSyncConfig (Maybe AppSyncResolverLambdaConflictHandlerConfig)
asrscLambdaConflictHandlerConfig = lens _appSyncResolverSyncConfigLambdaConflictHandlerConfig (\s a -> s { _appSyncResolverSyncConfigLambdaConflictHandlerConfig = a })
