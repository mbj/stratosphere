
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-resolver-lambdaconflicthandlerconfig.html

module Stratosphere.ResourceProperties.AppSyncResolverLambdaConflictHandlerConfig where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for AppSyncResolverLambdaConflictHandlerConfig.
-- See 'appSyncResolverLambdaConflictHandlerConfig' for a more convenient
-- constructor.
data AppSyncResolverLambdaConflictHandlerConfig =
  AppSyncResolverLambdaConflictHandlerConfig
  { _appSyncResolverLambdaConflictHandlerConfigLambdaConflictHandlerArn :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON AppSyncResolverLambdaConflictHandlerConfig where
  toJSON AppSyncResolverLambdaConflictHandlerConfig{..} =
    object $
    catMaybes
    [ fmap (("LambdaConflictHandlerArn",) . toJSON) _appSyncResolverLambdaConflictHandlerConfigLambdaConflictHandlerArn
    ]

-- | Constructor for 'AppSyncResolverLambdaConflictHandlerConfig' containing
-- required fields as arguments.
appSyncResolverLambdaConflictHandlerConfig
  :: AppSyncResolverLambdaConflictHandlerConfig
appSyncResolverLambdaConflictHandlerConfig  =
  AppSyncResolverLambdaConflictHandlerConfig
  { _appSyncResolverLambdaConflictHandlerConfigLambdaConflictHandlerArn = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-resolver-lambdaconflicthandlerconfig.html#cfn-appsync-resolver-lambdaconflicthandlerconfig-lambdaconflicthandlerarn
asrlchcLambdaConflictHandlerArn :: Lens' AppSyncResolverLambdaConflictHandlerConfig (Maybe (Val Text))
asrlchcLambdaConflictHandlerArn = lens _appSyncResolverLambdaConflictHandlerConfigLambdaConflictHandlerArn (\s a -> s { _appSyncResolverLambdaConflictHandlerConfigLambdaConflictHandlerArn = a })
