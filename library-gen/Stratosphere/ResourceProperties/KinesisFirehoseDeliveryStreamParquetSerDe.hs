
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-parquetserde.html

module Stratosphere.ResourceProperties.KinesisFirehoseDeliveryStreamParquetSerDe where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for KinesisFirehoseDeliveryStreamParquetSerDe.
-- See 'kinesisFirehoseDeliveryStreamParquetSerDe' for a more convenient
-- constructor.
data KinesisFirehoseDeliveryStreamParquetSerDe =
  KinesisFirehoseDeliveryStreamParquetSerDe
  { _kinesisFirehoseDeliveryStreamParquetSerDeBlockSizeBytes :: Maybe (Val Integer)
  , _kinesisFirehoseDeliveryStreamParquetSerDeCompression :: Maybe (Val Text)
  , _kinesisFirehoseDeliveryStreamParquetSerDeEnableDictionaryCompression :: Maybe (Val Bool)
  , _kinesisFirehoseDeliveryStreamParquetSerDeMaxPaddingBytes :: Maybe (Val Integer)
  , _kinesisFirehoseDeliveryStreamParquetSerDePageSizeBytes :: Maybe (Val Integer)
  , _kinesisFirehoseDeliveryStreamParquetSerDeWriterVersion :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON KinesisFirehoseDeliveryStreamParquetSerDe where
  toJSON KinesisFirehoseDeliveryStreamParquetSerDe{..} =
    object $
    catMaybes
    [ fmap (("BlockSizeBytes",) . toJSON) _kinesisFirehoseDeliveryStreamParquetSerDeBlockSizeBytes
    , fmap (("Compression",) . toJSON) _kinesisFirehoseDeliveryStreamParquetSerDeCompression
    , fmap (("EnableDictionaryCompression",) . toJSON) _kinesisFirehoseDeliveryStreamParquetSerDeEnableDictionaryCompression
    , fmap (("MaxPaddingBytes",) . toJSON) _kinesisFirehoseDeliveryStreamParquetSerDeMaxPaddingBytes
    , fmap (("PageSizeBytes",) . toJSON) _kinesisFirehoseDeliveryStreamParquetSerDePageSizeBytes
    , fmap (("WriterVersion",) . toJSON) _kinesisFirehoseDeliveryStreamParquetSerDeWriterVersion
    ]

-- | Constructor for 'KinesisFirehoseDeliveryStreamParquetSerDe' containing
-- required fields as arguments.
kinesisFirehoseDeliveryStreamParquetSerDe
  :: KinesisFirehoseDeliveryStreamParquetSerDe
kinesisFirehoseDeliveryStreamParquetSerDe  =
  KinesisFirehoseDeliveryStreamParquetSerDe
  { _kinesisFirehoseDeliveryStreamParquetSerDeBlockSizeBytes = Nothing
  , _kinesisFirehoseDeliveryStreamParquetSerDeCompression = Nothing
  , _kinesisFirehoseDeliveryStreamParquetSerDeEnableDictionaryCompression = Nothing
  , _kinesisFirehoseDeliveryStreamParquetSerDeMaxPaddingBytes = Nothing
  , _kinesisFirehoseDeliveryStreamParquetSerDePageSizeBytes = Nothing
  , _kinesisFirehoseDeliveryStreamParquetSerDeWriterVersion = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-parquetserde.html#cfn-kinesisfirehose-deliverystream-parquetserde-blocksizebytes
kfdspsdBlockSizeBytes :: Lens' KinesisFirehoseDeliveryStreamParquetSerDe (Maybe (Val Integer))
kfdspsdBlockSizeBytes = lens _kinesisFirehoseDeliveryStreamParquetSerDeBlockSizeBytes (\s a -> s { _kinesisFirehoseDeliveryStreamParquetSerDeBlockSizeBytes = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-parquetserde.html#cfn-kinesisfirehose-deliverystream-parquetserde-compression
kfdspsdCompression :: Lens' KinesisFirehoseDeliveryStreamParquetSerDe (Maybe (Val Text))
kfdspsdCompression = lens _kinesisFirehoseDeliveryStreamParquetSerDeCompression (\s a -> s { _kinesisFirehoseDeliveryStreamParquetSerDeCompression = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-parquetserde.html#cfn-kinesisfirehose-deliverystream-parquetserde-enabledictionarycompression
kfdspsdEnableDictionaryCompression :: Lens' KinesisFirehoseDeliveryStreamParquetSerDe (Maybe (Val Bool))
kfdspsdEnableDictionaryCompression = lens _kinesisFirehoseDeliveryStreamParquetSerDeEnableDictionaryCompression (\s a -> s { _kinesisFirehoseDeliveryStreamParquetSerDeEnableDictionaryCompression = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-parquetserde.html#cfn-kinesisfirehose-deliverystream-parquetserde-maxpaddingbytes
kfdspsdMaxPaddingBytes :: Lens' KinesisFirehoseDeliveryStreamParquetSerDe (Maybe (Val Integer))
kfdspsdMaxPaddingBytes = lens _kinesisFirehoseDeliveryStreamParquetSerDeMaxPaddingBytes (\s a -> s { _kinesisFirehoseDeliveryStreamParquetSerDeMaxPaddingBytes = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-parquetserde.html#cfn-kinesisfirehose-deliverystream-parquetserde-pagesizebytes
kfdspsdPageSizeBytes :: Lens' KinesisFirehoseDeliveryStreamParquetSerDe (Maybe (Val Integer))
kfdspsdPageSizeBytes = lens _kinesisFirehoseDeliveryStreamParquetSerDePageSizeBytes (\s a -> s { _kinesisFirehoseDeliveryStreamParquetSerDePageSizeBytes = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-parquetserde.html#cfn-kinesisfirehose-deliverystream-parquetserde-writerversion
kfdspsdWriterVersion :: Lens' KinesisFirehoseDeliveryStreamParquetSerDe (Maybe (Val Text))
kfdspsdWriterVersion = lens _kinesisFirehoseDeliveryStreamParquetSerDeWriterVersion (\s a -> s { _kinesisFirehoseDeliveryStreamParquetSerDeWriterVersion = a })
