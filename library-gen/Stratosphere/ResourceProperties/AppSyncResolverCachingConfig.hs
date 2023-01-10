
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-resolver-cachingconfig.html

module Stratosphere.ResourceProperties.AppSyncResolverCachingConfig where

import Stratosphere.ResourceImports


-- | Full data type definition for AppSyncResolverCachingConfig. See
-- 'appSyncResolverCachingConfig' for a more convenient constructor.
data AppSyncResolverCachingConfig =
  AppSyncResolverCachingConfig
  { _appSyncResolverCachingConfigCachingKeys :: Maybe (ValList Text)
  , _appSyncResolverCachingConfigTtl :: Maybe (Val Double)
  } deriving (Show, Eq)

instance ToJSON AppSyncResolverCachingConfig where
  toJSON AppSyncResolverCachingConfig{..} =
    object $
    catMaybes
    [ fmap (("CachingKeys",) . toJSON) _appSyncResolverCachingConfigCachingKeys
    , fmap (("Ttl",) . toJSON) _appSyncResolverCachingConfigTtl
    ]

-- | Constructor for 'AppSyncResolverCachingConfig' containing required fields
-- as arguments.
appSyncResolverCachingConfig
  :: AppSyncResolverCachingConfig
appSyncResolverCachingConfig  =
  AppSyncResolverCachingConfig
  { _appSyncResolverCachingConfigCachingKeys = Nothing
  , _appSyncResolverCachingConfigTtl = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-resolver-cachingconfig.html#cfn-appsync-resolver-cachingconfig-cachingkeys
asrccCachingKeys :: Lens' AppSyncResolverCachingConfig (Maybe (ValList Text))
asrccCachingKeys = lens _appSyncResolverCachingConfigCachingKeys (\s a -> s { _appSyncResolverCachingConfigCachingKeys = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-resolver-cachingconfig.html#cfn-appsync-resolver-cachingconfig-ttl
asrccTtl :: Lens' AppSyncResolverCachingConfig (Maybe (Val Double))
asrccTtl = lens _appSyncResolverCachingConfigTtl (\s a -> s { _appSyncResolverCachingConfigTtl = a })
