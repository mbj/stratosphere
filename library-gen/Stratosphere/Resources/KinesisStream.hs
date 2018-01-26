{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesis-stream.html

module Stratosphere.Resources.KinesisStream where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values
import Stratosphere.ResourceProperties.KinesisStreamStreamEncryption
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for KinesisStream. See 'kinesisStream' for a
-- more convenient constructor.
data KinesisStream =
  KinesisStream
  { _kinesisStreamName :: Maybe (Val Text)
  , _kinesisStreamRetentionPeriodHours :: Maybe (Val Integer)
  , _kinesisStreamShardCount :: Val Integer
  , _kinesisStreamStreamEncryption :: Maybe KinesisStreamStreamEncryption
  , _kinesisStreamTags :: Maybe [Tag]
  } deriving (Show, Eq)

instance ToJSON KinesisStream where
  toJSON KinesisStream{..} =
    object $
    catMaybes
    [ fmap (("Name",) . toJSON) _kinesisStreamName
    , fmap (("RetentionPeriodHours",) . toJSON . fmap Integer') _kinesisStreamRetentionPeriodHours
    , (Just . ("ShardCount",) . toJSON . fmap Integer') _kinesisStreamShardCount
    , fmap (("StreamEncryption",) . toJSON) _kinesisStreamStreamEncryption
    , fmap (("Tags",) . toJSON) _kinesisStreamTags
    ]

instance FromJSON KinesisStream where
  parseJSON (Object obj) =
    KinesisStream <$>
      (obj .:? "Name") <*>
      fmap (fmap (fmap unInteger')) (obj .:? "RetentionPeriodHours") <*>
      fmap (fmap unInteger') (obj .: "ShardCount") <*>
      (obj .:? "StreamEncryption") <*>
      (obj .:? "Tags")
  parseJSON _ = mempty

-- | Constructor for 'KinesisStream' containing required fields as arguments.
kinesisStream
  :: Val Integer -- ^ 'ksShardCount'
  -> KinesisStream
kinesisStream shardCountarg =
  KinesisStream
  { _kinesisStreamName = Nothing
  , _kinesisStreamRetentionPeriodHours = Nothing
  , _kinesisStreamShardCount = shardCountarg
  , _kinesisStreamStreamEncryption = Nothing
  , _kinesisStreamTags = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesis-stream.html#cfn-kinesis-stream-name
ksName :: Lens' KinesisStream (Maybe (Val Text))
ksName = lens _kinesisStreamName (\s a -> s { _kinesisStreamName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesis-stream.html#cfn-kinesis-stream-retentionperiodhours
ksRetentionPeriodHours :: Lens' KinesisStream (Maybe (Val Integer))
ksRetentionPeriodHours = lens _kinesisStreamRetentionPeriodHours (\s a -> s { _kinesisStreamRetentionPeriodHours = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesis-stream.html#cfn-kinesis-stream-shardcount
ksShardCount :: Lens' KinesisStream (Val Integer)
ksShardCount = lens _kinesisStreamShardCount (\s a -> s { _kinesisStreamShardCount = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesis-stream.html#cfn-kinesis-stream-streamencryption
ksStreamEncryption :: Lens' KinesisStream (Maybe KinesisStreamStreamEncryption)
ksStreamEncryption = lens _kinesisStreamStreamEncryption (\s a -> s { _kinesisStreamStreamEncryption = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesis-stream.html#cfn-kinesis-stream-tags
ksTags :: Lens' KinesisStream (Maybe [Tag])
ksTags = lens _kinesisStreamTags (\s a -> s { _kinesisStreamTags = a })
