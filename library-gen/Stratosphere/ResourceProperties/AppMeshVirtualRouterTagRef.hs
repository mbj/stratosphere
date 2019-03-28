{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualrouter-tagref.html

module Stratosphere.ResourceProperties.AppMeshVirtualRouterTagRef where

import Stratosphere.ResourceImports


-- | Full data type definition for AppMeshVirtualRouterTagRef. See
-- 'appMeshVirtualRouterTagRef' for a more convenient constructor.
data AppMeshVirtualRouterTagRef =
  AppMeshVirtualRouterTagRef
  { _appMeshVirtualRouterTagRefKey :: Val Text
  , _appMeshVirtualRouterTagRefValue :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON AppMeshVirtualRouterTagRef where
  toJSON AppMeshVirtualRouterTagRef{..} =
    object $
    catMaybes
    [ (Just . ("Key",) . toJSON) _appMeshVirtualRouterTagRefKey
    , fmap (("Value",) . toJSON) _appMeshVirtualRouterTagRefValue
    ]

-- | Constructor for 'AppMeshVirtualRouterTagRef' containing required fields
-- as arguments.
appMeshVirtualRouterTagRef
  :: Val Text -- ^ 'amvrtrKey'
  -> AppMeshVirtualRouterTagRef
appMeshVirtualRouterTagRef keyarg =
  AppMeshVirtualRouterTagRef
  { _appMeshVirtualRouterTagRefKey = keyarg
  , _appMeshVirtualRouterTagRefValue = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualrouter-tagref.html#cfn-appmesh-virtualrouter-tagref-key
amvrtrKey :: Lens' AppMeshVirtualRouterTagRef (Val Text)
amvrtrKey = lens _appMeshVirtualRouterTagRefKey (\s a -> s { _appMeshVirtualRouterTagRefKey = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualrouter-tagref.html#cfn-appmesh-virtualrouter-tagref-value
amvrtrValue :: Lens' AppMeshVirtualRouterTagRef (Maybe (Val Text))
amvrtrValue = lens _appMeshVirtualRouterTagRefValue (\s a -> s { _appMeshVirtualRouterTagRefValue = a })
