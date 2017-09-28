{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-destination.html

module Stratosphere.ResourceProperties.S3BucketDestination where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for S3BucketDestination. See
-- 's3BucketDestination' for a more convenient constructor.
data S3BucketDestination =
  S3BucketDestination
  { _s3BucketDestinationBucketAccountId :: Maybe (Val Text)
  , _s3BucketDestinationBucketArn :: Val Text
  , _s3BucketDestinationFormat :: Val Text
  , _s3BucketDestinationPrefix :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON S3BucketDestination where
  toJSON S3BucketDestination{..} =
    object $
    catMaybes
    [ fmap (("BucketAccountId",) . toJSON) _s3BucketDestinationBucketAccountId
    , (Just . ("BucketArn",) . toJSON) _s3BucketDestinationBucketArn
    , (Just . ("Format",) . toJSON) _s3BucketDestinationFormat
    , fmap (("Prefix",) . toJSON) _s3BucketDestinationPrefix
    ]

instance FromJSON S3BucketDestination where
  parseJSON (Object obj) =
    S3BucketDestination <$>
      (obj .:? "BucketAccountId") <*>
      (obj .: "BucketArn") <*>
      (obj .: "Format") <*>
      (obj .:? "Prefix")
  parseJSON _ = mempty

-- | Constructor for 'S3BucketDestination' containing required fields as
-- arguments.
s3BucketDestination
  :: Val Text -- ^ 'sbdBucketArn'
  -> Val Text -- ^ 'sbdFormat'
  -> S3BucketDestination
s3BucketDestination bucketArnarg formatarg =
  S3BucketDestination
  { _s3BucketDestinationBucketAccountId = Nothing
  , _s3BucketDestinationBucketArn = bucketArnarg
  , _s3BucketDestinationFormat = formatarg
  , _s3BucketDestinationPrefix = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-destination.html#cfn-s3-bucket-destination-bucketaccountid
sbdBucketAccountId :: Lens' S3BucketDestination (Maybe (Val Text))
sbdBucketAccountId = lens _s3BucketDestinationBucketAccountId (\s a -> s { _s3BucketDestinationBucketAccountId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-destination.html#cfn-s3-bucket-destination-bucketarn
sbdBucketArn :: Lens' S3BucketDestination (Val Text)
sbdBucketArn = lens _s3BucketDestinationBucketArn (\s a -> s { _s3BucketDestinationBucketArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-destination.html#cfn-s3-bucket-destination-format
sbdFormat :: Lens' S3BucketDestination (Val Text)
sbdFormat = lens _s3BucketDestinationFormat (\s a -> s { _s3BucketDestinationFormat = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-destination.html#cfn-s3-bucket-destination-prefix
sbdPrefix :: Lens' S3BucketDestination (Maybe (Val Text))
sbdPrefix = lens _s3BucketDestinationPrefix (\s a -> s { _s3BucketDestinationPrefix = a })
