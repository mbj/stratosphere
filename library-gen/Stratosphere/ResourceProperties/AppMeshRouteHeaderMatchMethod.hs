
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-headermatchmethod.html

module Stratosphere.ResourceProperties.AppMeshRouteHeaderMatchMethod where

import Prelude
import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.AppMeshRouteMatchRange

-- | Full data type definition for AppMeshRouteHeaderMatchMethod. See
-- 'appMeshRouteHeaderMatchMethod' for a more convenient constructor.
data AppMeshRouteHeaderMatchMethod =
  AppMeshRouteHeaderMatchMethod
  { _appMeshRouteHeaderMatchMethodExact :: Maybe (Val Text)
  , _appMeshRouteHeaderMatchMethodPrefix :: Maybe (Val Text)
  , _appMeshRouteHeaderMatchMethodRange :: Maybe AppMeshRouteMatchRange
  , _appMeshRouteHeaderMatchMethodRegex :: Maybe (Val Text)
  , _appMeshRouteHeaderMatchMethodSuffix :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON AppMeshRouteHeaderMatchMethod where
  toJSON AppMeshRouteHeaderMatchMethod{..} =
    object $
    catMaybes
    [ fmap (("Exact",) . toJSON) _appMeshRouteHeaderMatchMethodExact
    , fmap (("Prefix",) . toJSON) _appMeshRouteHeaderMatchMethodPrefix
    , fmap (("Range",) . toJSON) _appMeshRouteHeaderMatchMethodRange
    , fmap (("Regex",) . toJSON) _appMeshRouteHeaderMatchMethodRegex
    , fmap (("Suffix",) . toJSON) _appMeshRouteHeaderMatchMethodSuffix
    ]

-- | Constructor for 'AppMeshRouteHeaderMatchMethod' containing required
-- fields as arguments.
appMeshRouteHeaderMatchMethod
  :: AppMeshRouteHeaderMatchMethod
appMeshRouteHeaderMatchMethod  =
  AppMeshRouteHeaderMatchMethod
  { _appMeshRouteHeaderMatchMethodExact = Nothing
  , _appMeshRouteHeaderMatchMethodPrefix = Nothing
  , _appMeshRouteHeaderMatchMethodRange = Nothing
  , _appMeshRouteHeaderMatchMethodRegex = Nothing
  , _appMeshRouteHeaderMatchMethodSuffix = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-headermatchmethod.html#cfn-appmesh-route-headermatchmethod-exact
amrhmmExact :: Lens' AppMeshRouteHeaderMatchMethod (Maybe (Val Text))
amrhmmExact = lens _appMeshRouteHeaderMatchMethodExact (\s a -> s { _appMeshRouteHeaderMatchMethodExact = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-headermatchmethod.html#cfn-appmesh-route-headermatchmethod-prefix
amrhmmPrefix :: Lens' AppMeshRouteHeaderMatchMethod (Maybe (Val Text))
amrhmmPrefix = lens _appMeshRouteHeaderMatchMethodPrefix (\s a -> s { _appMeshRouteHeaderMatchMethodPrefix = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-headermatchmethod.html#cfn-appmesh-route-headermatchmethod-range
amrhmmRange :: Lens' AppMeshRouteHeaderMatchMethod (Maybe AppMeshRouteMatchRange)
amrhmmRange = lens _appMeshRouteHeaderMatchMethodRange (\s a -> s { _appMeshRouteHeaderMatchMethodRange = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-headermatchmethod.html#cfn-appmesh-route-headermatchmethod-regex
amrhmmRegex :: Lens' AppMeshRouteHeaderMatchMethod (Maybe (Val Text))
amrhmmRegex = lens _appMeshRouteHeaderMatchMethodRegex (\s a -> s { _appMeshRouteHeaderMatchMethodRegex = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-headermatchmethod.html#cfn-appmesh-route-headermatchmethod-suffix
amrhmmSuffix :: Lens' AppMeshRouteHeaderMatchMethod (Maybe (Val Text))
amrhmmSuffix = lens _appMeshRouteHeaderMatchMethodSuffix (\s a -> s { _appMeshRouteHeaderMatchMethodSuffix = a })
