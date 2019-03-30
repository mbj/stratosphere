{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-tagref.html

module Stratosphere.ResourceProperties.AppMeshRouteTagRef where

import Stratosphere.ResourceImports


-- | Full data type definition for AppMeshRouteTagRef. See
-- 'appMeshRouteTagRef' for a more convenient constructor.
data AppMeshRouteTagRef =
  AppMeshRouteTagRef
  { _appMeshRouteTagRefKey :: Val Text
  , _appMeshRouteTagRefValue :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON AppMeshRouteTagRef where
  toJSON AppMeshRouteTagRef{..} =
    object $
    catMaybes
    [ (Just . ("Key",) . toJSON) _appMeshRouteTagRefKey
    , fmap (("Value",) . toJSON) _appMeshRouteTagRefValue
    ]

-- | Constructor for 'AppMeshRouteTagRef' containing required fields as
-- arguments.
appMeshRouteTagRef
  :: Val Text -- ^ 'amrtrKey'
  -> AppMeshRouteTagRef
appMeshRouteTagRef keyarg =
  AppMeshRouteTagRef
  { _appMeshRouteTagRefKey = keyarg
  , _appMeshRouteTagRefValue = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-tagref.html#cfn-appmesh-route-tagref-key
amrtrKey :: Lens' AppMeshRouteTagRef (Val Text)
amrtrKey = lens _appMeshRouteTagRefKey (\s a -> s { _appMeshRouteTagRefKey = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-tagref.html#cfn-appmesh-route-tagref-value
amrtrValue :: Lens' AppMeshRouteTagRef (Maybe (Val Text))
amrtrValue = lens _appMeshRouteTagRefValue (\s a -> s { _appMeshRouteTagRefValue = a })
