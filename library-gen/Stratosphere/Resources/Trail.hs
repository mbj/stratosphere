{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | The AWS::CloudTrail::Trail resource creates a trail and specifies where
-- logs are published. An AWS CloudTrail (CloudTrail) trail can capture AWS
-- API calls made by your AWS account and publishes the logs to an Amazon S3
-- bucket. For more information, see What is AWS CloudTrail? in the AWS
-- CloudTrail User Guide.

module Stratosphere.Resources.Trail where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.ResourceProperties.ResourceTag

-- | Full data type definition for Trail. See 'trail' for a more convenient
-- constructor.
data Trail =
  Trail
  { _trailCloudWatchLogsLogGroupArn :: Maybe (Val Text)
  , _trailCloudWatchLogsRoleArn :: Maybe (Val Text)
  , _trailEnableLogFileValidation :: Maybe (Val Bool)
  , _trailIncludeGlobalServiceEvents :: Maybe (Val Bool)
  , _trailIsLogging :: Val Bool
  , _trailIsMultiRegionTrail :: Maybe (Val Bool)
  , _trailKMSKeyId :: Maybe (Val Text)
  , _trailS3BucketName :: Val Text
  , _trailS3KeyPrefix :: Maybe (Val Text)
  , _trailSnsTopicName :: Maybe (Val Text)
  , _trailTags :: Maybe [ResourceTag]
  } deriving (Show, Generic)

instance ToJSON Trail where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 6, omitNothingFields = True }

instance FromJSON Trail where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 6, omitNothingFields = True }

-- | Constructor for 'Trail' containing required fields as arguments.
trail
  :: Val Bool -- ^ 'tIsLogging'
  -> Val Text -- ^ 'tS3BucketName'
  -> Trail
trail isLoggingarg s3BucketNamearg =
  Trail
  { _trailCloudWatchLogsLogGroupArn = Nothing
  , _trailCloudWatchLogsRoleArn = Nothing
  , _trailEnableLogFileValidation = Nothing
  , _trailIncludeGlobalServiceEvents = Nothing
  , _trailIsLogging = isLoggingarg
  , _trailIsMultiRegionTrail = Nothing
  , _trailKMSKeyId = Nothing
  , _trailS3BucketName = s3BucketNamearg
  , _trailS3KeyPrefix = Nothing
  , _trailSnsTopicName = Nothing
  , _trailTags = Nothing
  }

-- | The Amazon Resource Name (ARN) of a log group to which CloudTrail logs
-- will be delivered.
tCloudWatchLogsLogGroupArn :: Lens' Trail (Maybe (Val Text))
tCloudWatchLogsLogGroupArn = lens _trailCloudWatchLogsLogGroupArn (\s a -> s { _trailCloudWatchLogsLogGroupArn = a })

-- | The role ARN that Amazon CloudWatch Logs (CloudWatch Logs) assumes to
-- write logs to a log group. For more information, see Role Policy Document
-- for CloudTrail to Use CloudWatch Logs for Monitoring in the AWS CloudTrail
-- User Guide.
tCloudWatchLogsRoleArn :: Lens' Trail (Maybe (Val Text))
tCloudWatchLogsRoleArn = lens _trailCloudWatchLogsRoleArn (\s a -> s { _trailCloudWatchLogsRoleArn = a })

-- | Indicates whether CloudTrail validates the integrity of log files. By
-- default, AWS CloudFormation sets this value to false. When you disable log
-- file integrity validation, CloudTrail stops creating digest files. For more
-- information, see CreateTrail in the AWS CloudTrail API Reference.
tEnableLogFileValidation :: Lens' Trail (Maybe (Val Bool))
tEnableLogFileValidation = lens _trailEnableLogFileValidation (\s a -> s { _trailEnableLogFileValidation = a })

-- | Indicates whether the trail is publishing events from global services,
-- such as IAM, to the log files. By default, AWS CloudFormation sets this
-- value to false.
tIncludeGlobalServiceEvents :: Lens' Trail (Maybe (Val Bool))
tIncludeGlobalServiceEvents = lens _trailIncludeGlobalServiceEvents (\s a -> s { _trailIncludeGlobalServiceEvents = a })

-- | Indicates whether the CloudTrail trail is currently logging AWS API
-- calls.
tIsLogging :: Lens' Trail (Val Bool)
tIsLogging = lens _trailIsLogging (\s a -> s { _trailIsLogging = a })

-- | Indicates whether the CloudTrail trail is created in the region in which
-- you create the stack (false) or in all regions (true). By default, AWS
-- CloudFormation sets this value to false. For more information, see How Does
-- CloudTrail Behave Regionally and Globally? in the AWS CloudTrail User
-- Guide.
tIsMultiRegionTrail :: Lens' Trail (Maybe (Val Bool))
tIsMultiRegionTrail = lens _trailIsMultiRegionTrail (\s a -> s { _trailIsMultiRegionTrail = a })

-- | The AWS Key Management Service (AWS KMS) key ID that you want to use to
-- encrypt CloudTrail logs. You can specify an alias name (prefixed with
-- alias/), an alias ARN, a key ARN, or a globally unique identifier.
tKMSKeyId :: Lens' Trail (Maybe (Val Text))
tKMSKeyId = lens _trailKMSKeyId (\s a -> s { _trailKMSKeyId = a })

-- | The name of the Amazon S3 bucket where CloudTrail publishes log files.
tS3BucketName :: Lens' Trail (Val Text)
tS3BucketName = lens _trailS3BucketName (\s a -> s { _trailS3BucketName = a })

-- | An Amazon S3 object key prefix that precedes the name of all log files.
tS3KeyPrefix :: Lens' Trail (Maybe (Val Text))
tS3KeyPrefix = lens _trailS3KeyPrefix (\s a -> s { _trailS3KeyPrefix = a })

-- | The name of an Amazon SNS topic that is notified when new log files are
-- published.
tSnsTopicName :: Lens' Trail (Maybe (Val Text))
tSnsTopicName = lens _trailSnsTopicName (\s a -> s { _trailSnsTopicName = a })

-- | An arbitrary set of tags (key–value pairs) for this trail.
tTags :: Lens' Trail (Maybe [ResourceTag])
tTags = lens _trailTags (\s a -> s { _trailTags = a })