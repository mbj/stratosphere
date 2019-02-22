{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-route.html

module Stratosphere.Resources.ApiGatewayV2Route where

import Stratosphere.ResourceImports


-- | Full data type definition for ApiGatewayV2Route. See 'apiGatewayV2Route'
-- for a more convenient constructor.
data ApiGatewayV2Route =
  ApiGatewayV2Route
  { _apiGatewayV2RouteApiId :: Val Text
  , _apiGatewayV2RouteApiKeyRequired :: Maybe (Val Bool)
  , _apiGatewayV2RouteAuthorizationScopes :: Maybe (ValList Text)
  , _apiGatewayV2RouteAuthorizationType :: Maybe (Val Text)
  , _apiGatewayV2RouteAuthorizerId :: Maybe (Val Text)
  , _apiGatewayV2RouteModelSelectionExpression :: Maybe (Val Text)
  , _apiGatewayV2RouteOperationName :: Maybe (Val Text)
  , _apiGatewayV2RouteRequestModels :: Maybe Object
  , _apiGatewayV2RouteRequestParameters :: Maybe Object
  , _apiGatewayV2RouteRouteKey :: Val Text
  , _apiGatewayV2RouteRouteResponseSelectionExpression :: Maybe (Val Text)
  , _apiGatewayV2RouteTarget :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON ApiGatewayV2Route where
  toJSON ApiGatewayV2Route{..} =
    object $
    catMaybes
    [ (Just . ("ApiId",) . toJSON) _apiGatewayV2RouteApiId
    , fmap (("ApiKeyRequired",) . toJSON . fmap Bool') _apiGatewayV2RouteApiKeyRequired
    , fmap (("AuthorizationScopes",) . toJSON) _apiGatewayV2RouteAuthorizationScopes
    , fmap (("AuthorizationType",) . toJSON) _apiGatewayV2RouteAuthorizationType
    , fmap (("AuthorizerId",) . toJSON) _apiGatewayV2RouteAuthorizerId
    , fmap (("ModelSelectionExpression",) . toJSON) _apiGatewayV2RouteModelSelectionExpression
    , fmap (("OperationName",) . toJSON) _apiGatewayV2RouteOperationName
    , fmap (("RequestModels",) . toJSON) _apiGatewayV2RouteRequestModels
    , fmap (("RequestParameters",) . toJSON) _apiGatewayV2RouteRequestParameters
    , (Just . ("RouteKey",) . toJSON) _apiGatewayV2RouteRouteKey
    , fmap (("RouteResponseSelectionExpression",) . toJSON) _apiGatewayV2RouteRouteResponseSelectionExpression
    , fmap (("Target",) . toJSON) _apiGatewayV2RouteTarget
    ]

instance FromJSON ApiGatewayV2Route where
  parseJSON (Object obj) =
    ApiGatewayV2Route <$>
      (obj .: "ApiId") <*>
      fmap (fmap (fmap unBool')) (obj .:? "ApiKeyRequired") <*>
      (obj .:? "AuthorizationScopes") <*>
      (obj .:? "AuthorizationType") <*>
      (obj .:? "AuthorizerId") <*>
      (obj .:? "ModelSelectionExpression") <*>
      (obj .:? "OperationName") <*>
      (obj .:? "RequestModels") <*>
      (obj .:? "RequestParameters") <*>
      (obj .: "RouteKey") <*>
      (obj .:? "RouteResponseSelectionExpression") <*>
      (obj .:? "Target")
  parseJSON _ = mempty

-- | Constructor for 'ApiGatewayV2Route' containing required fields as
-- arguments.
apiGatewayV2Route
  :: Val Text -- ^ 'agvrApiId'
  -> Val Text -- ^ 'agvrRouteKey'
  -> ApiGatewayV2Route
apiGatewayV2Route apiIdarg routeKeyarg =
  ApiGatewayV2Route
  { _apiGatewayV2RouteApiId = apiIdarg
  , _apiGatewayV2RouteApiKeyRequired = Nothing
  , _apiGatewayV2RouteAuthorizationScopes = Nothing
  , _apiGatewayV2RouteAuthorizationType = Nothing
  , _apiGatewayV2RouteAuthorizerId = Nothing
  , _apiGatewayV2RouteModelSelectionExpression = Nothing
  , _apiGatewayV2RouteOperationName = Nothing
  , _apiGatewayV2RouteRequestModels = Nothing
  , _apiGatewayV2RouteRequestParameters = Nothing
  , _apiGatewayV2RouteRouteKey = routeKeyarg
  , _apiGatewayV2RouteRouteResponseSelectionExpression = Nothing
  , _apiGatewayV2RouteTarget = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-route.html#cfn-apigatewayv2-route-apiid
agvrApiId :: Lens' ApiGatewayV2Route (Val Text)
agvrApiId = lens _apiGatewayV2RouteApiId (\s a -> s { _apiGatewayV2RouteApiId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-route.html#cfn-apigatewayv2-route-apikeyrequired
agvrApiKeyRequired :: Lens' ApiGatewayV2Route (Maybe (Val Bool))
agvrApiKeyRequired = lens _apiGatewayV2RouteApiKeyRequired (\s a -> s { _apiGatewayV2RouteApiKeyRequired = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-route.html#cfn-apigatewayv2-route-authorizationscopes
agvrAuthorizationScopes :: Lens' ApiGatewayV2Route (Maybe (ValList Text))
agvrAuthorizationScopes = lens _apiGatewayV2RouteAuthorizationScopes (\s a -> s { _apiGatewayV2RouteAuthorizationScopes = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-route.html#cfn-apigatewayv2-route-authorizationtype
agvrAuthorizationType :: Lens' ApiGatewayV2Route (Maybe (Val Text))
agvrAuthorizationType = lens _apiGatewayV2RouteAuthorizationType (\s a -> s { _apiGatewayV2RouteAuthorizationType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-route.html#cfn-apigatewayv2-route-authorizerid
agvrAuthorizerId :: Lens' ApiGatewayV2Route (Maybe (Val Text))
agvrAuthorizerId = lens _apiGatewayV2RouteAuthorizerId (\s a -> s { _apiGatewayV2RouteAuthorizerId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-route.html#cfn-apigatewayv2-route-modelselectionexpression
agvrModelSelectionExpression :: Lens' ApiGatewayV2Route (Maybe (Val Text))
agvrModelSelectionExpression = lens _apiGatewayV2RouteModelSelectionExpression (\s a -> s { _apiGatewayV2RouteModelSelectionExpression = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-route.html#cfn-apigatewayv2-route-operationname
agvrOperationName :: Lens' ApiGatewayV2Route (Maybe (Val Text))
agvrOperationName = lens _apiGatewayV2RouteOperationName (\s a -> s { _apiGatewayV2RouteOperationName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-route.html#cfn-apigatewayv2-route-requestmodels
agvrRequestModels :: Lens' ApiGatewayV2Route (Maybe Object)
agvrRequestModels = lens _apiGatewayV2RouteRequestModels (\s a -> s { _apiGatewayV2RouteRequestModels = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-route.html#cfn-apigatewayv2-route-requestparameters
agvrRequestParameters :: Lens' ApiGatewayV2Route (Maybe Object)
agvrRequestParameters = lens _apiGatewayV2RouteRequestParameters (\s a -> s { _apiGatewayV2RouteRequestParameters = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-route.html#cfn-apigatewayv2-route-routekey
agvrRouteKey :: Lens' ApiGatewayV2Route (Val Text)
agvrRouteKey = lens _apiGatewayV2RouteRouteKey (\s a -> s { _apiGatewayV2RouteRouteKey = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-route.html#cfn-apigatewayv2-route-routeresponseselectionexpression
agvrRouteResponseSelectionExpression :: Lens' ApiGatewayV2Route (Maybe (Val Text))
agvrRouteResponseSelectionExpression = lens _apiGatewayV2RouteRouteResponseSelectionExpression (\s a -> s { _apiGatewayV2RouteRouteResponseSelectionExpression = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-route.html#cfn-apigatewayv2-route-target
agvrTarget :: Lens' ApiGatewayV2Route (Maybe (Val Text))
agvrTarget = lens _apiGatewayV2RouteTarget (\s a -> s { _apiGatewayV2RouteTarget = a })
