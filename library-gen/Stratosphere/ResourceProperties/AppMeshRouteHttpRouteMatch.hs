{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-httproutematch.html

module Stratosphere.ResourceProperties.AppMeshRouteHttpRouteMatch where

import Stratosphere.ResourceImports


-- | Full data type definition for AppMeshRouteHttpRouteMatch. See
-- 'appMeshRouteHttpRouteMatch' for a more convenient constructor.
data AppMeshRouteHttpRouteMatch =
  AppMeshRouteHttpRouteMatch
  { _appMeshRouteHttpRouteMatchPrefix :: Val Text
  } deriving (Show, Eq)

instance ToJSON AppMeshRouteHttpRouteMatch where
  toJSON AppMeshRouteHttpRouteMatch{..} =
    object $
    catMaybes
    [ (Just . ("Prefix",) . toJSON) _appMeshRouteHttpRouteMatchPrefix
    ]

-- | Constructor for 'AppMeshRouteHttpRouteMatch' containing required fields
-- as arguments.
appMeshRouteHttpRouteMatch
  :: Val Text -- ^ 'amrhrmPrefix'
  -> AppMeshRouteHttpRouteMatch
appMeshRouteHttpRouteMatch prefixarg =
  AppMeshRouteHttpRouteMatch
  { _appMeshRouteHttpRouteMatchPrefix = prefixarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-httproutematch.html#cfn-appmesh-route-httproutematch-prefix
amrhrmPrefix :: Lens' AppMeshRouteHttpRouteMatch (Val Text)
amrhrmPrefix = lens _appMeshRouteHttpRouteMatchPrefix (\s a -> s { _appMeshRouteHttpRouteMatchPrefix = a })
