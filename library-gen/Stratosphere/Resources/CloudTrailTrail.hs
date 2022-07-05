{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudtrail-trail.html

module Stratosphere.Resources.CloudTrailTrail where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.CloudTrailTrailEventSelector
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for CloudTrailTrail. See 'cloudTrailTrail' for
-- a more convenient constructor.
data CloudTrailTrail =
  CloudTrailTrail
  { _cloudTrailTrailCloudWatchLogsLogGroupArn :: Maybe (Val Text)
  , _cloudTrailTrailCloudWatchLogsRoleArn :: Maybe (Val Text)
  , _cloudTrailTrailEnableLogFileValidation :: Maybe (Val Bool)
  , _cloudTrailTrailEventSelectors :: Maybe [CloudTrailTrailEventSelector]
  , _cloudTrailTrailIncludeGlobalServiceEvents :: Maybe (Val Bool)
  , _cloudTrailTrailIsLogging :: Val Bool
  , _cloudTrailTrailIsMultiRegionTrail :: Maybe (Val Bool)
  , _cloudTrailTrailKMSKeyId :: Maybe (Val Text)
  , _cloudTrailTrailS3BucketName :: Val Text
  , _cloudTrailTrailS3KeyPrefix :: Maybe (Val Text)
  , _cloudTrailTrailSnsTopicName :: Maybe (Val Text)
  , _cloudTrailTrailTags :: Maybe [Tag]
  , _cloudTrailTrailTrailName :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToResourceProperties CloudTrailTrail where
  toResourceProperties CloudTrailTrail{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::CloudTrail::Trail"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("CloudWatchLogsLogGroupArn",) . toJSON) _cloudTrailTrailCloudWatchLogsLogGroupArn
        , fmap (("CloudWatchLogsRoleArn",) . toJSON) _cloudTrailTrailCloudWatchLogsRoleArn
        , fmap (("EnableLogFileValidation",) . toJSON) _cloudTrailTrailEnableLogFileValidation
        , fmap (("EventSelectors",) . toJSON) _cloudTrailTrailEventSelectors
        , fmap (("IncludeGlobalServiceEvents",) . toJSON) _cloudTrailTrailIncludeGlobalServiceEvents
        , (Just . ("IsLogging",) . toJSON) _cloudTrailTrailIsLogging
        , fmap (("IsMultiRegionTrail",) . toJSON) _cloudTrailTrailIsMultiRegionTrail
        , fmap (("KMSKeyId",) . toJSON) _cloudTrailTrailKMSKeyId
        , (Just . ("S3BucketName",) . toJSON) _cloudTrailTrailS3BucketName
        , fmap (("S3KeyPrefix",) . toJSON) _cloudTrailTrailS3KeyPrefix
        , fmap (("SnsTopicName",) . toJSON) _cloudTrailTrailSnsTopicName
        , fmap (("Tags",) . toJSON) _cloudTrailTrailTags
        , fmap (("TrailName",) . toJSON) _cloudTrailTrailTrailName
        ]
    }

-- | Constructor for 'CloudTrailTrail' containing required fields as
-- arguments.
cloudTrailTrail
  :: Val Bool -- ^ 'cttIsLogging'
  -> Val Text -- ^ 'cttS3BucketName'
  -> CloudTrailTrail
cloudTrailTrail isLoggingarg s3BucketNamearg =
  CloudTrailTrail
  { _cloudTrailTrailCloudWatchLogsLogGroupArn = Nothing
  , _cloudTrailTrailCloudWatchLogsRoleArn = Nothing
  , _cloudTrailTrailEnableLogFileValidation = Nothing
  , _cloudTrailTrailEventSelectors = Nothing
  , _cloudTrailTrailIncludeGlobalServiceEvents = Nothing
  , _cloudTrailTrailIsLogging = isLoggingarg
  , _cloudTrailTrailIsMultiRegionTrail = Nothing
  , _cloudTrailTrailKMSKeyId = Nothing
  , _cloudTrailTrailS3BucketName = s3BucketNamearg
  , _cloudTrailTrailS3KeyPrefix = Nothing
  , _cloudTrailTrailSnsTopicName = Nothing
  , _cloudTrailTrailTags = Nothing
  , _cloudTrailTrailTrailName = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudtrail-trail.html#cfn-cloudtrail-trail-cloudwatchlogsloggrouparn
cttCloudWatchLogsLogGroupArn :: Lens' CloudTrailTrail (Maybe (Val Text))
cttCloudWatchLogsLogGroupArn = lens _cloudTrailTrailCloudWatchLogsLogGroupArn (\s a -> s { _cloudTrailTrailCloudWatchLogsLogGroupArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudtrail-trail.html#cfn-cloudtrail-trail-cloudwatchlogsrolearn
cttCloudWatchLogsRoleArn :: Lens' CloudTrailTrail (Maybe (Val Text))
cttCloudWatchLogsRoleArn = lens _cloudTrailTrailCloudWatchLogsRoleArn (\s a -> s { _cloudTrailTrailCloudWatchLogsRoleArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudtrail-trail.html#cfn-cloudtrail-trail-enablelogfilevalidation
cttEnableLogFileValidation :: Lens' CloudTrailTrail (Maybe (Val Bool))
cttEnableLogFileValidation = lens _cloudTrailTrailEnableLogFileValidation (\s a -> s { _cloudTrailTrailEnableLogFileValidation = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudtrail-trail.html#cfn-cloudtrail-trail-eventselectors
cttEventSelectors :: Lens' CloudTrailTrail (Maybe [CloudTrailTrailEventSelector])
cttEventSelectors = lens _cloudTrailTrailEventSelectors (\s a -> s { _cloudTrailTrailEventSelectors = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudtrail-trail.html#cfn-cloudtrail-trail-includeglobalserviceevents
cttIncludeGlobalServiceEvents :: Lens' CloudTrailTrail (Maybe (Val Bool))
cttIncludeGlobalServiceEvents = lens _cloudTrailTrailIncludeGlobalServiceEvents (\s a -> s { _cloudTrailTrailIncludeGlobalServiceEvents = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudtrail-trail.html#cfn-cloudtrail-trail-islogging
cttIsLogging :: Lens' CloudTrailTrail (Val Bool)
cttIsLogging = lens _cloudTrailTrailIsLogging (\s a -> s { _cloudTrailTrailIsLogging = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudtrail-trail.html#cfn-cloudtrail-trail-ismultiregiontrail
cttIsMultiRegionTrail :: Lens' CloudTrailTrail (Maybe (Val Bool))
cttIsMultiRegionTrail = lens _cloudTrailTrailIsMultiRegionTrail (\s a -> s { _cloudTrailTrailIsMultiRegionTrail = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudtrail-trail.html#cfn-cloudtrail-trail-kmskeyid
cttKMSKeyId :: Lens' CloudTrailTrail (Maybe (Val Text))
cttKMSKeyId = lens _cloudTrailTrailKMSKeyId (\s a -> s { _cloudTrailTrailKMSKeyId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudtrail-trail.html#cfn-cloudtrail-trail-s3bucketname
cttS3BucketName :: Lens' CloudTrailTrail (Val Text)
cttS3BucketName = lens _cloudTrailTrailS3BucketName (\s a -> s { _cloudTrailTrailS3BucketName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudtrail-trail.html#cfn-cloudtrail-trail-s3keyprefix
cttS3KeyPrefix :: Lens' CloudTrailTrail (Maybe (Val Text))
cttS3KeyPrefix = lens _cloudTrailTrailS3KeyPrefix (\s a -> s { _cloudTrailTrailS3KeyPrefix = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudtrail-trail.html#cfn-cloudtrail-trail-snstopicname
cttSnsTopicName :: Lens' CloudTrailTrail (Maybe (Val Text))
cttSnsTopicName = lens _cloudTrailTrailSnsTopicName (\s a -> s { _cloudTrailTrailSnsTopicName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudtrail-trail.html#cfn-cloudtrail-trail-tags
cttTags :: Lens' CloudTrailTrail (Maybe [Tag])
cttTags = lens _cloudTrailTrailTags (\s a -> s { _cloudTrailTrailTags = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudtrail-trail.html#cfn-cloudtrail-trail-trailname
cttTrailName :: Lens' CloudTrailTrail (Maybe (Val Text))
cttTrailName = lens _cloudTrailTrailTrailName (\s a -> s { _cloudTrailTrailTrailName = a })
