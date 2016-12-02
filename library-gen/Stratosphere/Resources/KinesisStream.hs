{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesis-stream.html

module Stratosphere.Resources.KinesisStream where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for KinesisStream. See 'kinesisStream' for a
-- | more convenient constructor.
data KinesisStream =
  KinesisStream
  { _kinesisStreamName :: Maybe (Val Text)
  , _kinesisStreamShardCount :: Val Integer'
  , _kinesisStreamTags :: Maybe [Tag]
  } deriving (Show, Generic)

instance ToJSON KinesisStream where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 14, omitNothingFields = True }

instance FromJSON KinesisStream where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 14, omitNothingFields = True }

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
