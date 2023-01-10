
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apitgateway-method-methodresponse.html

module Stratosphere.ResourceProperties.ApiGatewayMethodMethodResponse where

import Stratosphere.ResourceImports


-- | Full data type definition for ApiGatewayMethodMethodResponse. See
-- 'apiGatewayMethodMethodResponse' for a more convenient constructor.
data ApiGatewayMethodMethodResponse =
  ApiGatewayMethodMethodResponse
  { _apiGatewayMethodMethodResponseResponseModels :: Maybe Object
  , _apiGatewayMethodMethodResponseResponseParameters :: Maybe Object
  , _apiGatewayMethodMethodResponseStatusCode :: Val Text
  } deriving (Show, Eq)

instance ToJSON ApiGatewayMethodMethodResponse where
  toJSON ApiGatewayMethodMethodResponse{..} =
    object $
    catMaybes
    [ fmap (("ResponseModels",) . toJSON) _apiGatewayMethodMethodResponseResponseModels
    , fmap (("ResponseParameters",) . toJSON) _apiGatewayMethodMethodResponseResponseParameters
    , (Just . ("StatusCode",) . toJSON) _apiGatewayMethodMethodResponseStatusCode
    ]

-- | Constructor for 'ApiGatewayMethodMethodResponse' containing required
-- fields as arguments.
apiGatewayMethodMethodResponse
  :: Val Text -- ^ 'agmmrStatusCode'
  -> ApiGatewayMethodMethodResponse
apiGatewayMethodMethodResponse statusCodearg =
  ApiGatewayMethodMethodResponse
  { _apiGatewayMethodMethodResponseResponseModels = Nothing
  , _apiGatewayMethodMethodResponseResponseParameters = Nothing
  , _apiGatewayMethodMethodResponseStatusCode = statusCodearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apitgateway-method-methodresponse.html#cfn-apigateway-method-methodresponse-responsemodels
agmmrResponseModels :: Lens' ApiGatewayMethodMethodResponse (Maybe Object)
agmmrResponseModels = lens _apiGatewayMethodMethodResponseResponseModels (\s a -> s { _apiGatewayMethodMethodResponseResponseModels = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apitgateway-method-methodresponse.html#cfn-apigateway-method-methodresponse-responseparameters
agmmrResponseParameters :: Lens' ApiGatewayMethodMethodResponse (Maybe Object)
agmmrResponseParameters = lens _apiGatewayMethodMethodResponseResponseParameters (\s a -> s { _apiGatewayMethodMethodResponseResponseParameters = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apitgateway-method-methodresponse.html#cfn-apigateway-method-methodresponse-statuscode
agmmrStatusCode :: Lens' ApiGatewayMethodMethodResponse (Val Text)
agmmrStatusCode = lens _apiGatewayMethodMethodResponseStatusCode (\s a -> s { _apiGatewayMethodMethodResponseStatusCode = a })
