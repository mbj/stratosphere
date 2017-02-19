{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-s3.html

module Stratosphere.ResourceProperties.IoTTopicRuleS3Action where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for IoTTopicRuleS3Action. See
-- | 'ioTTopicRuleS3Action' for a more convenient constructor.
data IoTTopicRuleS3Action =
  IoTTopicRuleS3Action
  { _ioTTopicRuleS3ActionBucketName :: Val Text
  , _ioTTopicRuleS3ActionKey :: Val Text
  , _ioTTopicRuleS3ActionRoleArn :: Val Text
  } deriving (Show, Eq)

instance ToJSON IoTTopicRuleS3Action where
  toJSON IoTTopicRuleS3Action{..} =
    object $
    catMaybes
    [ Just ("BucketName" .= _ioTTopicRuleS3ActionBucketName)
    , Just ("Key" .= _ioTTopicRuleS3ActionKey)
    , Just ("RoleArn" .= _ioTTopicRuleS3ActionRoleArn)
    ]

instance FromJSON IoTTopicRuleS3Action where
  parseJSON (Object obj) =
    IoTTopicRuleS3Action <$>
      obj .: "BucketName" <*>
      obj .: "Key" <*>
      obj .: "RoleArn"
  parseJSON _ = mempty

-- | Constructor for 'IoTTopicRuleS3Action' containing required fields as
-- | arguments.
ioTTopicRuleS3Action
  :: Val Text -- ^ 'ittrs3aBucketName'
  -> Val Text -- ^ 'ittrs3aKey'
  -> Val Text -- ^ 'ittrs3aRoleArn'
  -> IoTTopicRuleS3Action
ioTTopicRuleS3Action bucketNamearg keyarg roleArnarg =
  IoTTopicRuleS3Action
  { _ioTTopicRuleS3ActionBucketName = bucketNamearg
  , _ioTTopicRuleS3ActionKey = keyarg
  , _ioTTopicRuleS3ActionRoleArn = roleArnarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-s3.html#cfn-iot-s3-bucketname
ittrs3aBucketName :: Lens' IoTTopicRuleS3Action (Val Text)
ittrs3aBucketName = lens _ioTTopicRuleS3ActionBucketName (\s a -> s { _ioTTopicRuleS3ActionBucketName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-s3.html#cfn-iot-s3-key
ittrs3aKey :: Lens' IoTTopicRuleS3Action (Val Text)
ittrs3aKey = lens _ioTTopicRuleS3ActionKey (\s a -> s { _ioTTopicRuleS3ActionKey = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-s3.html#cfn-iot-s3-rolearn
ittrs3aRoleArn :: Lens' IoTTopicRuleS3Action (Val Text)
ittrs3aRoleArn = lens _ioTTopicRuleS3ActionRoleArn (\s a -> s { _ioTTopicRuleS3ActionRoleArn = a })
