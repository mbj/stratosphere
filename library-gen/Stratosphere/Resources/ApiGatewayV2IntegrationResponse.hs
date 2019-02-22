{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-integrationresponse.html

module Stratosphere.Resources.ApiGatewayV2IntegrationResponse where

import Stratosphere.ResourceImports


-- | Full data type definition for ApiGatewayV2IntegrationResponse. See
-- 'apiGatewayV2IntegrationResponse' for a more convenient constructor.
data ApiGatewayV2IntegrationResponse =
  ApiGatewayV2IntegrationResponse
  { _apiGatewayV2IntegrationResponseApiId :: Val Text
  , _apiGatewayV2IntegrationResponseContentHandlingStrategy :: Maybe (Val Text)
  , _apiGatewayV2IntegrationResponseIntegrationId :: Val Text
  , _apiGatewayV2IntegrationResponseIntegrationResponseKey :: Val Text
  , _apiGatewayV2IntegrationResponseResponseParameters :: Maybe Object
  , _apiGatewayV2IntegrationResponseResponseTemplates :: Maybe Object
  , _apiGatewayV2IntegrationResponseTemplateSelectionExpression :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON ApiGatewayV2IntegrationResponse where
  toJSON ApiGatewayV2IntegrationResponse{..} =
    object $
    catMaybes
    [ (Just . ("ApiId",) . toJSON) _apiGatewayV2IntegrationResponseApiId
    , fmap (("ContentHandlingStrategy",) . toJSON) _apiGatewayV2IntegrationResponseContentHandlingStrategy
    , (Just . ("IntegrationId",) . toJSON) _apiGatewayV2IntegrationResponseIntegrationId
    , (Just . ("IntegrationResponseKey",) . toJSON) _apiGatewayV2IntegrationResponseIntegrationResponseKey
    , fmap (("ResponseParameters",) . toJSON) _apiGatewayV2IntegrationResponseResponseParameters
    , fmap (("ResponseTemplates",) . toJSON) _apiGatewayV2IntegrationResponseResponseTemplates
    , fmap (("TemplateSelectionExpression",) . toJSON) _apiGatewayV2IntegrationResponseTemplateSelectionExpression
    ]

instance FromJSON ApiGatewayV2IntegrationResponse where
  parseJSON (Object obj) =
    ApiGatewayV2IntegrationResponse <$>
      (obj .: "ApiId") <*>
      (obj .:? "ContentHandlingStrategy") <*>
      (obj .: "IntegrationId") <*>
      (obj .: "IntegrationResponseKey") <*>
      (obj .:? "ResponseParameters") <*>
      (obj .:? "ResponseTemplates") <*>
      (obj .:? "TemplateSelectionExpression")
  parseJSON _ = mempty

-- | Constructor for 'ApiGatewayV2IntegrationResponse' containing required
-- fields as arguments.
apiGatewayV2IntegrationResponse
  :: Val Text -- ^ 'agvirApiId'
  -> Val Text -- ^ 'agvirIntegrationId'
  -> Val Text -- ^ 'agvirIntegrationResponseKey'
  -> ApiGatewayV2IntegrationResponse
apiGatewayV2IntegrationResponse apiIdarg integrationIdarg integrationResponseKeyarg =
  ApiGatewayV2IntegrationResponse
  { _apiGatewayV2IntegrationResponseApiId = apiIdarg
  , _apiGatewayV2IntegrationResponseContentHandlingStrategy = Nothing
  , _apiGatewayV2IntegrationResponseIntegrationId = integrationIdarg
  , _apiGatewayV2IntegrationResponseIntegrationResponseKey = integrationResponseKeyarg
  , _apiGatewayV2IntegrationResponseResponseParameters = Nothing
  , _apiGatewayV2IntegrationResponseResponseTemplates = Nothing
  , _apiGatewayV2IntegrationResponseTemplateSelectionExpression = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-integrationresponse.html#cfn-apigatewayv2-integrationresponse-apiid
agvirApiId :: Lens' ApiGatewayV2IntegrationResponse (Val Text)
agvirApiId = lens _apiGatewayV2IntegrationResponseApiId (\s a -> s { _apiGatewayV2IntegrationResponseApiId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-integrationresponse.html#cfn-apigatewayv2-integrationresponse-contenthandlingstrategy
agvirContentHandlingStrategy :: Lens' ApiGatewayV2IntegrationResponse (Maybe (Val Text))
agvirContentHandlingStrategy = lens _apiGatewayV2IntegrationResponseContentHandlingStrategy (\s a -> s { _apiGatewayV2IntegrationResponseContentHandlingStrategy = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-integrationresponse.html#cfn-apigatewayv2-integrationresponse-integrationid
agvirIntegrationId :: Lens' ApiGatewayV2IntegrationResponse (Val Text)
agvirIntegrationId = lens _apiGatewayV2IntegrationResponseIntegrationId (\s a -> s { _apiGatewayV2IntegrationResponseIntegrationId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-integrationresponse.html#cfn-apigatewayv2-integrationresponse-integrationresponsekey
agvirIntegrationResponseKey :: Lens' ApiGatewayV2IntegrationResponse (Val Text)
agvirIntegrationResponseKey = lens _apiGatewayV2IntegrationResponseIntegrationResponseKey (\s a -> s { _apiGatewayV2IntegrationResponseIntegrationResponseKey = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-integrationresponse.html#cfn-apigatewayv2-integrationresponse-responseparameters
agvirResponseParameters :: Lens' ApiGatewayV2IntegrationResponse (Maybe Object)
agvirResponseParameters = lens _apiGatewayV2IntegrationResponseResponseParameters (\s a -> s { _apiGatewayV2IntegrationResponseResponseParameters = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-integrationresponse.html#cfn-apigatewayv2-integrationresponse-responsetemplates
agvirResponseTemplates :: Lens' ApiGatewayV2IntegrationResponse (Maybe Object)
agvirResponseTemplates = lens _apiGatewayV2IntegrationResponseResponseTemplates (\s a -> s { _apiGatewayV2IntegrationResponseResponseTemplates = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-integrationresponse.html#cfn-apigatewayv2-integrationresponse-templateselectionexpression
agvirTemplateSelectionExpression :: Lens' ApiGatewayV2IntegrationResponse (Maybe (Val Text))
agvirTemplateSelectionExpression = lens _apiGatewayV2IntegrationResponseTemplateSelectionExpression (\s a -> s { _apiGatewayV2IntegrationResponseTemplateSelectionExpression = a })
