{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesis-stream.html

module Stratosphere.Resources.KinesisStream where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for KinesisStream. See 'kinesisStream' for a
-- | more convenient constructor.
data KinesisStream =
  KinesisStream
  { _kinesisStreamName :: Maybe (Val Text)
  , _kinesisStreamShardCount :: Val Integer'
  , _kinesisStreamTags :: Maybe [Tag]
  } deriving (Show, Eq)

instance ToJSON KinesisStream where
  toJSON KinesisStream{..} =
    object
    [ "Name" .= _kinesisStreamName
    , "ShardCount" .= _kinesisStreamShardCount
    , "Tags" .= _kinesisStreamTags
    ]

instance FromJSON KinesisStream where
  parseJSON (Object obj) =
    KinesisStream <$>
      obj .: "Name" <*>
      obj .: "ShardCount" <*>
      obj .: "Tags"
  parseJSON _ = mempty

-- | Constructor for 'KinesisStream' containing required fields as arguments.
kinesisStream
  :: Val Integer' -- ^ 'ksShardCount'
  -> KinesisStream
kinesisStream shardCountarg =
  KinesisStream
  { _kinesisStreamName = Nothing
  , _kinesisStreamShardCount = shardCountarg
  , _kinesisStreamTags = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesis-stream.html#cfn-kinesis-stream-name
ksName :: Lens' KinesisStream (Maybe (Val Text))
ksName = lens _kinesisStreamName (\s a -> s { _kinesisStreamName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesis-stream.html#cfn-kinesis-stream-shardcount
ksShardCount :: Lens' KinesisStream (Val Integer')
ksShardCount = lens _kinesisStreamShardCount (\s a -> s { _kinesisStreamShardCount = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesis-stream.html#cfn-kinesis-stream-tags
ksTags :: Lens' KinesisStream (Maybe [Tag])
ksTags = lens _kinesisStreamTags (\s a -> s { _kinesisStreamTags = a })
