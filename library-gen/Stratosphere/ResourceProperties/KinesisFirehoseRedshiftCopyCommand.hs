{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | CopyCommand is a property of the Amazon Kinesis Firehose DeliveryStream
-- RedshiftDestinationConfiguration property that configures the Amazon
-- Redshift COPY command that Amazon Kinesis Firehose (Firehose) uses to load
-- data into an Amazon Redshift cluster from an S3 bucket.

module Stratosphere.ResourceProperties.KinesisFirehoseRedshiftCopyCommand where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for KinesisFirehoseRedshiftCopyCommand. See
-- 'kinesisFirehoseRedshiftCopyCommand' for a more convenient constructor.
data KinesisFirehoseRedshiftCopyCommand =
  KinesisFirehoseRedshiftCopyCommand
  { _kinesisFirehoseRedshiftCopyCommandCopyOptions :: Maybe (Val Text)
  , _kinesisFirehoseRedshiftCopyCommandDataTableColumns :: Maybe (Val Text)
  , _kinesisFirehoseRedshiftCopyCommandDataTableName :: Val Text
  } deriving (Show, Generic)

instance ToJSON KinesisFirehoseRedshiftCopyCommand where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 35, omitNothingFields = True }

instance FromJSON KinesisFirehoseRedshiftCopyCommand where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 35, omitNothingFields = True }

-- | Constructor for 'KinesisFirehoseRedshiftCopyCommand' containing required
-- fields as arguments.
kinesisFirehoseRedshiftCopyCommand
  :: Val Text -- ^ 'kfrccDataTableName'
  -> KinesisFirehoseRedshiftCopyCommand
kinesisFirehoseRedshiftCopyCommand dataTableNamearg =
  KinesisFirehoseRedshiftCopyCommand
  { _kinesisFirehoseRedshiftCopyCommandCopyOptions = Nothing
  , _kinesisFirehoseRedshiftCopyCommandDataTableColumns = Nothing
  , _kinesisFirehoseRedshiftCopyCommandDataTableName = dataTableNamearg
  }

-- | Parameters to use with the Amazon Redshift COPY command. For examples,
-- see the CopyOptions content for the CopyCommand data type in the Amazon
-- Kinesis Firehose API Reference.
kfrccCopyOptions :: Lens' KinesisFirehoseRedshiftCopyCommand (Maybe (Val Text))
kfrccCopyOptions = lens _kinesisFirehoseRedshiftCopyCommandCopyOptions (\s a -> s { _kinesisFirehoseRedshiftCopyCommandCopyOptions = a })

-- | A comma-separated list of the column names in the table that Firehose
-- copies data to.
kfrccDataTableColumns :: Lens' KinesisFirehoseRedshiftCopyCommand (Maybe (Val Text))
kfrccDataTableColumns = lens _kinesisFirehoseRedshiftCopyCommandDataTableColumns (\s a -> s { _kinesisFirehoseRedshiftCopyCommandDataTableColumns = a })

-- | The name of the table where Firehose adds the copied data.
kfrccDataTableName :: Lens' KinesisFirehoseRedshiftCopyCommand (Val Text)
kfrccDataTableName = lens _kinesisFirehoseRedshiftCopyCommandDataTableName (\s a -> s { _kinesisFirehoseRedshiftCopyCommandDataTableName = a })