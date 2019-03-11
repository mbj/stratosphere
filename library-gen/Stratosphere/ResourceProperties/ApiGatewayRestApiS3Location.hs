{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-restapi-s3location.html

module Stratosphere.ResourceProperties.ApiGatewayRestApiS3Location where

import Stratosphere.ResourceImports


-- | Full data type definition for ApiGatewayRestApiS3Location. See
-- 'apiGatewayRestApiS3Location' for a more convenient constructor.
data ApiGatewayRestApiS3Location =
  ApiGatewayRestApiS3Location
  { _apiGatewayRestApiS3LocationBucket :: Maybe (Val Text)
  , _apiGatewayRestApiS3LocationETag :: Maybe (Val Text)
  , _apiGatewayRestApiS3LocationKey :: Maybe (Val Text)
  , _apiGatewayRestApiS3LocationVersion :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON ApiGatewayRestApiS3Location where
  toJSON ApiGatewayRestApiS3Location{..} =
    object $
    catMaybes
    [ fmap (("Bucket",) . toJSON) _apiGatewayRestApiS3LocationBucket
    , fmap (("ETag",) . toJSON) _apiGatewayRestApiS3LocationETag
    , fmap (("Key",) . toJSON) _apiGatewayRestApiS3LocationKey
    , fmap (("Version",) . toJSON) _apiGatewayRestApiS3LocationVersion
    ]

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

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-restapi-s3location.html#cfn-apigateway-restapi-s3location-bucket
agraslBucket :: Lens' ApiGatewayRestApiS3Location (Maybe (Val Text))
agraslBucket = lens _apiGatewayRestApiS3LocationBucket (\s a -> s { _apiGatewayRestApiS3LocationBucket = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-restapi-s3location.html#cfn-apigateway-restapi-s3location-etag
agraslETag :: Lens' ApiGatewayRestApiS3Location (Maybe (Val Text))
agraslETag = lens _apiGatewayRestApiS3LocationETag (\s a -> s { _apiGatewayRestApiS3LocationETag = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-restapi-s3location.html#cfn-apigateway-restapi-s3location-key
agraslKey :: Lens' ApiGatewayRestApiS3Location (Maybe (Val Text))
agraslKey = lens _apiGatewayRestApiS3LocationKey (\s a -> s { _apiGatewayRestApiS3LocationKey = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-restapi-s3location.html#cfn-apigateway-restapi-s3location-version
agraslVersion :: Lens' ApiGatewayRestApiS3Location (Maybe (Val Text))
agraslVersion = lens _apiGatewayRestApiS3LocationVersion (\s a -> s { _apiGatewayRestApiS3LocationVersion = a })
