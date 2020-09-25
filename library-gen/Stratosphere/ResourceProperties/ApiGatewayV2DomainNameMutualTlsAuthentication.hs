{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-domainname-mutualtlsauthentication.html

module Stratosphere.ResourceProperties.ApiGatewayV2DomainNameMutualTlsAuthentication where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- ApiGatewayV2DomainNameMutualTlsAuthentication. See
-- 'apiGatewayV2DomainNameMutualTlsAuthentication' for a more convenient
-- constructor.
data ApiGatewayV2DomainNameMutualTlsAuthentication =
  ApiGatewayV2DomainNameMutualTlsAuthentication
  { _apiGatewayV2DomainNameMutualTlsAuthenticationTruststoreUri :: Maybe (Val Text)
  , _apiGatewayV2DomainNameMutualTlsAuthenticationTruststoreVersion :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON ApiGatewayV2DomainNameMutualTlsAuthentication where
  toJSON ApiGatewayV2DomainNameMutualTlsAuthentication{..} =
    object $
    catMaybes
    [ fmap (("TruststoreUri",) . toJSON) _apiGatewayV2DomainNameMutualTlsAuthenticationTruststoreUri
    , fmap (("TruststoreVersion",) . toJSON) _apiGatewayV2DomainNameMutualTlsAuthenticationTruststoreVersion
    ]

-- | Constructor for 'ApiGatewayV2DomainNameMutualTlsAuthentication'
-- containing required fields as arguments.
apiGatewayV2DomainNameMutualTlsAuthentication
  :: ApiGatewayV2DomainNameMutualTlsAuthentication
apiGatewayV2DomainNameMutualTlsAuthentication  =
  ApiGatewayV2DomainNameMutualTlsAuthentication
  { _apiGatewayV2DomainNameMutualTlsAuthenticationTruststoreUri = Nothing
  , _apiGatewayV2DomainNameMutualTlsAuthenticationTruststoreVersion = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-domainname-mutualtlsauthentication.html#cfn-apigatewayv2-domainname-mutualtlsauthentication-truststoreuri
agvdnmtaTruststoreUri :: Lens' ApiGatewayV2DomainNameMutualTlsAuthentication (Maybe (Val Text))
agvdnmtaTruststoreUri = lens _apiGatewayV2DomainNameMutualTlsAuthenticationTruststoreUri (\s a -> s { _apiGatewayV2DomainNameMutualTlsAuthenticationTruststoreUri = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-domainname-mutualtlsauthentication.html#cfn-apigatewayv2-domainname-mutualtlsauthentication-truststoreversion
agvdnmtaTruststoreVersion :: Lens' ApiGatewayV2DomainNameMutualTlsAuthentication (Maybe (Val Text))
agvdnmtaTruststoreVersion = lens _apiGatewayV2DomainNameMutualTlsAuthenticationTruststoreVersion (\s a -> s { _apiGatewayV2DomainNameMutualTlsAuthenticationTruststoreVersion = a })
