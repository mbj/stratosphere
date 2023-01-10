
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-api-cors.html

module Stratosphere.ResourceProperties.ApiGatewayV2ApiCors where

import Stratosphere.ResourceImports


-- | Full data type definition for ApiGatewayV2ApiCors. See
-- 'apiGatewayV2ApiCors' for a more convenient constructor.
data ApiGatewayV2ApiCors =
  ApiGatewayV2ApiCors
  { _apiGatewayV2ApiCorsAllowCredentials :: Maybe (Val Bool)
  , _apiGatewayV2ApiCorsAllowHeaders :: Maybe (ValList Text)
  , _apiGatewayV2ApiCorsAllowMethods :: Maybe (ValList Text)
  , _apiGatewayV2ApiCorsAllowOrigins :: Maybe (ValList Text)
  , _apiGatewayV2ApiCorsExposeHeaders :: Maybe (ValList Text)
  , _apiGatewayV2ApiCorsMaxAge :: Maybe (Val Integer)
  } deriving (Show, Eq)

instance ToJSON ApiGatewayV2ApiCors where
  toJSON ApiGatewayV2ApiCors{..} =
    object $
    catMaybes
    [ fmap (("AllowCredentials",) . toJSON) _apiGatewayV2ApiCorsAllowCredentials
    , fmap (("AllowHeaders",) . toJSON) _apiGatewayV2ApiCorsAllowHeaders
    , fmap (("AllowMethods",) . toJSON) _apiGatewayV2ApiCorsAllowMethods
    , fmap (("AllowOrigins",) . toJSON) _apiGatewayV2ApiCorsAllowOrigins
    , fmap (("ExposeHeaders",) . toJSON) _apiGatewayV2ApiCorsExposeHeaders
    , fmap (("MaxAge",) . toJSON) _apiGatewayV2ApiCorsMaxAge
    ]

-- | Constructor for 'ApiGatewayV2ApiCors' containing required fields as
-- arguments.
apiGatewayV2ApiCors
  :: ApiGatewayV2ApiCors
apiGatewayV2ApiCors  =
  ApiGatewayV2ApiCors
  { _apiGatewayV2ApiCorsAllowCredentials = Nothing
  , _apiGatewayV2ApiCorsAllowHeaders = Nothing
  , _apiGatewayV2ApiCorsAllowMethods = Nothing
  , _apiGatewayV2ApiCorsAllowOrigins = Nothing
  , _apiGatewayV2ApiCorsExposeHeaders = Nothing
  , _apiGatewayV2ApiCorsMaxAge = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-api-cors.html#cfn-apigatewayv2-api-cors-allowcredentials
agvacAllowCredentials :: Lens' ApiGatewayV2ApiCors (Maybe (Val Bool))
agvacAllowCredentials = lens _apiGatewayV2ApiCorsAllowCredentials (\s a -> s { _apiGatewayV2ApiCorsAllowCredentials = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-api-cors.html#cfn-apigatewayv2-api-cors-allowheaders
agvacAllowHeaders :: Lens' ApiGatewayV2ApiCors (Maybe (ValList Text))
agvacAllowHeaders = lens _apiGatewayV2ApiCorsAllowHeaders (\s a -> s { _apiGatewayV2ApiCorsAllowHeaders = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-api-cors.html#cfn-apigatewayv2-api-cors-allowmethods
agvacAllowMethods :: Lens' ApiGatewayV2ApiCors (Maybe (ValList Text))
agvacAllowMethods = lens _apiGatewayV2ApiCorsAllowMethods (\s a -> s { _apiGatewayV2ApiCorsAllowMethods = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-api-cors.html#cfn-apigatewayv2-api-cors-alloworigins
agvacAllowOrigins :: Lens' ApiGatewayV2ApiCors (Maybe (ValList Text))
agvacAllowOrigins = lens _apiGatewayV2ApiCorsAllowOrigins (\s a -> s { _apiGatewayV2ApiCorsAllowOrigins = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-api-cors.html#cfn-apigatewayv2-api-cors-exposeheaders
agvacExposeHeaders :: Lens' ApiGatewayV2ApiCors (Maybe (ValList Text))
agvacExposeHeaders = lens _apiGatewayV2ApiCorsExposeHeaders (\s a -> s { _apiGatewayV2ApiCorsExposeHeaders = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-api-cors.html#cfn-apigatewayv2-api-cors-maxage
agvacMaxAge :: Lens' ApiGatewayV2ApiCors (Maybe (Val Integer))
agvacMaxAge = lens _apiGatewayV2ApiCorsMaxAge (\s a -> s { _apiGatewayV2ApiCorsMaxAge = a })
