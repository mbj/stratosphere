{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-domainname-mutualtlsauthentication.html

module Stratosphere.ResourceProperties.ApiGatewayDomainNameMutualTlsAuthentication where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- ApiGatewayDomainNameMutualTlsAuthentication. See
-- 'apiGatewayDomainNameMutualTlsAuthentication' for a more convenient
-- constructor.
data ApiGatewayDomainNameMutualTlsAuthentication =
  ApiGatewayDomainNameMutualTlsAuthentication
  { _apiGatewayDomainNameMutualTlsAuthenticationTruststoreUri :: Maybe (Val Text)
  , _apiGatewayDomainNameMutualTlsAuthenticationTruststoreVersion :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON ApiGatewayDomainNameMutualTlsAuthentication where
  toJSON ApiGatewayDomainNameMutualTlsAuthentication{..} =
    object $
    catMaybes
    [ fmap (("TruststoreUri",) . toJSON) _apiGatewayDomainNameMutualTlsAuthenticationTruststoreUri
    , fmap (("TruststoreVersion",) . toJSON) _apiGatewayDomainNameMutualTlsAuthenticationTruststoreVersion
    ]

-- | Constructor for 'ApiGatewayDomainNameMutualTlsAuthentication' containing
-- required fields as arguments.
apiGatewayDomainNameMutualTlsAuthentication
  :: ApiGatewayDomainNameMutualTlsAuthentication
apiGatewayDomainNameMutualTlsAuthentication  =
  ApiGatewayDomainNameMutualTlsAuthentication
  { _apiGatewayDomainNameMutualTlsAuthenticationTruststoreUri = Nothing
  , _apiGatewayDomainNameMutualTlsAuthenticationTruststoreVersion = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-domainname-mutualtlsauthentication.html#cfn-apigateway-domainname-mutualtlsauthentication-truststoreuri
agdnmtaTruststoreUri :: Lens' ApiGatewayDomainNameMutualTlsAuthentication (Maybe (Val Text))
agdnmtaTruststoreUri = lens _apiGatewayDomainNameMutualTlsAuthenticationTruststoreUri (\s a -> s { _apiGatewayDomainNameMutualTlsAuthenticationTruststoreUri = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-domainname-mutualtlsauthentication.html#cfn-apigateway-domainname-mutualtlsauthentication-truststoreversion
agdnmtaTruststoreVersion :: Lens' ApiGatewayDomainNameMutualTlsAuthentication (Maybe (Val Text))
agdnmtaTruststoreVersion = lens _apiGatewayDomainNameMutualTlsAuthenticationTruststoreVersion (\s a -> s { _apiGatewayDomainNameMutualTlsAuthenticationTruststoreVersion = a })
