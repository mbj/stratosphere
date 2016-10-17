{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | Creates an Amazon Kinesis stream that captures and transports data
-- records that are emitted from data sources. For information about creating
-- streams, see CreateStream in the Amazon Kinesis API Reference.

module Stratosphere.Resources.KinesisStream where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.ResourceProperties.ResourceTag

-- | Full data type definition for KinesisStream. See 'kinesisStream' for a
-- more convenient constructor.
data KinesisStream =
  KinesisStream
  { _kinesisStreamName :: Maybe (Val Text)
  , _kinesisStreamShardCount :: Val Integer'
  , _kinesisStreamTags :: Maybe [ResourceTag]
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

-- | The name of the Amazon Kinesis stream. If you don't specify a name, AWS
-- CloudFormation generates a unique physical ID and uses that ID for the
-- stream name. For more information, see Name Type. Important If you specify
-- a name, you cannot do updates that require this resource to be replaced.
-- You can still do updates that require no or some interruption. If you must
-- replace the resource, specify a new name.
ksName :: Lens' KinesisStream (Maybe (Val Text))
ksName = lens _kinesisStreamName (\s a -> s { _kinesisStreamName = a })

-- | The number of shards that the stream uses. For greater provisioned
-- throughput, increase the number of shards.
ksShardCount :: Lens' KinesisStream (Val Integer')
ksShardCount = lens _kinesisStreamShardCount (\s a -> s { _kinesisStreamShardCount = a })

-- | An arbitrary set of tags (key–value pairs) to associate with the Amazon
-- Kinesis stream.
ksTags :: Lens' KinesisStream (Maybe [ResourceTag])
ksTags = lens _kinesisStreamTags (\s a -> s { _kinesisStreamTags = a })