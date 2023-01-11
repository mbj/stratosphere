
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-apigatewaymanagedoverrides-routeoverrides.html

module Stratosphere.ResourceProperties.ApiGatewayV2ApiGatewayManagedOverridesRouteOverrides where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for
-- ApiGatewayV2ApiGatewayManagedOverridesRouteOverrides. See
-- 'apiGatewayV2ApiGatewayManagedOverridesRouteOverrides' for a more
-- convenient constructor.
data ApiGatewayV2ApiGatewayManagedOverridesRouteOverrides =
  ApiGatewayV2ApiGatewayManagedOverridesRouteOverrides
  { _apiGatewayV2ApiGatewayManagedOverridesRouteOverridesAuthorizationScopes :: Maybe (ValList Text)
  , _apiGatewayV2ApiGatewayManagedOverridesRouteOverridesAuthorizationType :: Maybe (Val Text)
  , _apiGatewayV2ApiGatewayManagedOverridesRouteOverridesAuthorizerId :: Maybe (Val Text)
  , _apiGatewayV2ApiGatewayManagedOverridesRouteOverridesOperationName :: Maybe (Val Text)
  , _apiGatewayV2ApiGatewayManagedOverridesRouteOverridesTarget :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON ApiGatewayV2ApiGatewayManagedOverridesRouteOverrides where
  toJSON ApiGatewayV2ApiGatewayManagedOverridesRouteOverrides{..} =
    object $
    catMaybes
    [ fmap (("AuthorizationScopes",) . toJSON) _apiGatewayV2ApiGatewayManagedOverridesRouteOverridesAuthorizationScopes
    , fmap (("AuthorizationType",) . toJSON) _apiGatewayV2ApiGatewayManagedOverridesRouteOverridesAuthorizationType
    , fmap (("AuthorizerId",) . toJSON) _apiGatewayV2ApiGatewayManagedOverridesRouteOverridesAuthorizerId
    , fmap (("OperationName",) . toJSON) _apiGatewayV2ApiGatewayManagedOverridesRouteOverridesOperationName
    , fmap (("Target",) . toJSON) _apiGatewayV2ApiGatewayManagedOverridesRouteOverridesTarget
    ]

-- | Constructor for 'ApiGatewayV2ApiGatewayManagedOverridesRouteOverrides'
-- containing required fields as arguments.
apiGatewayV2ApiGatewayManagedOverridesRouteOverrides
  :: ApiGatewayV2ApiGatewayManagedOverridesRouteOverrides
apiGatewayV2ApiGatewayManagedOverridesRouteOverrides  =
  ApiGatewayV2ApiGatewayManagedOverridesRouteOverrides
  { _apiGatewayV2ApiGatewayManagedOverridesRouteOverridesAuthorizationScopes = Nothing
  , _apiGatewayV2ApiGatewayManagedOverridesRouteOverridesAuthorizationType = Nothing
  , _apiGatewayV2ApiGatewayManagedOverridesRouteOverridesAuthorizerId = Nothing
  , _apiGatewayV2ApiGatewayManagedOverridesRouteOverridesOperationName = Nothing
  , _apiGatewayV2ApiGatewayManagedOverridesRouteOverridesTarget = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-apigatewaymanagedoverrides-routeoverrides.html#cfn-apigatewayv2-apigatewaymanagedoverrides-routeoverrides-authorizationscopes
agvagmoroAuthorizationScopes :: Lens' ApiGatewayV2ApiGatewayManagedOverridesRouteOverrides (Maybe (ValList Text))
agvagmoroAuthorizationScopes = lens _apiGatewayV2ApiGatewayManagedOverridesRouteOverridesAuthorizationScopes (\s a -> s { _apiGatewayV2ApiGatewayManagedOverridesRouteOverridesAuthorizationScopes = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-apigatewaymanagedoverrides-routeoverrides.html#cfn-apigatewayv2-apigatewaymanagedoverrides-routeoverrides-authorizationtype
agvagmoroAuthorizationType :: Lens' ApiGatewayV2ApiGatewayManagedOverridesRouteOverrides (Maybe (Val Text))
agvagmoroAuthorizationType = lens _apiGatewayV2ApiGatewayManagedOverridesRouteOverridesAuthorizationType (\s a -> s { _apiGatewayV2ApiGatewayManagedOverridesRouteOverridesAuthorizationType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-apigatewaymanagedoverrides-routeoverrides.html#cfn-apigatewayv2-apigatewaymanagedoverrides-routeoverrides-authorizerid
agvagmoroAuthorizerId :: Lens' ApiGatewayV2ApiGatewayManagedOverridesRouteOverrides (Maybe (Val Text))
agvagmoroAuthorizerId = lens _apiGatewayV2ApiGatewayManagedOverridesRouteOverridesAuthorizerId (\s a -> s { _apiGatewayV2ApiGatewayManagedOverridesRouteOverridesAuthorizerId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-apigatewaymanagedoverrides-routeoverrides.html#cfn-apigatewayv2-apigatewaymanagedoverrides-routeoverrides-operationname
agvagmoroOperationName :: Lens' ApiGatewayV2ApiGatewayManagedOverridesRouteOverrides (Maybe (Val Text))
agvagmoroOperationName = lens _apiGatewayV2ApiGatewayManagedOverridesRouteOverridesOperationName (\s a -> s { _apiGatewayV2ApiGatewayManagedOverridesRouteOverridesOperationName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-apigatewaymanagedoverrides-routeoverrides.html#cfn-apigatewayv2-apigatewaymanagedoverrides-routeoverrides-target
agvagmoroTarget :: Lens' ApiGatewayV2ApiGatewayManagedOverridesRouteOverrides (Maybe (Val Text))
agvagmoroTarget = lens _apiGatewayV2ApiGatewayManagedOverridesRouteOverridesTarget (\s a -> s { _apiGatewayV2ApiGatewayManagedOverridesRouteOverridesTarget = a })
