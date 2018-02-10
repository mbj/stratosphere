{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-copycommand.html

module Stratosphere.ResourceProperties.KinesisFirehoseDeliveryStreamCopyCommand where

import Stratosphere.ResourceImports


-- | Full data type definition for KinesisFirehoseDeliveryStreamCopyCommand.
-- See 'kinesisFirehoseDeliveryStreamCopyCommand' for a more convenient
-- constructor.
data KinesisFirehoseDeliveryStreamCopyCommand =
  KinesisFirehoseDeliveryStreamCopyCommand
  { _kinesisFirehoseDeliveryStreamCopyCommandCopyOptions :: Maybe (Val Text)
  , _kinesisFirehoseDeliveryStreamCopyCommandDataTableColumns :: Maybe (Val Text)
  , _kinesisFirehoseDeliveryStreamCopyCommandDataTableName :: Val Text
  } deriving (Show, Eq)

instance ToJSON KinesisFirehoseDeliveryStreamCopyCommand where
  toJSON KinesisFirehoseDeliveryStreamCopyCommand{..} =
    object $
    catMaybes
    [ fmap (("CopyOptions",) . toJSON) _kinesisFirehoseDeliveryStreamCopyCommandCopyOptions
    , fmap (("DataTableColumns",) . toJSON) _kinesisFirehoseDeliveryStreamCopyCommandDataTableColumns
    , (Just . ("DataTableName",) . toJSON) _kinesisFirehoseDeliveryStreamCopyCommandDataTableName
    ]

instance FromJSON KinesisFirehoseDeliveryStreamCopyCommand where
  parseJSON (Object obj) =
    KinesisFirehoseDeliveryStreamCopyCommand <$>
      (obj .:? "CopyOptions") <*>
      (obj .:? "DataTableColumns") <*>
      (obj .: "DataTableName")
  parseJSON _ = mempty

-- | Constructor for 'KinesisFirehoseDeliveryStreamCopyCommand' containing
-- required fields as arguments.
kinesisFirehoseDeliveryStreamCopyCommand
  :: Val Text -- ^ 'kfdsccDataTableName'
  -> KinesisFirehoseDeliveryStreamCopyCommand
kinesisFirehoseDeliveryStreamCopyCommand dataTableNamearg =
  KinesisFirehoseDeliveryStreamCopyCommand
  { _kinesisFirehoseDeliveryStreamCopyCommandCopyOptions = Nothing
  , _kinesisFirehoseDeliveryStreamCopyCommandDataTableColumns = Nothing
  , _kinesisFirehoseDeliveryStreamCopyCommandDataTableName = dataTableNamearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-copycommand.html#cfn-kinesisfirehose-deliverystream-copycommand-copyoptions
kfdsccCopyOptions :: Lens' KinesisFirehoseDeliveryStreamCopyCommand (Maybe (Val Text))
kfdsccCopyOptions = lens _kinesisFirehoseDeliveryStreamCopyCommandCopyOptions (\s a -> s { _kinesisFirehoseDeliveryStreamCopyCommandCopyOptions = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-copycommand.html#cfn-kinesisfirehose-deliverystream-copycommand-datatablecolumns
kfdsccDataTableColumns :: Lens' KinesisFirehoseDeliveryStreamCopyCommand (Maybe (Val Text))
kfdsccDataTableColumns = lens _kinesisFirehoseDeliveryStreamCopyCommandDataTableColumns (\s a -> s { _kinesisFirehoseDeliveryStreamCopyCommandDataTableColumns = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-copycommand.html#cfn-kinesisfirehose-deliverystream-copycommand-datatablename
kfdsccDataTableName :: Lens' KinesisFirehoseDeliveryStreamCopyCommand (Val Text)
kfdsccDataTableName = lens _kinesisFirehoseDeliveryStreamCopyCommandDataTableName (\s a -> s { _kinesisFirehoseDeliveryStreamCopyCommandDataTableName = a })
