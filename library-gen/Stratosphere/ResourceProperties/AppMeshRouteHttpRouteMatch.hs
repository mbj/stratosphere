
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-httproutematch.html

module Stratosphere.ResourceProperties.AppMeshRouteHttpRouteMatch where

import Prelude
import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.AppMeshRouteHttpRouteHeader

-- | Full data type definition for AppMeshRouteHttpRouteMatch. See
-- 'appMeshRouteHttpRouteMatch' for a more convenient constructor.
data AppMeshRouteHttpRouteMatch =
  AppMeshRouteHttpRouteMatch
  { _appMeshRouteHttpRouteMatchHeaders :: Maybe [AppMeshRouteHttpRouteHeader]
  , _appMeshRouteHttpRouteMatchMethod :: Maybe (Val Text)
  , _appMeshRouteHttpRouteMatchPrefix :: Val Text
  , _appMeshRouteHttpRouteMatchScheme :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON AppMeshRouteHttpRouteMatch where
  toJSON AppMeshRouteHttpRouteMatch{..} =
    object $
    catMaybes
    [ fmap (("Headers",) . toJSON) _appMeshRouteHttpRouteMatchHeaders
    , fmap (("Method",) . toJSON) _appMeshRouteHttpRouteMatchMethod
    , (Just . ("Prefix",) . toJSON) _appMeshRouteHttpRouteMatchPrefix
    , fmap (("Scheme",) . toJSON) _appMeshRouteHttpRouteMatchScheme
    ]

-- | Constructor for 'AppMeshRouteHttpRouteMatch' containing required fields
-- as arguments.
appMeshRouteHttpRouteMatch
  :: Val Text -- ^ 'amrhrmPrefix'
  -> AppMeshRouteHttpRouteMatch
appMeshRouteHttpRouteMatch prefixarg =
  AppMeshRouteHttpRouteMatch
  { _appMeshRouteHttpRouteMatchHeaders = Nothing
  , _appMeshRouteHttpRouteMatchMethod = Nothing
  , _appMeshRouteHttpRouteMatchPrefix = prefixarg
  , _appMeshRouteHttpRouteMatchScheme = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-httproutematch.html#cfn-appmesh-route-httproutematch-headers
amrhrmHeaders :: Lens' AppMeshRouteHttpRouteMatch (Maybe [AppMeshRouteHttpRouteHeader])
amrhrmHeaders = lens _appMeshRouteHttpRouteMatchHeaders (\s a -> s { _appMeshRouteHttpRouteMatchHeaders = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-httproutematch.html#cfn-appmesh-route-httproutematch-method
amrhrmMethod :: Lens' AppMeshRouteHttpRouteMatch (Maybe (Val Text))
amrhrmMethod = lens _appMeshRouteHttpRouteMatchMethod (\s a -> s { _appMeshRouteHttpRouteMatchMethod = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-httproutematch.html#cfn-appmesh-route-httproutematch-prefix
amrhrmPrefix :: Lens' AppMeshRouteHttpRouteMatch (Val Text)
amrhrmPrefix = lens _appMeshRouteHttpRouteMatchPrefix (\s a -> s { _appMeshRouteHttpRouteMatchPrefix = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-httproutematch.html#cfn-appmesh-route-httproutematch-scheme
amrhrmScheme :: Lens' AppMeshRouteHttpRouteMatch (Maybe (Val Text))
amrhrmScheme = lens _appMeshRouteHttpRouteMatchScheme (\s a -> s { _appMeshRouteHttpRouteMatchScheme = a })
