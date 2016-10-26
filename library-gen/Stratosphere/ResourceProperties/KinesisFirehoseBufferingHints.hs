{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | BufferingHints is a property of the Amazon Kinesis Firehose
-- DeliveryStream that specifies how Amazon Kinesis Firehose (Firehose)
-- buffers incoming data while delivering it to the destination. The first
-- buffer condition that is satisfied triggers Firehose to deliver the data.

module Stratosphere.ResourceProperties.KinesisFirehoseBufferingHints where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for KinesisFirehoseBufferingHints. See
-- 'kinesisFirehoseBufferingHints' for a more convenient constructor.
data KinesisFirehoseBufferingHints =
  KinesisFirehoseBufferingHints
  { _kinesisFirehoseBufferingHintsIntervalInSeconds :: Val Integer'
  , _kinesisFirehoseBufferingHintsSizeInMBs :: Val Integer'
  } deriving (Show, Generic)

instance ToJSON KinesisFirehoseBufferingHints where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 30, omitNothingFields = True }

instance FromJSON KinesisFirehoseBufferingHints where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 30, omitNothingFields = True }

-- | Constructor for 'KinesisFirehoseBufferingHints' containing required
-- fields as arguments.
kinesisFirehoseBufferingHints
  :: Val Integer' -- ^ 'kfbhIntervalInSeconds'
  -> Val Integer' -- ^ 'kfbhSizeInMBs'
  -> KinesisFirehoseBufferingHints
kinesisFirehoseBufferingHints intervalInSecondsarg sizeInMBsarg =
  KinesisFirehoseBufferingHints
  { _kinesisFirehoseBufferingHintsIntervalInSeconds = intervalInSecondsarg
  , _kinesisFirehoseBufferingHintsSizeInMBs = sizeInMBsarg
  }

-- | The length of time, in seconds, that Firehose buffers incoming data
-- before delivering it to the destination. The default value is 300. The
-- minimum value is 60. The maximum value 900.
kfbhIntervalInSeconds :: Lens' KinesisFirehoseBufferingHints (Val Integer')
kfbhIntervalInSeconds = lens _kinesisFirehoseBufferingHintsIntervalInSeconds (\s a -> s { _kinesisFirehoseBufferingHintsIntervalInSeconds = a })

-- | The size of the buffer, in MBs, that Firehose uses for incoming data
-- before delivering it to the destination. The default value is 5. The
-- minimum value is 1. The maximum value is 128. We recommend setting
-- SizeInMBs to a value greater than the amount of data you typically ingest
-- into the delivery stream in 10 seconds. For example, if you typically
-- ingest data at 1 MB/sec set SizeInMBs to be 10 MB or higher.
kfbhSizeInMBs :: Lens' KinesisFirehoseBufferingHints (Val Integer')
kfbhSizeInMBs = lens _kinesisFirehoseBufferingHintsSizeInMBs (\s a -> s { _kinesisFirehoseBufferingHintsSizeInMBs = a })