
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-httprouteheader.html

module Stratosphere.ResourceProperties.AppMeshRouteHttpRouteHeader where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.AppMeshRouteHeaderMatchMethod

-- | Full data type definition for AppMeshRouteHttpRouteHeader. See
-- 'appMeshRouteHttpRouteHeader' for a more convenient constructor.
data AppMeshRouteHttpRouteHeader =
  AppMeshRouteHttpRouteHeader
  { _appMeshRouteHttpRouteHeaderInvert :: Maybe (Val Bool)
  , _appMeshRouteHttpRouteHeaderMatch :: Maybe AppMeshRouteHeaderMatchMethod
  , _appMeshRouteHttpRouteHeaderName :: Val Text
  } deriving (Show, Eq)

instance ToJSON AppMeshRouteHttpRouteHeader where
  toJSON AppMeshRouteHttpRouteHeader{..} =
    object $
    catMaybes
    [ fmap (("Invert",) . toJSON) _appMeshRouteHttpRouteHeaderInvert
    , fmap (("Match",) . toJSON) _appMeshRouteHttpRouteHeaderMatch
    , (Just . ("Name",) . toJSON) _appMeshRouteHttpRouteHeaderName
    ]

-- | Constructor for 'AppMeshRouteHttpRouteHeader' containing required fields
-- as arguments.
appMeshRouteHttpRouteHeader
  :: Val Text -- ^ 'amrhrhName'
  -> AppMeshRouteHttpRouteHeader
appMeshRouteHttpRouteHeader namearg =
  AppMeshRouteHttpRouteHeader
  { _appMeshRouteHttpRouteHeaderInvert = Nothing
  , _appMeshRouteHttpRouteHeaderMatch = Nothing
  , _appMeshRouteHttpRouteHeaderName = namearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-httprouteheader.html#cfn-appmesh-route-httprouteheader-invert
amrhrhInvert :: Lens' AppMeshRouteHttpRouteHeader (Maybe (Val Bool))
amrhrhInvert = lens _appMeshRouteHttpRouteHeaderInvert (\s a -> s { _appMeshRouteHttpRouteHeaderInvert = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-httprouteheader.html#cfn-appmesh-route-httprouteheader-match
amrhrhMatch :: Lens' AppMeshRouteHttpRouteHeader (Maybe AppMeshRouteHeaderMatchMethod)
amrhrhMatch = lens _appMeshRouteHttpRouteHeaderMatch (\s a -> s { _appMeshRouteHttpRouteHeaderMatch = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-httprouteheader.html#cfn-appmesh-route-httprouteheader-name
amrhrhName :: Lens' AppMeshRouteHttpRouteHeader (Val Text)
amrhrhName = lens _appMeshRouteHttpRouteHeaderName (\s a -> s { _appMeshRouteHttpRouteHeaderName = a })
