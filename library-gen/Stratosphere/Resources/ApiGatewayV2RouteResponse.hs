{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-routeresponse.html

module Stratosphere.Resources.ApiGatewayV2RouteResponse where

import Stratosphere.ResourceImports


-- | Full data type definition for ApiGatewayV2RouteResponse. See
-- 'apiGatewayV2RouteResponse' for a more convenient constructor.
data ApiGatewayV2RouteResponse =
  ApiGatewayV2RouteResponse
  { _apiGatewayV2RouteResponseApiId :: Val Text
  , _apiGatewayV2RouteResponseModelSelectionExpression :: Maybe (Val Text)
  , _apiGatewayV2RouteResponseResponseModels :: Maybe Object
  , _apiGatewayV2RouteResponseResponseParameters :: Maybe Object
  , _apiGatewayV2RouteResponseRouteId :: Val Text
  , _apiGatewayV2RouteResponseRouteResponseKey :: Val Text
  } deriving (Show, Eq)

instance ToResourceProperties ApiGatewayV2RouteResponse where
  toResourceProperties ApiGatewayV2RouteResponse{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::ApiGatewayV2::RouteResponse"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("ApiId",) . toJSON) _apiGatewayV2RouteResponseApiId
        , fmap (("ModelSelectionExpression",) . toJSON) _apiGatewayV2RouteResponseModelSelectionExpression
        , fmap (("ResponseModels",) . toJSON) _apiGatewayV2RouteResponseResponseModels
        , fmap (("ResponseParameters",) . toJSON) _apiGatewayV2RouteResponseResponseParameters
        , (Just . ("RouteId",) . toJSON) _apiGatewayV2RouteResponseRouteId
        , (Just . ("RouteResponseKey",) . toJSON) _apiGatewayV2RouteResponseRouteResponseKey
        ]
    }

-- | Constructor for 'ApiGatewayV2RouteResponse' containing required fields as
-- arguments.
apiGatewayV2RouteResponse
  :: Val Text -- ^ 'agvrrApiId'
  -> Val Text -- ^ 'agvrrRouteId'
  -> Val Text -- ^ 'agvrrRouteResponseKey'
  -> ApiGatewayV2RouteResponse
apiGatewayV2RouteResponse apiIdarg routeIdarg routeResponseKeyarg =
  ApiGatewayV2RouteResponse
  { _apiGatewayV2RouteResponseApiId = apiIdarg
  , _apiGatewayV2RouteResponseModelSelectionExpression = Nothing
  , _apiGatewayV2RouteResponseResponseModels = Nothing
  , _apiGatewayV2RouteResponseResponseParameters = Nothing
  , _apiGatewayV2RouteResponseRouteId = routeIdarg
  , _apiGatewayV2RouteResponseRouteResponseKey = routeResponseKeyarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-routeresponse.html#cfn-apigatewayv2-routeresponse-apiid
agvrrApiId :: Lens' ApiGatewayV2RouteResponse (Val Text)
agvrrApiId = lens _apiGatewayV2RouteResponseApiId (\s a -> s { _apiGatewayV2RouteResponseApiId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-routeresponse.html#cfn-apigatewayv2-routeresponse-modelselectionexpression
agvrrModelSelectionExpression :: Lens' ApiGatewayV2RouteResponse (Maybe (Val Text))
agvrrModelSelectionExpression = lens _apiGatewayV2RouteResponseModelSelectionExpression (\s a -> s { _apiGatewayV2RouteResponseModelSelectionExpression = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-routeresponse.html#cfn-apigatewayv2-routeresponse-responsemodels
agvrrResponseModels :: Lens' ApiGatewayV2RouteResponse (Maybe Object)
agvrrResponseModels = lens _apiGatewayV2RouteResponseResponseModels (\s a -> s { _apiGatewayV2RouteResponseResponseModels = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-routeresponse.html#cfn-apigatewayv2-routeresponse-responseparameters
agvrrResponseParameters :: Lens' ApiGatewayV2RouteResponse (Maybe Object)
agvrrResponseParameters = lens _apiGatewayV2RouteResponseResponseParameters (\s a -> s { _apiGatewayV2RouteResponseResponseParameters = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-routeresponse.html#cfn-apigatewayv2-routeresponse-routeid
agvrrRouteId :: Lens' ApiGatewayV2RouteResponse (Val Text)
agvrrRouteId = lens _apiGatewayV2RouteResponseRouteId (\s a -> s { _apiGatewayV2RouteResponseRouteId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-routeresponse.html#cfn-apigatewayv2-routeresponse-routeresponsekey
agvrrRouteResponseKey :: Lens' ApiGatewayV2RouteResponse (Val Text)
agvrrRouteResponseKey = lens _apiGatewayV2RouteResponseRouteResponseKey (\s a -> s { _apiGatewayV2RouteResponseRouteResponseKey = a })
