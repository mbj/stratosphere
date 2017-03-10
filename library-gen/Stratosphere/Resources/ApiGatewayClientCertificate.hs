{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-clientcertificate.html

module Stratosphere.Resources.ApiGatewayClientCertificate where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for ApiGatewayClientCertificate. See
-- 'apiGatewayClientCertificate' for a more convenient constructor.
data ApiGatewayClientCertificate =
  ApiGatewayClientCertificate
  { _apiGatewayClientCertificateDescription :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON ApiGatewayClientCertificate where
  toJSON ApiGatewayClientCertificate{..} =
    object $
    catMaybes
    [ ("Description" .=) <$> _apiGatewayClientCertificateDescription
    ]

instance FromJSON ApiGatewayClientCertificate where
  parseJSON (Object obj) =
    ApiGatewayClientCertificate <$>
      obj .:? "Description"
  parseJSON _ = mempty

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
