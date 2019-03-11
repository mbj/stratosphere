{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-domainname.html

module Stratosphere.Resources.ApiGatewayDomainName where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.ApiGatewayDomainNameEndpointConfiguration

-- | Full data type definition for ApiGatewayDomainName. See
-- 'apiGatewayDomainName' for a more convenient constructor.
data ApiGatewayDomainName =
  ApiGatewayDomainName
  { _apiGatewayDomainNameCertificateArn :: Maybe (Val Text)
  , _apiGatewayDomainNameDomainName :: Val Text
  , _apiGatewayDomainNameEndpointConfiguration :: Maybe ApiGatewayDomainNameEndpointConfiguration
  , _apiGatewayDomainNameRegionalCertificateArn :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON ApiGatewayDomainName where
  toJSON ApiGatewayDomainName{..} =
    object $
    catMaybes
    [ fmap (("CertificateArn",) . toJSON) _apiGatewayDomainNameCertificateArn
    , (Just . ("DomainName",) . toJSON) _apiGatewayDomainNameDomainName
    , fmap (("EndpointConfiguration",) . toJSON) _apiGatewayDomainNameEndpointConfiguration
    , fmap (("RegionalCertificateArn",) . toJSON) _apiGatewayDomainNameRegionalCertificateArn
    ]

-- | Constructor for 'ApiGatewayDomainName' containing required fields as
-- arguments.
apiGatewayDomainName
  :: Val Text -- ^ 'agdnDomainName'
  -> ApiGatewayDomainName
apiGatewayDomainName domainNamearg =
  ApiGatewayDomainName
  { _apiGatewayDomainNameCertificateArn = Nothing
  , _apiGatewayDomainNameDomainName = domainNamearg
  , _apiGatewayDomainNameEndpointConfiguration = Nothing
  , _apiGatewayDomainNameRegionalCertificateArn = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-domainname.html#cfn-apigateway-domainname-certificatearn
agdnCertificateArn :: Lens' ApiGatewayDomainName (Maybe (Val Text))
agdnCertificateArn = lens _apiGatewayDomainNameCertificateArn (\s a -> s { _apiGatewayDomainNameCertificateArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-domainname.html#cfn-apigateway-domainname-domainname
agdnDomainName :: Lens' ApiGatewayDomainName (Val Text)
agdnDomainName = lens _apiGatewayDomainNameDomainName (\s a -> s { _apiGatewayDomainNameDomainName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-domainname.html#cfn-apigateway-domainname-endpointconfiguration
agdnEndpointConfiguration :: Lens' ApiGatewayDomainName (Maybe ApiGatewayDomainNameEndpointConfiguration)
agdnEndpointConfiguration = lens _apiGatewayDomainNameEndpointConfiguration (\s a -> s { _apiGatewayDomainNameEndpointConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-domainname.html#cfn-apigateway-domainname-regionalcertificatearn
agdnRegionalCertificateArn :: Lens' ApiGatewayDomainName (Maybe (Val Text))
agdnRegionalCertificateArn = lens _apiGatewayDomainNameRegionalCertificateArn (\s a -> s { _apiGatewayDomainNameRegionalCertificateArn = a })
