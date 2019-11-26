{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-authorizer-jwtconfiguration.html

module Stratosphere.ResourceProperties.ApiGatewayV2AuthorizerJWTConfiguration where

import Stratosphere.ResourceImports


-- | Full data type definition for ApiGatewayV2AuthorizerJWTConfiguration. See
-- 'apiGatewayV2AuthorizerJWTConfiguration' for a more convenient
-- constructor.
data ApiGatewayV2AuthorizerJWTConfiguration =
  ApiGatewayV2AuthorizerJWTConfiguration
  { _apiGatewayV2AuthorizerJWTConfigurationAudience :: Maybe (ValList Text)
  , _apiGatewayV2AuthorizerJWTConfigurationIssuer :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON ApiGatewayV2AuthorizerJWTConfiguration where
  toJSON ApiGatewayV2AuthorizerJWTConfiguration{..} =
    object $
    catMaybes
    [ fmap (("Audience",) . toJSON) _apiGatewayV2AuthorizerJWTConfigurationAudience
    , fmap (("Issuer",) . toJSON) _apiGatewayV2AuthorizerJWTConfigurationIssuer
    ]

-- | Constructor for 'ApiGatewayV2AuthorizerJWTConfiguration' containing
-- required fields as arguments.
apiGatewayV2AuthorizerJWTConfiguration
  :: ApiGatewayV2AuthorizerJWTConfiguration
apiGatewayV2AuthorizerJWTConfiguration  =
  ApiGatewayV2AuthorizerJWTConfiguration
  { _apiGatewayV2AuthorizerJWTConfigurationAudience = Nothing
  , _apiGatewayV2AuthorizerJWTConfigurationIssuer = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-authorizer-jwtconfiguration.html#cfn-apigatewayv2-authorizer-jwtconfiguration-audience
agvajwtcAudience :: Lens' ApiGatewayV2AuthorizerJWTConfiguration (Maybe (ValList Text))
agvajwtcAudience = lens _apiGatewayV2AuthorizerJWTConfigurationAudience (\s a -> s { _apiGatewayV2AuthorizerJWTConfigurationAudience = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-authorizer-jwtconfiguration.html#cfn-apigatewayv2-authorizer-jwtconfiguration-issuer
agvajwtcIssuer :: Lens' ApiGatewayV2AuthorizerJWTConfiguration (Maybe (Val Text))
agvajwtcIssuer = lens _apiGatewayV2AuthorizerJWTConfigurationIssuer (\s a -> s { _apiGatewayV2AuthorizerJWTConfigurationIssuer = a })
