{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-domainname.html

module Stratosphere.Resources.ApiGatewayDomainName where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.ApiGatewayDomainNameEndpointConfiguration
import Stratosphere.ResourceProperties.ApiGatewayDomainNameMutualTlsAuthentication
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for ApiGatewayDomainName. See
-- 'apiGatewayDomainName' for a more convenient constructor.
data ApiGatewayDomainName =
  ApiGatewayDomainName
  { _apiGatewayDomainNameCertificateArn :: Maybe (Val Text)
  , _apiGatewayDomainNameDomainName :: Maybe (Val Text)
  , _apiGatewayDomainNameEndpointConfiguration :: Maybe ApiGatewayDomainNameEndpointConfiguration
  , _apiGatewayDomainNameMutualTlsAuthentication :: Maybe ApiGatewayDomainNameMutualTlsAuthentication
  , _apiGatewayDomainNameRegionalCertificateArn :: Maybe (Val Text)
  , _apiGatewayDomainNameSecurityPolicy :: Maybe (Val Text)
  , _apiGatewayDomainNameTags :: Maybe [Tag]
  } deriving (Show, Eq)

instance ToResourceProperties ApiGatewayDomainName where
  toResourceProperties ApiGatewayDomainName{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::ApiGateway::DomainName"
    , resourcePropertiesProperties =
        hashMapFromList $ catMaybes
        [ fmap (("CertificateArn",) . toJSON) _apiGatewayDomainNameCertificateArn
        , fmap (("DomainName",) . toJSON) _apiGatewayDomainNameDomainName
        , fmap (("EndpointConfiguration",) . toJSON) _apiGatewayDomainNameEndpointConfiguration
        , fmap (("MutualTlsAuthentication",) . toJSON) _apiGatewayDomainNameMutualTlsAuthentication
        , fmap (("RegionalCertificateArn",) . toJSON) _apiGatewayDomainNameRegionalCertificateArn
        , fmap (("SecurityPolicy",) . toJSON) _apiGatewayDomainNameSecurityPolicy
        , fmap (("Tags",) . toJSON) _apiGatewayDomainNameTags
        ]
    }

-- | Constructor for 'ApiGatewayDomainName' containing required fields as
-- arguments.
apiGatewayDomainName
  :: ApiGatewayDomainName
apiGatewayDomainName  =
  ApiGatewayDomainName
  { _apiGatewayDomainNameCertificateArn = Nothing
  , _apiGatewayDomainNameDomainName = Nothing
  , _apiGatewayDomainNameEndpointConfiguration = Nothing
  , _apiGatewayDomainNameMutualTlsAuthentication = Nothing
  , _apiGatewayDomainNameRegionalCertificateArn = Nothing
  , _apiGatewayDomainNameSecurityPolicy = Nothing
  , _apiGatewayDomainNameTags = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-domainname.html#cfn-apigateway-domainname-certificatearn
agdnCertificateArn :: Lens' ApiGatewayDomainName (Maybe (Val Text))
agdnCertificateArn = lens _apiGatewayDomainNameCertificateArn (\s a -> s { _apiGatewayDomainNameCertificateArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-domainname.html#cfn-apigateway-domainname-domainname
agdnDomainName :: Lens' ApiGatewayDomainName (Maybe (Val Text))
agdnDomainName = lens _apiGatewayDomainNameDomainName (\s a -> s { _apiGatewayDomainNameDomainName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-domainname.html#cfn-apigateway-domainname-endpointconfiguration
agdnEndpointConfiguration :: Lens' ApiGatewayDomainName (Maybe ApiGatewayDomainNameEndpointConfiguration)
agdnEndpointConfiguration = lens _apiGatewayDomainNameEndpointConfiguration (\s a -> s { _apiGatewayDomainNameEndpointConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-domainname.html#cfn-apigateway-domainname-mutualtlsauthentication
agdnMutualTlsAuthentication :: Lens' ApiGatewayDomainName (Maybe ApiGatewayDomainNameMutualTlsAuthentication)
agdnMutualTlsAuthentication = lens _apiGatewayDomainNameMutualTlsAuthentication (\s a -> s { _apiGatewayDomainNameMutualTlsAuthentication = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-domainname.html#cfn-apigateway-domainname-regionalcertificatearn
agdnRegionalCertificateArn :: Lens' ApiGatewayDomainName (Maybe (Val Text))
agdnRegionalCertificateArn = lens _apiGatewayDomainNameRegionalCertificateArn (\s a -> s { _apiGatewayDomainNameRegionalCertificateArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-domainname.html#cfn-apigateway-domainname-securitypolicy
agdnSecurityPolicy :: Lens' ApiGatewayDomainName (Maybe (Val Text))
agdnSecurityPolicy = lens _apiGatewayDomainNameSecurityPolicy (\s a -> s { _apiGatewayDomainNameSecurityPolicy = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-domainname.html#cfn-apigateway-domainname-tags
agdnTags :: Lens' ApiGatewayDomainName (Maybe [Tag])
agdnTags = lens _apiGatewayDomainNameTags (\s a -> s { _apiGatewayDomainNameTags = a })
