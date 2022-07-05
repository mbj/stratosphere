{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-clientcertificate.html

module Stratosphere.Resources.ApiGatewayClientCertificate where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for ApiGatewayClientCertificate. See
-- 'apiGatewayClientCertificate' for a more convenient constructor.
data ApiGatewayClientCertificate =
  ApiGatewayClientCertificate
  { _apiGatewayClientCertificateDescription :: Maybe (Val Text)
  , _apiGatewayClientCertificateTags :: Maybe [Tag]
  } deriving (Show, Eq)

instance ToResourceProperties ApiGatewayClientCertificate where
  toResourceProperties ApiGatewayClientCertificate{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::ApiGateway::ClientCertificate"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("Description",) . toJSON) _apiGatewayClientCertificateDescription
        , fmap (("Tags",) . toJSON) _apiGatewayClientCertificateTags
        ]
    }

-- | Constructor for 'ApiGatewayClientCertificate' containing required fields
-- as arguments.
apiGatewayClientCertificate
  :: ApiGatewayClientCertificate
apiGatewayClientCertificate  =
  ApiGatewayClientCertificate
  { _apiGatewayClientCertificateDescription = Nothing
  , _apiGatewayClientCertificateTags = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-clientcertificate.html#cfn-apigateway-clientcertificate-description
agccDescription :: Lens' ApiGatewayClientCertificate (Maybe (Val Text))
agccDescription = lens _apiGatewayClientCertificateDescription (\s a -> s { _apiGatewayClientCertificateDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-clientcertificate.html#cfn-apigateway-clientcertificate-tags
agccTags :: Lens' ApiGatewayClientCertificate (Maybe [Tag])
agccTags = lens _apiGatewayClientCertificateTags (\s a -> s { _apiGatewayClientCertificateTags = a })
