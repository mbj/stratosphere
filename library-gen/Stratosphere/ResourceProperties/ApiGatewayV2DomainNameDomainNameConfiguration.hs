{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-domainname-domainnameconfiguration.html

module Stratosphere.ResourceProperties.ApiGatewayV2DomainNameDomainNameConfiguration where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- ApiGatewayV2DomainNameDomainNameConfiguration. See
-- 'apiGatewayV2DomainNameDomainNameConfiguration' for a more convenient
-- constructor.
data ApiGatewayV2DomainNameDomainNameConfiguration =
  ApiGatewayV2DomainNameDomainNameConfiguration
  { _apiGatewayV2DomainNameDomainNameConfigurationCertificateArn :: Maybe (Val Text)
  , _apiGatewayV2DomainNameDomainNameConfigurationCertificateName :: Maybe (Val Text)
  , _apiGatewayV2DomainNameDomainNameConfigurationEndpointType :: Maybe (Val Text)
  , _apiGatewayV2DomainNameDomainNameConfigurationSecurityPolicy :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON ApiGatewayV2DomainNameDomainNameConfiguration where
  toJSON ApiGatewayV2DomainNameDomainNameConfiguration{..} =
    object $
    catMaybes
    [ fmap (("CertificateArn",) . toJSON) _apiGatewayV2DomainNameDomainNameConfigurationCertificateArn
    , fmap (("CertificateName",) . toJSON) _apiGatewayV2DomainNameDomainNameConfigurationCertificateName
    , fmap (("EndpointType",) . toJSON) _apiGatewayV2DomainNameDomainNameConfigurationEndpointType
    , fmap (("SecurityPolicy",) . toJSON) _apiGatewayV2DomainNameDomainNameConfigurationSecurityPolicy
    ]

-- | Constructor for 'ApiGatewayV2DomainNameDomainNameConfiguration'
-- containing required fields as arguments.
apiGatewayV2DomainNameDomainNameConfiguration
  :: ApiGatewayV2DomainNameDomainNameConfiguration
apiGatewayV2DomainNameDomainNameConfiguration  =
  ApiGatewayV2DomainNameDomainNameConfiguration
  { _apiGatewayV2DomainNameDomainNameConfigurationCertificateArn = Nothing
  , _apiGatewayV2DomainNameDomainNameConfigurationCertificateName = Nothing
  , _apiGatewayV2DomainNameDomainNameConfigurationEndpointType = Nothing
  , _apiGatewayV2DomainNameDomainNameConfigurationSecurityPolicy = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-domainname-domainnameconfiguration.html#cfn-apigatewayv2-domainname-domainnameconfiguration-certificatearn
agvdndncCertificateArn :: Lens' ApiGatewayV2DomainNameDomainNameConfiguration (Maybe (Val Text))
agvdndncCertificateArn = lens _apiGatewayV2DomainNameDomainNameConfigurationCertificateArn (\s a -> s { _apiGatewayV2DomainNameDomainNameConfigurationCertificateArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-domainname-domainnameconfiguration.html#cfn-apigatewayv2-domainname-domainnameconfiguration-certificatename
agvdndncCertificateName :: Lens' ApiGatewayV2DomainNameDomainNameConfiguration (Maybe (Val Text))
agvdndncCertificateName = lens _apiGatewayV2DomainNameDomainNameConfigurationCertificateName (\s a -> s { _apiGatewayV2DomainNameDomainNameConfigurationCertificateName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-domainname-domainnameconfiguration.html#cfn-apigatewayv2-domainname-domainnameconfiguration-endpointtype
agvdndncEndpointType :: Lens' ApiGatewayV2DomainNameDomainNameConfiguration (Maybe (Val Text))
agvdndncEndpointType = lens _apiGatewayV2DomainNameDomainNameConfigurationEndpointType (\s a -> s { _apiGatewayV2DomainNameDomainNameConfigurationEndpointType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-domainname-domainnameconfiguration.html#cfn-apigatewayv2-domainname-domainnameconfiguration-securitypolicy
agvdndncSecurityPolicy :: Lens' ApiGatewayV2DomainNameDomainNameConfiguration (Maybe (Val Text))
agvdndncSecurityPolicy = lens _apiGatewayV2DomainNameDomainNameConfigurationSecurityPolicy (\s a -> s { _apiGatewayV2DomainNameDomainNameConfigurationSecurityPolicy = a })
