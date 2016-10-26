{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | S3Location is a property of the AWS::ApiGateway::RestApi resource that
-- specifies the Amazon Simple Storage Service (Amazon S3) location of a
-- Swagger file that defines a set of RESTful APIs in JSON or YAML for an
-- Amazon API Gateway (API Gateway) RestApi.

module Stratosphere.ResourceProperties.ApiGatewayRestApiS3Location where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for ApiGatewayRestApiS3Location. See
-- 'apiGatewayRestApiS3Location' for a more convenient constructor.
data ApiGatewayRestApiS3Location =
  ApiGatewayRestApiS3Location
  { _apiGatewayRestApiS3LocationBucket :: Maybe (Val Text)
  , _apiGatewayRestApiS3LocationETag :: Maybe (Val Text)
  , _apiGatewayRestApiS3LocationKey :: Maybe (Val Text)
  , _apiGatewayRestApiS3LocationVersion :: Maybe (Val Text)
  } deriving (Show, Generic)

instance ToJSON ApiGatewayRestApiS3Location where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 28, omitNothingFields = True }

instance FromJSON ApiGatewayRestApiS3Location where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 28, omitNothingFields = True }

-- | Constructor for 'ApiGatewayRestApiS3Location' containing required fields
-- as arguments.
apiGatewayRestApiS3Location
  :: ApiGatewayRestApiS3Location
apiGatewayRestApiS3Location  =
  ApiGatewayRestApiS3Location
  { _apiGatewayRestApiS3LocationBucket = Nothing
  , _apiGatewayRestApiS3LocationETag = Nothing
  , _apiGatewayRestApiS3LocationKey = Nothing
  , _apiGatewayRestApiS3LocationVersion = Nothing
  }

-- | The name of the S3 bucket where the Swagger file is stored.
agraslBucket :: Lens' ApiGatewayRestApiS3Location (Maybe (Val Text))
agraslBucket = lens _apiGatewayRestApiS3LocationBucket (\s a -> s { _apiGatewayRestApiS3LocationBucket = a })

-- | The Amazon S3 ETag (a file checksum) of the Swagger file. If you don't
-- specify a value, API Gateway skips ETag validation of your Swagger file.
agraslETag :: Lens' ApiGatewayRestApiS3Location (Maybe (Val Text))
agraslETag = lens _apiGatewayRestApiS3LocationETag (\s a -> s { _apiGatewayRestApiS3LocationETag = a })

-- | The file name of the Swagger file (Amazon S3 object name).
agraslKey :: Lens' ApiGatewayRestApiS3Location (Maybe (Val Text))
agraslKey = lens _apiGatewayRestApiS3LocationKey (\s a -> s { _apiGatewayRestApiS3LocationKey = a })

-- | For versioning-enabled buckets, a specific version of the Swagger file.
agraslVersion :: Lens' ApiGatewayRestApiS3Location (Maybe (Val Text))
agraslVersion = lens _apiGatewayRestApiS3LocationVersion (\s a -> s { _apiGatewayRestApiS3LocationVersion = a })