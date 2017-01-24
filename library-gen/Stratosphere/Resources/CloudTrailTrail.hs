{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudtrail-trail.html

module Stratosphere.Resources.CloudTrailTrail where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for CloudTrailTrail. See 'cloudTrailTrail' for
-- | a more convenient constructor.
data CloudTrailTrail =
  CloudTrailTrail
  { _cloudTrailTrailCloudWatchLogsLogGroupArn :: Maybe (Val Text)
  , _cloudTrailTrailCloudWatchLogsRoleArn :: Maybe (Val Text)
  , _cloudTrailTrailEnableLogFileValidation :: Maybe (Val Bool')
  , _cloudTrailTrailIncludeGlobalServiceEvents :: Maybe (Val Bool')
  , _cloudTrailTrailIsLogging :: Val Bool'
  , _cloudTrailTrailIsMultiRegionTrail :: Maybe (Val Bool')
  , _cloudTrailTrailKMSKeyId :: Maybe (Val Text)
  , _cloudTrailTrailS3BucketName :: Val Text
  , _cloudTrailTrailS3KeyPrefix :: Maybe (Val Text)
  , _cloudTrailTrailSnsTopicName :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON CloudTrailTrail where
  toJSON CloudTrailTrail{..} =
    object
    [ "CloudWatchLogsLogGroupArn" .= _cloudTrailTrailCloudWatchLogsLogGroupArn
    , "CloudWatchLogsRoleArn" .= _cloudTrailTrailCloudWatchLogsRoleArn
    , "EnableLogFileValidation" .= _cloudTrailTrailEnableLogFileValidation
    , "IncludeGlobalServiceEvents" .= _cloudTrailTrailIncludeGlobalServiceEvents
    , "IsLogging" .= _cloudTrailTrailIsLogging
    , "IsMultiRegionTrail" .= _cloudTrailTrailIsMultiRegionTrail
    , "KMSKeyId" .= _cloudTrailTrailKMSKeyId
    , "S3BucketName" .= _cloudTrailTrailS3BucketName
    , "S3KeyPrefix" .= _cloudTrailTrailS3KeyPrefix
    , "SnsTopicName" .= _cloudTrailTrailSnsTopicName
    ]

instance FromJSON CloudTrailTrail where
  parseJSON (Object obj) =
    CloudTrailTrail <$>
      obj .: "CloudWatchLogsLogGroupArn" <*>
      obj .: "CloudWatchLogsRoleArn" <*>
      obj .: "EnableLogFileValidation" <*>
      obj .: "IncludeGlobalServiceEvents" <*>
      obj .: "IsLogging" <*>
      obj .: "IsMultiRegionTrail" <*>
      obj .: "KMSKeyId" <*>
      obj .: "S3BucketName" <*>
      obj .: "S3KeyPrefix" <*>
      obj .: "SnsTopicName"
  parseJSON _ = mempty

-- | Constructor for 'CloudTrailTrail' containing required fields as
-- | arguments.
cloudTrailTrail
  :: Val Bool' -- ^ 'cttIsLogging'
  -> Val Text -- ^ 'cttS3BucketName'
  -> CloudTrailTrail
cloudTrailTrail isLoggingarg s3BucketNamearg =
  CloudTrailTrail
  { _cloudTrailTrailCloudWatchLogsLogGroupArn = Nothing
  , _cloudTrailTrailCloudWatchLogsRoleArn = Nothing
  , _cloudTrailTrailEnableLogFileValidation = Nothing
  , _cloudTrailTrailIncludeGlobalServiceEvents = Nothing
  , _cloudTrailTrailIsLogging = isLoggingarg
  , _cloudTrailTrailIsMultiRegionTrail = Nothing
  , _cloudTrailTrailKMSKeyId = Nothing
  , _cloudTrailTrailS3BucketName = s3BucketNamearg
  , _cloudTrailTrailS3KeyPrefix = Nothing
  , _cloudTrailTrailSnsTopicName = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudtrail-trail.html#cfn-cloudtrail-trail-cloudwatchlogsloggrouparn
cttCloudWatchLogsLogGroupArn :: Lens' CloudTrailTrail (Maybe (Val Text))
cttCloudWatchLogsLogGroupArn = lens _cloudTrailTrailCloudWatchLogsLogGroupArn (\s a -> s { _cloudTrailTrailCloudWatchLogsLogGroupArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudtrail-trail.html#cfn-cloudtrail-trail-cloudwatchlogsrolearn
cttCloudWatchLogsRoleArn :: Lens' CloudTrailTrail (Maybe (Val Text))
cttCloudWatchLogsRoleArn = lens _cloudTrailTrailCloudWatchLogsRoleArn (\s a -> s { _cloudTrailTrailCloudWatchLogsRoleArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudtrail-trail.html#cfn-cloudtrail-trail-enablelogfilevalidation
cttEnableLogFileValidation :: Lens' CloudTrailTrail (Maybe (Val Bool'))
cttEnableLogFileValidation = lens _cloudTrailTrailEnableLogFileValidation (\s a -> s { _cloudTrailTrailEnableLogFileValidation = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudtrail-trail.html#cfn-cloudtrail-trail-includeglobalserviceevents
cttIncludeGlobalServiceEvents :: Lens' CloudTrailTrail (Maybe (Val Bool'))
cttIncludeGlobalServiceEvents = lens _cloudTrailTrailIncludeGlobalServiceEvents (\s a -> s { _cloudTrailTrailIncludeGlobalServiceEvents = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudtrail-trail.html#cfn-cloudtrail-trail-islogging
cttIsLogging :: Lens' CloudTrailTrail (Val Bool')
cttIsLogging = lens _cloudTrailTrailIsLogging (\s a -> s { _cloudTrailTrailIsLogging = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudtrail-trail.html#cfn-cloudtrail-trail-ismultiregiontrail
cttIsMultiRegionTrail :: Lens' CloudTrailTrail (Maybe (Val Bool'))
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
