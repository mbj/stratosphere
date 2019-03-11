{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-api.html

module Stratosphere.Resources.ApiGatewayV2Api where

import Stratosphere.ResourceImports


-- | Full data type definition for ApiGatewayV2Api. See 'apiGatewayV2Api' for
-- a more convenient constructor.
data ApiGatewayV2Api =
  ApiGatewayV2Api
  { _apiGatewayV2ApiApiKeySelectionExpression :: Maybe (Val Text)
  , _apiGatewayV2ApiDescription :: Maybe (Val Text)
  , _apiGatewayV2ApiDisableSchemaValidation :: Maybe (Val Bool)
  , _apiGatewayV2ApiName :: Val Text
  , _apiGatewayV2ApiProtocolType :: Val Text
  , _apiGatewayV2ApiRouteSelectionExpression :: Val Text
  , _apiGatewayV2ApiVersion :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON ApiGatewayV2Api where
  toJSON ApiGatewayV2Api{..} =
    object $
    catMaybes
    [ fmap (("ApiKeySelectionExpression",) . toJSON) _apiGatewayV2ApiApiKeySelectionExpression
    , fmap (("Description",) . toJSON) _apiGatewayV2ApiDescription
    , fmap (("DisableSchemaValidation",) . toJSON . fmap Bool') _apiGatewayV2ApiDisableSchemaValidation
    , (Just . ("Name",) . toJSON) _apiGatewayV2ApiName
    , (Just . ("ProtocolType",) . toJSON) _apiGatewayV2ApiProtocolType
    , (Just . ("RouteSelectionExpression",) . toJSON) _apiGatewayV2ApiRouteSelectionExpression
    , fmap (("Version",) . toJSON) _apiGatewayV2ApiVersion
    ]

-- | Constructor for 'ApiGatewayV2Api' containing required fields as
-- arguments.
apiGatewayV2Api
  :: Val Text -- ^ 'agvapName'
  -> Val Text -- ^ 'agvapProtocolType'
  -> Val Text -- ^ 'agvapRouteSelectionExpression'
  -> ApiGatewayV2Api
apiGatewayV2Api namearg protocolTypearg routeSelectionExpressionarg =
  ApiGatewayV2Api
  { _apiGatewayV2ApiApiKeySelectionExpression = Nothing
  , _apiGatewayV2ApiDescription = Nothing
  , _apiGatewayV2ApiDisableSchemaValidation = Nothing
  , _apiGatewayV2ApiName = namearg
  , _apiGatewayV2ApiProtocolType = protocolTypearg
  , _apiGatewayV2ApiRouteSelectionExpression = routeSelectionExpressionarg
  , _apiGatewayV2ApiVersion = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-api.html#cfn-apigatewayv2-api-apikeyselectionexpression
agvapApiKeySelectionExpression :: Lens' ApiGatewayV2Api (Maybe (Val Text))
agvapApiKeySelectionExpression = lens _apiGatewayV2ApiApiKeySelectionExpression (\s a -> s { _apiGatewayV2ApiApiKeySelectionExpression = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-api.html#cfn-apigatewayv2-api-description
agvapDescription :: Lens' ApiGatewayV2Api (Maybe (Val Text))
agvapDescription = lens _apiGatewayV2ApiDescription (\s a -> s { _apiGatewayV2ApiDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-api.html#cfn-apigatewayv2-api-disableschemavalidation
agvapDisableSchemaValidation :: Lens' ApiGatewayV2Api (Maybe (Val Bool))
agvapDisableSchemaValidation = lens _apiGatewayV2ApiDisableSchemaValidation (\s a -> s { _apiGatewayV2ApiDisableSchemaValidation = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-api.html#cfn-apigatewayv2-api-name
agvapName :: Lens' ApiGatewayV2Api (Val Text)
agvapName = lens _apiGatewayV2ApiName (\s a -> s { _apiGatewayV2ApiName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-api.html#cfn-apigatewayv2-api-protocoltype
agvapProtocolType :: Lens' ApiGatewayV2Api (Val Text)
agvapProtocolType = lens _apiGatewayV2ApiProtocolType (\s a -> s { _apiGatewayV2ApiProtocolType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-api.html#cfn-apigatewayv2-api-routeselectionexpression
agvapRouteSelectionExpression :: Lens' ApiGatewayV2Api (Val Text)
agvapRouteSelectionExpression = lens _apiGatewayV2ApiRouteSelectionExpression (\s a -> s { _apiGatewayV2ApiRouteSelectionExpression = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-api.html#cfn-apigatewayv2-api-version
agvapVersion :: Lens' ApiGatewayV2Api (Maybe (Val Text))
agvapVersion = lens _apiGatewayV2ApiVersion (\s a -> s { _apiGatewayV2ApiVersion = a })
