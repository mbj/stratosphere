{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-s3path.html

module Stratosphere.ResourceProperties.KendraDataSourceS3Path where

import Stratosphere.ResourceImports


-- | Full data type definition for KendraDataSourceS3Path. See
-- 'kendraDataSourceS3Path' for a more convenient constructor.
data KendraDataSourceS3Path =
  KendraDataSourceS3Path
  { _kendraDataSourceS3PathBucket :: Val Text
  , _kendraDataSourceS3PathKey :: Val Text
  } deriving (Show, Eq)

instance ToJSON KendraDataSourceS3Path where
  toJSON KendraDataSourceS3Path{..} =
    object $
    catMaybes
    [ (Just . ("Bucket",) . toJSON) _kendraDataSourceS3PathBucket
    , (Just . ("Key",) . toJSON) _kendraDataSourceS3PathKey
    ]

-- | Constructor for 'KendraDataSourceS3Path' containing required fields as
-- arguments.
kendraDataSourceS3Path
  :: Val Text -- ^ 'kdsspBucket'
  -> Val Text -- ^ 'kdsspKey'
  -> KendraDataSourceS3Path
kendraDataSourceS3Path bucketarg keyarg =
  KendraDataSourceS3Path
  { _kendraDataSourceS3PathBucket = bucketarg
  , _kendraDataSourceS3PathKey = keyarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-s3path.html#cfn-kendra-datasource-s3path-bucket
kdsspBucket :: Lens' KendraDataSourceS3Path (Val Text)
kdsspBucket = lens _kendraDataSourceS3PathBucket (\s a -> s { _kendraDataSourceS3PathBucket = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-s3path.html#cfn-kendra-datasource-s3path-key
kdsspKey :: Lens' KendraDataSourceS3Path (Val Text)
kdsspKey = lens _kendraDataSourceS3PathKey (\s a -> s { _kendraDataSourceS3PathKey = a })
