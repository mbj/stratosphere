{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-clientcertificate.html

module Stratosphere.Resources.ApiGatewayClientCertificate where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for ApiGatewayClientCertificate. See
-- | 'apiGatewayClientCertificate' for a more convenient constructor.
data ApiGatewayClientCertificate =
  ApiGatewayClientCertificate
  { _apiGatewayClientCertificateDescription :: Maybe (Val Text)
  } deriving (Show, Generic)

instance ToJSON ApiGatewayClientCertificate where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 28, omitNothingFields = True }

instance FromJSON ApiGatewayClientCertificate where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 28, omitNothingFields = True }

-- | Constructor for 'ApiGatewayClientCertificate' containing required fields
-- | as arguments.
apiGatewayClientCertificate
  :: ApiGatewayClientCertificate
apiGatewayClientCertificate  =
  ApiGatewayClientCertificate
  { _apiGatewayClientCertificateDescription = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-clientcertificate.html#cfn-apigateway-clientcertificate-description
agccDescription :: Lens' ApiGatewayClientCertificate (Maybe (Val Text))
agccDescription = lens _apiGatewayClientCertificateDescription (\s a -> s { _apiGatewayClientCertificateDescription = a })
