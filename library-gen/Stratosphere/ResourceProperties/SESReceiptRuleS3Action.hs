{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-s3action.html

module Stratosphere.ResourceProperties.SESReceiptRuleS3Action where

import Stratosphere.ResourceImports


-- | Full data type definition for SESReceiptRuleS3Action. See
-- 'sesReceiptRuleS3Action' for a more convenient constructor.
data SESReceiptRuleS3Action =
  SESReceiptRuleS3Action
  { _sESReceiptRuleS3ActionBucketName :: Val Text
  , _sESReceiptRuleS3ActionKmsKeyArn :: Maybe (Val Text)
  , _sESReceiptRuleS3ActionObjectKeyPrefix :: Maybe (Val Text)
  , _sESReceiptRuleS3ActionTopicArn :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON SESReceiptRuleS3Action where
  toJSON SESReceiptRuleS3Action{..} =
    object $
    catMaybes
    [ (Just . ("BucketName",) . toJSON) _sESReceiptRuleS3ActionBucketName
    , fmap (("KmsKeyArn",) . toJSON) _sESReceiptRuleS3ActionKmsKeyArn
    , fmap (("ObjectKeyPrefix",) . toJSON) _sESReceiptRuleS3ActionObjectKeyPrefix
    , fmap (("TopicArn",) . toJSON) _sESReceiptRuleS3ActionTopicArn
    ]

-- | Constructor for 'SESReceiptRuleS3Action' containing required fields as
-- arguments.
sesReceiptRuleS3Action
  :: Val Text -- ^ 'sesrrsaBucketName'
  -> SESReceiptRuleS3Action
sesReceiptRuleS3Action bucketNamearg =
  SESReceiptRuleS3Action
  { _sESReceiptRuleS3ActionBucketName = bucketNamearg
  , _sESReceiptRuleS3ActionKmsKeyArn = Nothing
  , _sESReceiptRuleS3ActionObjectKeyPrefix = Nothing
  , _sESReceiptRuleS3ActionTopicArn = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-s3action.html#cfn-ses-receiptrule-s3action-bucketname
sesrrsaBucketName :: Lens' SESReceiptRuleS3Action (Val Text)
sesrrsaBucketName = lens _sESReceiptRuleS3ActionBucketName (\s a -> s { _sESReceiptRuleS3ActionBucketName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-s3action.html#cfn-ses-receiptrule-s3action-kmskeyarn
sesrrsaKmsKeyArn :: Lens' SESReceiptRuleS3Action (Maybe (Val Text))
sesrrsaKmsKeyArn = lens _sESReceiptRuleS3ActionKmsKeyArn (\s a -> s { _sESReceiptRuleS3ActionKmsKeyArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-s3action.html#cfn-ses-receiptrule-s3action-objectkeyprefix
sesrrsaObjectKeyPrefix :: Lens' SESReceiptRuleS3Action (Maybe (Val Text))
sesrrsaObjectKeyPrefix = lens _sESReceiptRuleS3ActionObjectKeyPrefix (\s a -> s { _sESReceiptRuleS3ActionObjectKeyPrefix = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-s3action.html#cfn-ses-receiptrule-s3action-topicarn
sesrrsaTopicArn :: Lens' SESReceiptRuleS3Action (Maybe (Val Text))
sesrrsaTopicArn = lens _sESReceiptRuleS3ActionTopicArn (\s a -> s { _sESReceiptRuleS3ActionTopicArn = a })
