{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-api-bodys3location.html

module Stratosphere.ResourceProperties.ApiGatewayV2ApiBodyS3Location where

import Stratosphere.ResourceImports


-- | Full data type definition for ApiGatewayV2ApiBodyS3Location. See
-- 'apiGatewayV2ApiBodyS3Location' for a more convenient constructor.
data ApiGatewayV2ApiBodyS3Location =
  ApiGatewayV2ApiBodyS3Location
  { _apiGatewayV2ApiBodyS3LocationBucket :: Maybe (Val Text)
  , _apiGatewayV2ApiBodyS3LocationEtag :: Maybe (Val Text)
  , _apiGatewayV2ApiBodyS3LocationKey :: Maybe (Val Text)
  , _apiGatewayV2ApiBodyS3LocationVersion :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON ApiGatewayV2ApiBodyS3Location where
  toJSON ApiGatewayV2ApiBodyS3Location{..} =
    object $
    catMaybes
    [ fmap (("Bucket",) . toJSON) _apiGatewayV2ApiBodyS3LocationBucket
    , fmap (("Etag",) . toJSON) _apiGatewayV2ApiBodyS3LocationEtag
    , fmap (("Key",) . toJSON) _apiGatewayV2ApiBodyS3LocationKey
    , fmap (("Version",) . toJSON) _apiGatewayV2ApiBodyS3LocationVersion
    ]

-- | Constructor for 'ApiGatewayV2ApiBodyS3Location' containing required
-- fields as arguments.
apiGatewayV2ApiBodyS3Location
  :: ApiGatewayV2ApiBodyS3Location
apiGatewayV2ApiBodyS3Location  =
  ApiGatewayV2ApiBodyS3Location
  { _apiGatewayV2ApiBodyS3LocationBucket = Nothing
  , _apiGatewayV2ApiBodyS3LocationEtag = Nothing
  , _apiGatewayV2ApiBodyS3LocationKey = Nothing
  , _apiGatewayV2ApiBodyS3LocationVersion = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-api-bodys3location.html#cfn-apigatewayv2-api-bodys3location-bucket
agvabslBucket :: Lens' ApiGatewayV2ApiBodyS3Location (Maybe (Val Text))
agvabslBucket = lens _apiGatewayV2ApiBodyS3LocationBucket (\s a -> s { _apiGatewayV2ApiBodyS3LocationBucket = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-api-bodys3location.html#cfn-apigatewayv2-api-bodys3location-etag
agvabslEtag :: Lens' ApiGatewayV2ApiBodyS3Location (Maybe (Val Text))
agvabslEtag = lens _apiGatewayV2ApiBodyS3LocationEtag (\s a -> s { _apiGatewayV2ApiBodyS3LocationEtag = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-api-bodys3location.html#cfn-apigatewayv2-api-bodys3location-key
agvabslKey :: Lens' ApiGatewayV2ApiBodyS3Location (Maybe (Val Text))
agvabslKey = lens _apiGatewayV2ApiBodyS3LocationKey (\s a -> s { _apiGatewayV2ApiBodyS3LocationKey = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-api-bodys3location.html#cfn-apigatewayv2-api-bodys3location-version
agvabslVersion :: Lens' ApiGatewayV2ApiBodyS3Location (Maybe (Val Text))
agvabslVersion = lens _apiGatewayV2ApiBodyS3LocationVersion (\s a -> s { _apiGatewayV2ApiBodyS3LocationVersion = a })
