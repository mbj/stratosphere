{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-kinesisdeliverystream-redshiftdestinationconfiguration-copycommand.html

module Stratosphere.ResourceProperties.KinesisFirehoseDeliveryStreamCopyCommand where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for KinesisFirehoseDeliveryStreamCopyCommand.
-- | See 'kinesisFirehoseDeliveryStreamCopyCommand' for a more convenient
-- | constructor.
data KinesisFirehoseDeliveryStreamCopyCommand =
  KinesisFirehoseDeliveryStreamCopyCommand
  { _kinesisFirehoseDeliveryStreamCopyCommandCopyOptions :: Maybe (Val Text)
  , _kinesisFirehoseDeliveryStreamCopyCommandDataTableColumns :: Maybe (Val Text)
  , _kinesisFirehoseDeliveryStreamCopyCommandDataTableName :: Val Text
  } deriving (Show, Eq)

instance ToJSON KinesisFirehoseDeliveryStreamCopyCommand where
  toJSON KinesisFirehoseDeliveryStreamCopyCommand{..} =
    object
    [ "CopyOptions" .= _kinesisFirehoseDeliveryStreamCopyCommandCopyOptions
    , "DataTableColumns" .= _kinesisFirehoseDeliveryStreamCopyCommandDataTableColumns
    , "DataTableName" .= _kinesisFirehoseDeliveryStreamCopyCommandDataTableName
    ]

instance FromJSON KinesisFirehoseDeliveryStreamCopyCommand where
  parseJSON (Object obj) =
    KinesisFirehoseDeliveryStreamCopyCommand <$>
      obj .: "CopyOptions" <*>
      obj .: "DataTableColumns" <*>
      obj .: "DataTableName"
  parseJSON _ = mempty

-- | Constructor for 'KinesisFirehoseDeliveryStreamCopyCommand' containing
-- | required fields as arguments.
kinesisFirehoseDeliveryStreamCopyCommand
  :: Val Text -- ^ 'kfdsccDataTableName'
  -> KinesisFirehoseDeliveryStreamCopyCommand
kinesisFirehoseDeliveryStreamCopyCommand dataTableNamearg =
  KinesisFirehoseDeliveryStreamCopyCommand
  { _kinesisFirehoseDeliveryStreamCopyCommandCopyOptions = Nothing
  , _kinesisFirehoseDeliveryStreamCopyCommandDataTableColumns = Nothing
  , _kinesisFirehoseDeliveryStreamCopyCommandDataTableName = dataTableNamearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-kinesisdeliverystream-redshiftdestinationconfiguration-copycommand.html#cfn-kinesisfirehose-kinesisdeliverystream-redshiftdestinationconfiguration-copycommand-copyoptions
kfdsccCopyOptions :: Lens' KinesisFirehoseDeliveryStreamCopyCommand (Maybe (Val Text))
kfdsccCopyOptions = lens _kinesisFirehoseDeliveryStreamCopyCommandCopyOptions (\s a -> s { _kinesisFirehoseDeliveryStreamCopyCommandCopyOptions = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-kinesisdeliverystream-redshiftdestinationconfiguration-copycommand.html#cfn-kinesisfirehose-kinesisdeliverystream-redshiftdestinationconfiguration-copycommand-datatablecolumns
kfdsccDataTableColumns :: Lens' KinesisFirehoseDeliveryStreamCopyCommand (Maybe (Val Text))
kfdsccDataTableColumns = lens _kinesisFirehoseDeliveryStreamCopyCommandDataTableColumns (\s a -> s { _kinesisFirehoseDeliveryStreamCopyCommandDataTableColumns = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-kinesisdeliverystream-redshiftdestinationconfiguration-copycommand.html#cfn-kinesisfirehose-kinesisdeliverystream-redshiftdestinationconfiguration-copycommand-datatablename
kfdsccDataTableName :: Lens' KinesisFirehoseDeliveryStreamCopyCommand (Val Text)
kfdsccDataTableName = lens _kinesisFirehoseDeliveryStreamCopyCommandDataTableName (\s a -> s { _kinesisFirehoseDeliveryStreamCopyCommandDataTableName = a })
