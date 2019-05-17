{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-domainname.html

module Stratosphere.Resources.ApiGatewayV2DomainName where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.ApiGatewayV2DomainNameDomainNameConfiguration

-- | Full data type definition for ApiGatewayV2DomainName. See
-- 'apiGatewayV2DomainName' for a more convenient constructor.
data ApiGatewayV2DomainName =
  ApiGatewayV2DomainName
  { _apiGatewayV2DomainNameDomainName :: Val Text
  , _apiGatewayV2DomainNameDomainNameConfigurations :: Maybe [ApiGatewayV2DomainNameDomainNameConfiguration]
  } deriving (Show, Eq)

instance ToResourceProperties ApiGatewayV2DomainName where
  toResourceProperties ApiGatewayV2DomainName{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::ApiGatewayV2::DomainName"
    , resourcePropertiesProperties =
        hashMapFromList $ catMaybes
        [ (Just . ("DomainName",) . toJSON) _apiGatewayV2DomainNameDomainName
        , fmap (("DomainNameConfigurations",) . toJSON) _apiGatewayV2DomainNameDomainNameConfigurations
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
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-domainname.html#cfn-apigatewayv2-domainname-domainname
agvdnDomainName :: Lens' ApiGatewayV2DomainName (Val Text)
agvdnDomainName = lens _apiGatewayV2DomainNameDomainName (\s a -> s { _apiGatewayV2DomainNameDomainName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-domainname.html#cfn-apigatewayv2-domainname-domainnameconfigurations
agvdnDomainNameConfigurations :: Lens' ApiGatewayV2DomainName (Maybe [ApiGatewayV2DomainNameDomainNameConfiguration])
agvdnDomainNameConfigurations = lens _apiGatewayV2DomainNameDomainNameConfigurations (\s a -> s { _apiGatewayV2DomainNameDomainNameConfigurations = a })
