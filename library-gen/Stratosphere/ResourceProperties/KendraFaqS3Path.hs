{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-faq-s3path.html

module Stratosphere.ResourceProperties.KendraFaqS3Path where

import Stratosphere.ResourceImports


-- | Full data type definition for KendraFaqS3Path. See 'kendraFaqS3Path' for
-- a more convenient constructor.
data KendraFaqS3Path =
  KendraFaqS3Path
  { _kendraFaqS3PathBucket :: Val Text
  , _kendraFaqS3PathKey :: Val Text
  } deriving (Show, Eq)

instance ToJSON KendraFaqS3Path where
  toJSON KendraFaqS3Path{..} =
    object $
    catMaybes
    [ (Just . ("Bucket",) . toJSON) _kendraFaqS3PathBucket
    , (Just . ("Key",) . toJSON) _kendraFaqS3PathKey
    ]

-- | Constructor for 'KendraFaqS3Path' containing required fields as
-- arguments.
kendraFaqS3Path
  :: Val Text -- ^ 'kfspBucket'
  -> Val Text -- ^ 'kfspKey'
  -> KendraFaqS3Path
kendraFaqS3Path bucketarg keyarg =
  KendraFaqS3Path
  { _kendraFaqS3PathBucket = bucketarg
  , _kendraFaqS3PathKey = keyarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-faq-s3path.html#cfn-kendra-faq-s3path-bucket
kfspBucket :: Lens' KendraFaqS3Path (Val Text)
kfspBucket = lens _kendraFaqS3PathBucket (\s a -> s { _kendraFaqS3PathBucket = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-faq-s3path.html#cfn-kendra-faq-s3path-key
kfspKey :: Lens' KendraFaqS3Path (Val Text)
kfspKey = lens _kendraFaqS3PathKey (\s a -> s { _kendraFaqS3PathKey = a })
