{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-s3contentlocation.html

module Stratosphere.ResourceProperties.KinesisAnalyticsV2ApplicationS3ContentLocation where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- KinesisAnalyticsV2ApplicationS3ContentLocation. See
-- 'kinesisAnalyticsV2ApplicationS3ContentLocation' for a more convenient
-- constructor.
data KinesisAnalyticsV2ApplicationS3ContentLocation =
  KinesisAnalyticsV2ApplicationS3ContentLocation
  { _kinesisAnalyticsV2ApplicationS3ContentLocationBucketARN :: Maybe (Val Text)
  , _kinesisAnalyticsV2ApplicationS3ContentLocationFileKey :: Maybe (Val Text)
  , _kinesisAnalyticsV2ApplicationS3ContentLocationObjectVersion :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON KinesisAnalyticsV2ApplicationS3ContentLocation where
  toJSON KinesisAnalyticsV2ApplicationS3ContentLocation{..} =
    object $
    catMaybes
    [ fmap (("BucketARN",) . toJSON) _kinesisAnalyticsV2ApplicationS3ContentLocationBucketARN
    , fmap (("FileKey",) . toJSON) _kinesisAnalyticsV2ApplicationS3ContentLocationFileKey
    , fmap (("ObjectVersion",) . toJSON) _kinesisAnalyticsV2ApplicationS3ContentLocationObjectVersion
    ]

instance FromJSON KinesisAnalyticsV2ApplicationS3ContentLocation where
  parseJSON (Object obj) =
    KinesisAnalyticsV2ApplicationS3ContentLocation <$>
      (obj .:? "BucketARN") <*>
      (obj .:? "FileKey") <*>
      (obj .:? "ObjectVersion")
  parseJSON _ = mempty

-- | Constructor for 'KinesisAnalyticsV2ApplicationS3ContentLocation'
-- containing required fields as arguments.
kinesisAnalyticsV2ApplicationS3ContentLocation
  :: KinesisAnalyticsV2ApplicationS3ContentLocation
kinesisAnalyticsV2ApplicationS3ContentLocation  =
  KinesisAnalyticsV2ApplicationS3ContentLocation
  { _kinesisAnalyticsV2ApplicationS3ContentLocationBucketARN = Nothing
  , _kinesisAnalyticsV2ApplicationS3ContentLocationFileKey = Nothing
  , _kinesisAnalyticsV2ApplicationS3ContentLocationObjectVersion = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-s3contentlocation.html#cfn-kinesisanalyticsv2-application-s3contentlocation-bucketarn
kavasclBucketARN :: Lens' KinesisAnalyticsV2ApplicationS3ContentLocation (Maybe (Val Text))
kavasclBucketARN = lens _kinesisAnalyticsV2ApplicationS3ContentLocationBucketARN (\s a -> s { _kinesisAnalyticsV2ApplicationS3ContentLocationBucketARN = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-s3contentlocation.html#cfn-kinesisanalyticsv2-application-s3contentlocation-filekey
kavasclFileKey :: Lens' KinesisAnalyticsV2ApplicationS3ContentLocation (Maybe (Val Text))
kavasclFileKey = lens _kinesisAnalyticsV2ApplicationS3ContentLocationFileKey (\s a -> s { _kinesisAnalyticsV2ApplicationS3ContentLocationFileKey = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-s3contentlocation.html#cfn-kinesisanalyticsv2-application-s3contentlocation-objectversion
kavasclObjectVersion :: Lens' KinesisAnalyticsV2ApplicationS3ContentLocation (Maybe (Val Text))
kavasclObjectVersion = lens _kinesisAnalyticsV2ApplicationS3ContentLocationObjectVersion (\s a -> s { _kinesisAnalyticsV2ApplicationS3ContentLocationObjectVersion = a })
