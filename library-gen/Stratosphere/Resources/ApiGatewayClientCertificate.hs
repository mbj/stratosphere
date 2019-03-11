{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-clientcertificate.html

module Stratosphere.Resources.ApiGatewayClientCertificate where

import Stratosphere.ResourceImports


-- | Full data type definition for ApiGatewayClientCertificate. See
-- 'apiGatewayClientCertificate' for a more convenient constructor.
data ApiGatewayClientCertificate =
  ApiGatewayClientCertificate
  { _apiGatewayClientCertificateDescription :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToResourceProperties ApiGatewayClientCertificate where
  toResourceProperties ApiGatewayClientCertificate{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::ApiGateway::ClientCertificate"
    , resourcePropertiesProperties =
        hashMapFromList $ catMaybes
        [ fmap (("Description",) . toJSON) _apiGatewayClientCertificateDescription
        ]
    }

-- | Constructor for 'ApiGatewayClientCertificate' containing required fields
-- as arguments.
apiGatewayClientCertificate
  :: ApiGatewayClientCertificate
apiGatewayClientCertificate  =
  ApiGatewayClientCertificate
  { _apiGatewayClientCertificateDescription = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-clientcertificate.html#cfn-apigateway-clientcertificate-description
agccDescription :: Lens' ApiGatewayClientCertificate (Maybe (Val Text))
agccDescription = lens _apiGatewayClientCertificateDescription (\s a -> s { _apiGatewayClientCertificateDescription = a })
