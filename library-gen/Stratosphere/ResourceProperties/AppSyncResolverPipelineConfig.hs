{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-resolver-pipelineconfig.html

module Stratosphere.ResourceProperties.AppSyncResolverPipelineConfig where

import Stratosphere.ResourceImports


-- | Full data type definition for AppSyncResolverPipelineConfig. See
-- 'appSyncResolverPipelineConfig' for a more convenient constructor.
data AppSyncResolverPipelineConfig =
  AppSyncResolverPipelineConfig
  { _appSyncResolverPipelineConfigFunctions :: Maybe (ValList Text)
  } deriving (Show, Eq)

instance ToJSON AppSyncResolverPipelineConfig where
  toJSON AppSyncResolverPipelineConfig{..} =
    object $
    catMaybes
    [ fmap (("Functions",) . toJSON) _appSyncResolverPipelineConfigFunctions
    ]

instance FromJSON AppSyncResolverPipelineConfig where
  parseJSON (Object obj) =
    AppSyncResolverPipelineConfig <$>
      (obj .:? "Functions")
  parseJSON _ = mempty

-- | Constructor for 'AppSyncResolverPipelineConfig' containing required
-- fields as arguments.
appSyncResolverPipelineConfig
  :: AppSyncResolverPipelineConfig
appSyncResolverPipelineConfig  =
  AppSyncResolverPipelineConfig
  { _appSyncResolverPipelineConfigFunctions = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-resolver-pipelineconfig.html#cfn-appsync-resolver-pipelineconfig-functions
asrpcFunctions :: Lens' AppSyncResolverPipelineConfig (Maybe (ValList Text))
asrpcFunctions = lens _appSyncResolverPipelineConfigFunctions (\s a -> s { _appSyncResolverPipelineConfigFunctions = a })
