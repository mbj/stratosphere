{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-layerversion-content.html

module Stratosphere.ResourceProperties.LambdaLayerVersionContent where

import Stratosphere.ResourceImports


-- | Full data type definition for LambdaLayerVersionContent. See
-- 'lambdaLayerVersionContent' for a more convenient constructor.
data LambdaLayerVersionContent =
  LambdaLayerVersionContent
  { _lambdaLayerVersionContentS3Bucket :: Val Text
  , _lambdaLayerVersionContentS3Key :: Val Text
  , _lambdaLayerVersionContentS3ObjectVersion :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON LambdaLayerVersionContent where
  toJSON LambdaLayerVersionContent{..} =
    object $
    catMaybes
    [ (Just . ("S3Bucket",) . toJSON) _lambdaLayerVersionContentS3Bucket
    , (Just . ("S3Key",) . toJSON) _lambdaLayerVersionContentS3Key
    , fmap (("S3ObjectVersion",) . toJSON) _lambdaLayerVersionContentS3ObjectVersion
    ]

-- | Constructor for 'LambdaLayerVersionContent' containing required fields as
-- arguments.
lambdaLayerVersionContent
  :: Val Text -- ^ 'llvcS3Bucket'
  -> Val Text -- ^ 'llvcS3Key'
  -> LambdaLayerVersionContent
lambdaLayerVersionContent s3Bucketarg s3Keyarg =
  LambdaLayerVersionContent
  { _lambdaLayerVersionContentS3Bucket = s3Bucketarg
  , _lambdaLayerVersionContentS3Key = s3Keyarg
  , _lambdaLayerVersionContentS3ObjectVersion = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-layerversion-content.html#cfn-lambda-layerversion-content-s3bucket
llvcS3Bucket :: Lens' LambdaLayerVersionContent (Val Text)
llvcS3Bucket = lens _lambdaLayerVersionContentS3Bucket (\s a -> s { _lambdaLayerVersionContentS3Bucket = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-layerversion-content.html#cfn-lambda-layerversion-content-s3key
llvcS3Key :: Lens' LambdaLayerVersionContent (Val Text)
llvcS3Key = lens _lambdaLayerVersionContentS3Key (\s a -> s { _lambdaLayerVersionContentS3Key = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-layerversion-content.html#cfn-lambda-layerversion-content-s3objectversion
llvcS3ObjectVersion :: Lens' LambdaLayerVersionContent (Maybe (Val Text))
llvcS3ObjectVersion = lens _lambdaLayerVersionContentS3ObjectVersion (\s a -> s { _lambdaLayerVersionContentS3ObjectVersion = a })
