{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-domainname.html

module Stratosphere.Resources.ApiGatewayDomainName where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for ApiGatewayDomainName. See
-- 'apiGatewayDomainName' for a more convenient constructor.
data ApiGatewayDomainName =
  ApiGatewayDomainName
  { _apiGatewayDomainNameCertificateArn :: Val Text
  , _apiGatewayDomainNameDomainName :: Val Text
  } deriving (Show, Eq)

instance ToJSON ApiGatewayDomainName where
  toJSON ApiGatewayDomainName{..} =
    object $
    catMaybes
    [ (Just . ("CertificateArn",) . toJSON) _apiGatewayDomainNameCertificateArn
    , (Just . ("DomainName",) . toJSON) _apiGatewayDomainNameDomainName
    ]

instance FromJSON ApiGatewayDomainName where
  parseJSON (Object obj) =
    ApiGatewayDomainName <$>
      (obj .: "CertificateArn") <*>
      (obj .: "DomainName")
  parseJSON _ = mempty

-- | Constructor for 'ApiGatewayDomainName' containing required fields as
-- arguments.
apiGatewayDomainName
  :: Val Text -- ^ 'agdnCertificateArn'
  -> Val Text -- ^ 'agdnDomainName'
  -> ApiGatewayDomainName
apiGatewayDomainName certificateArnarg domainNamearg =
  ApiGatewayDomainName
  { _apiGatewayDomainNameCertificateArn = certificateArnarg
  , _apiGatewayDomainNameDomainName = domainNamearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-domainname.html#cfn-apigateway-domainname-certificatearn
agdnCertificateArn :: Lens' ApiGatewayDomainName (Val Text)
agdnCertificateArn = lens _apiGatewayDomainNameCertificateArn (\s a -> s { _apiGatewayDomainNameCertificateArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-domainname.html#cfn-apigateway-domainname-domainname
agdnDomainName :: Lens' ApiGatewayDomainName (Val Text)
agdnDomainName = lens _apiGatewayDomainNameDomainName (\s a -> s { _apiGatewayDomainNameDomainName = a })
