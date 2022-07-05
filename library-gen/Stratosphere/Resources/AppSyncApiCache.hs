{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-apicache.html

module Stratosphere.Resources.AppSyncApiCache where

import Stratosphere.ResourceImports


-- | Full data type definition for AppSyncApiCache. See 'appSyncApiCache' for
-- a more convenient constructor.
data AppSyncApiCache =
  AppSyncApiCache
  { _appSyncApiCacheApiCachingBehavior :: Val Text
  , _appSyncApiCacheApiId :: Val Text
  , _appSyncApiCacheAtRestEncryptionEnabled :: Maybe (Val Bool)
  , _appSyncApiCacheTransitEncryptionEnabled :: Maybe (Val Bool)
  , _appSyncApiCacheTtl :: Val Double
  , _appSyncApiCacheType :: Val Text
  } deriving (Show, Eq)

instance ToResourceProperties AppSyncApiCache where
  toResourceProperties AppSyncApiCache{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::AppSync::ApiCache"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("ApiCachingBehavior",) . toJSON) _appSyncApiCacheApiCachingBehavior
        , (Just . ("ApiId",) . toJSON) _appSyncApiCacheApiId
        , fmap (("AtRestEncryptionEnabled",) . toJSON) _appSyncApiCacheAtRestEncryptionEnabled
        , fmap (("TransitEncryptionEnabled",) . toJSON) _appSyncApiCacheTransitEncryptionEnabled
        , (Just . ("Ttl",) . toJSON) _appSyncApiCacheTtl
        , (Just . ("Type",) . toJSON) _appSyncApiCacheType
        ]
    }

-- | Constructor for 'AppSyncApiCache' containing required fields as
-- arguments.
appSyncApiCache
  :: Val Text -- ^ 'asacApiCachingBehavior'
  -> Val Text -- ^ 'asacApiId'
  -> Val Double -- ^ 'asacTtl'
  -> Val Text -- ^ 'asacType'
  -> AppSyncApiCache
appSyncApiCache apiCachingBehaviorarg apiIdarg ttlarg typearg =
  AppSyncApiCache
  { _appSyncApiCacheApiCachingBehavior = apiCachingBehaviorarg
  , _appSyncApiCacheApiId = apiIdarg
  , _appSyncApiCacheAtRestEncryptionEnabled = Nothing
  , _appSyncApiCacheTransitEncryptionEnabled = Nothing
  , _appSyncApiCacheTtl = ttlarg
  , _appSyncApiCacheType = typearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-apicache.html#cfn-appsync-apicache-apicachingbehavior
asacApiCachingBehavior :: Lens' AppSyncApiCache (Val Text)
asacApiCachingBehavior = lens _appSyncApiCacheApiCachingBehavior (\s a -> s { _appSyncApiCacheApiCachingBehavior = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-apicache.html#cfn-appsync-apicache-apiid
asacApiId :: Lens' AppSyncApiCache (Val Text)
asacApiId = lens _appSyncApiCacheApiId (\s a -> s { _appSyncApiCacheApiId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-apicache.html#cfn-appsync-apicache-atrestencryptionenabled
asacAtRestEncryptionEnabled :: Lens' AppSyncApiCache (Maybe (Val Bool))
asacAtRestEncryptionEnabled = lens _appSyncApiCacheAtRestEncryptionEnabled (\s a -> s { _appSyncApiCacheAtRestEncryptionEnabled = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-apicache.html#cfn-appsync-apicache-transitencryptionenabled
asacTransitEncryptionEnabled :: Lens' AppSyncApiCache (Maybe (Val Bool))
asacTransitEncryptionEnabled = lens _appSyncApiCacheTransitEncryptionEnabled (\s a -> s { _appSyncApiCacheTransitEncryptionEnabled = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-apicache.html#cfn-appsync-apicache-ttl
asacTtl :: Lens' AppSyncApiCache (Val Double)
asacTtl = lens _appSyncApiCacheTtl (\s a -> s { _appSyncApiCacheTtl = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-apicache.html#cfn-appsync-apicache-type
asacType :: Lens' AppSyncApiCache (Val Text)
asacType = lens _appSyncApiCacheType (\s a -> s { _appSyncApiCacheType = a })
