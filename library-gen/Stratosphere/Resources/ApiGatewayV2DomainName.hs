{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-domainname.html

module Stratosphere.Resources.ApiGatewayV2DomainName where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.ApiGatewayV2DomainNameDomainNameConfiguration
import Stratosphere.ResourceProperties.ApiGatewayV2DomainNameMutualTlsAuthentication

-- | Full data type definition for ApiGatewayV2DomainName. See
-- 'apiGatewayV2DomainName' for a more convenient constructor.
data ApiGatewayV2DomainName =
  ApiGatewayV2DomainName
  { _apiGatewayV2DomainNameDomainName :: Val Text
  , _apiGatewayV2DomainNameDomainNameConfigurations :: Maybe [ApiGatewayV2DomainNameDomainNameConfiguration]
  , _apiGatewayV2DomainNameMutualTlsAuthentication :: Maybe ApiGatewayV2DomainNameMutualTlsAuthentication
  , _apiGatewayV2DomainNameTags :: Maybe Object
  } deriving (Show, Eq)

instance ToResourceProperties ApiGatewayV2DomainName where
  toResourceProperties ApiGatewayV2DomainName{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::ApiGatewayV2::DomainName"
    , resourcePropertiesProperties =
        hashMapFromList $ catMaybes
        [ (Just . ("DomainName",) . toJSON) _apiGatewayV2DomainNameDomainName
        , fmap (("DomainNameConfigurations",) . toJSON) _apiGatewayV2DomainNameDomainNameConfigurations
        , fmap (("MutualTlsAuthentication",) . toJSON) _apiGatewayV2DomainNameMutualTlsAuthentication
        , fmap (("Tags",) . toJSON) _apiGatewayV2DomainNameTags
        ]
    }

-- | Constructor for 'ApiGatewayV2DomainName' containing required fields as
-- arguments.
apiGatewayV2DomainName
  :: Val Text -- ^ 'agvdnDomainName'
  -> ApiGatewayV2DomainName
apiGatewayV2DomainName domainNamearg =
  ApiGatewayV2DomainName
  { _apiGatewayV2DomainNameDomainName = domainNamearg
  , _apiGatewayV2DomainNameDomainNameConfigurations = Nothing
  , _apiGatewayV2DomainNameMutualTlsAuthentication = Nothing
  , _apiGatewayV2DomainNameTags = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-domainname.html#cfn-apigatewayv2-domainname-domainname
agvdnDomainName :: Lens' ApiGatewayV2DomainName (Val Text)
agvdnDomainName = lens _apiGatewayV2DomainNameDomainName (\s a -> s { _apiGatewayV2DomainNameDomainName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-domainname.html#cfn-apigatewayv2-domainname-domainnameconfigurations
agvdnDomainNameConfigurations :: Lens' ApiGatewayV2DomainName (Maybe [ApiGatewayV2DomainNameDomainNameConfiguration])
agvdnDomainNameConfigurations = lens _apiGatewayV2DomainNameDomainNameConfigurations (\s a -> s { _apiGatewayV2DomainNameDomainNameConfigurations = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-domainname.html#cfn-apigatewayv2-domainname-mutualtlsauthentication
agvdnMutualTlsAuthentication :: Lens' ApiGatewayV2DomainName (Maybe ApiGatewayV2DomainNameMutualTlsAuthentication)
agvdnMutualTlsAuthentication = lens _apiGatewayV2DomainNameMutualTlsAuthentication (\s a -> s { _apiGatewayV2DomainNameMutualTlsAuthentication = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-domainname.html#cfn-apigatewayv2-domainname-tags
agvdnTags :: Lens' ApiGatewayV2DomainName (Maybe Object)
agvdnTags = lens _apiGatewayV2DomainNameTags (\s a -> s { _apiGatewayV2DomainNameTags = a })
