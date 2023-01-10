
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-orcserde.html

module Stratosphere.ResourceProperties.KinesisFirehoseDeliveryStreamOrcSerDe where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for KinesisFirehoseDeliveryStreamOrcSerDe. See
-- 'kinesisFirehoseDeliveryStreamOrcSerDe' for a more convenient
-- constructor.
data KinesisFirehoseDeliveryStreamOrcSerDe =
  KinesisFirehoseDeliveryStreamOrcSerDe
  { _kinesisFirehoseDeliveryStreamOrcSerDeBlockSizeBytes :: Maybe (Val Integer)
  , _kinesisFirehoseDeliveryStreamOrcSerDeBloomFilterColumns :: Maybe (ValList Text)
  , _kinesisFirehoseDeliveryStreamOrcSerDeBloomFilterFalsePositiveProbability :: Maybe (Val Double)
  , _kinesisFirehoseDeliveryStreamOrcSerDeCompression :: Maybe (Val Text)
  , _kinesisFirehoseDeliveryStreamOrcSerDeDictionaryKeyThreshold :: Maybe (Val Double)
  , _kinesisFirehoseDeliveryStreamOrcSerDeEnablePadding :: Maybe (Val Bool)
  , _kinesisFirehoseDeliveryStreamOrcSerDeFormatVersion :: Maybe (Val Text)
  , _kinesisFirehoseDeliveryStreamOrcSerDePaddingTolerance :: Maybe (Val Double)
  , _kinesisFirehoseDeliveryStreamOrcSerDeRowIndexStride :: Maybe (Val Integer)
  , _kinesisFirehoseDeliveryStreamOrcSerDeStripeSizeBytes :: Maybe (Val Integer)
  } deriving (Show, Eq)

instance ToJSON KinesisFirehoseDeliveryStreamOrcSerDe where
  toJSON KinesisFirehoseDeliveryStreamOrcSerDe{..} =
    object $
    catMaybes
    [ fmap (("BlockSizeBytes",) . toJSON) _kinesisFirehoseDeliveryStreamOrcSerDeBlockSizeBytes
    , fmap (("BloomFilterColumns",) . toJSON) _kinesisFirehoseDeliveryStreamOrcSerDeBloomFilterColumns
    , fmap (("BloomFilterFalsePositiveProbability",) . toJSON) _kinesisFirehoseDeliveryStreamOrcSerDeBloomFilterFalsePositiveProbability
    , fmap (("Compression",) . toJSON) _kinesisFirehoseDeliveryStreamOrcSerDeCompression
    , fmap (("DictionaryKeyThreshold",) . toJSON) _kinesisFirehoseDeliveryStreamOrcSerDeDictionaryKeyThreshold
    , fmap (("EnablePadding",) . toJSON) _kinesisFirehoseDeliveryStreamOrcSerDeEnablePadding
    , fmap (("FormatVersion",) . toJSON) _kinesisFirehoseDeliveryStreamOrcSerDeFormatVersion
    , fmap (("PaddingTolerance",) . toJSON) _kinesisFirehoseDeliveryStreamOrcSerDePaddingTolerance
    , fmap (("RowIndexStride",) . toJSON) _kinesisFirehoseDeliveryStreamOrcSerDeRowIndexStride
    , fmap (("StripeSizeBytes",) . toJSON) _kinesisFirehoseDeliveryStreamOrcSerDeStripeSizeBytes
    ]

-- | Constructor for 'KinesisFirehoseDeliveryStreamOrcSerDe' containing
-- required fields as arguments.
kinesisFirehoseDeliveryStreamOrcSerDe
  :: KinesisFirehoseDeliveryStreamOrcSerDe
kinesisFirehoseDeliveryStreamOrcSerDe  =
  KinesisFirehoseDeliveryStreamOrcSerDe
  { _kinesisFirehoseDeliveryStreamOrcSerDeBlockSizeBytes = Nothing
  , _kinesisFirehoseDeliveryStreamOrcSerDeBloomFilterColumns = Nothing
  , _kinesisFirehoseDeliveryStreamOrcSerDeBloomFilterFalsePositiveProbability = Nothing
  , _kinesisFirehoseDeliveryStreamOrcSerDeCompression = Nothing
  , _kinesisFirehoseDeliveryStreamOrcSerDeDictionaryKeyThreshold = Nothing
  , _kinesisFirehoseDeliveryStreamOrcSerDeEnablePadding = Nothing
  , _kinesisFirehoseDeliveryStreamOrcSerDeFormatVersion = Nothing
  , _kinesisFirehoseDeliveryStreamOrcSerDePaddingTolerance = Nothing
  , _kinesisFirehoseDeliveryStreamOrcSerDeRowIndexStride = Nothing
  , _kinesisFirehoseDeliveryStreamOrcSerDeStripeSizeBytes = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-orcserde.html#cfn-kinesisfirehose-deliverystream-orcserde-blocksizebytes
kfdsosdBlockSizeBytes :: Lens' KinesisFirehoseDeliveryStreamOrcSerDe (Maybe (Val Integer))
kfdsosdBlockSizeBytes = lens _kinesisFirehoseDeliveryStreamOrcSerDeBlockSizeBytes (\s a -> s { _kinesisFirehoseDeliveryStreamOrcSerDeBlockSizeBytes = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-orcserde.html#cfn-kinesisfirehose-deliverystream-orcserde-bloomfiltercolumns
kfdsosdBloomFilterColumns :: Lens' KinesisFirehoseDeliveryStreamOrcSerDe (Maybe (ValList Text))
kfdsosdBloomFilterColumns = lens _kinesisFirehoseDeliveryStreamOrcSerDeBloomFilterColumns (\s a -> s { _kinesisFirehoseDeliveryStreamOrcSerDeBloomFilterColumns = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-orcserde.html#cfn-kinesisfirehose-deliverystream-orcserde-bloomfilterfalsepositiveprobability
kfdsosdBloomFilterFalsePositiveProbability :: Lens' KinesisFirehoseDeliveryStreamOrcSerDe (Maybe (Val Double))
kfdsosdBloomFilterFalsePositiveProbability = lens _kinesisFirehoseDeliveryStreamOrcSerDeBloomFilterFalsePositiveProbability (\s a -> s { _kinesisFirehoseDeliveryStreamOrcSerDeBloomFilterFalsePositiveProbability = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-orcserde.html#cfn-kinesisfirehose-deliverystream-orcserde-compression
kfdsosdCompression :: Lens' KinesisFirehoseDeliveryStreamOrcSerDe (Maybe (Val Text))
kfdsosdCompression = lens _kinesisFirehoseDeliveryStreamOrcSerDeCompression (\s a -> s { _kinesisFirehoseDeliveryStreamOrcSerDeCompression = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-orcserde.html#cfn-kinesisfirehose-deliverystream-orcserde-dictionarykeythreshold
kfdsosdDictionaryKeyThreshold :: Lens' KinesisFirehoseDeliveryStreamOrcSerDe (Maybe (Val Double))
kfdsosdDictionaryKeyThreshold = lens _kinesisFirehoseDeliveryStreamOrcSerDeDictionaryKeyThreshold (\s a -> s { _kinesisFirehoseDeliveryStreamOrcSerDeDictionaryKeyThreshold = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-orcserde.html#cfn-kinesisfirehose-deliverystream-orcserde-enablepadding
kfdsosdEnablePadding :: Lens' KinesisFirehoseDeliveryStreamOrcSerDe (Maybe (Val Bool))
kfdsosdEnablePadding = lens _kinesisFirehoseDeliveryStreamOrcSerDeEnablePadding (\s a -> s { _kinesisFirehoseDeliveryStreamOrcSerDeEnablePadding = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-orcserde.html#cfn-kinesisfirehose-deliverystream-orcserde-formatversion
kfdsosdFormatVersion :: Lens' KinesisFirehoseDeliveryStreamOrcSerDe (Maybe (Val Text))
kfdsosdFormatVersion = lens _kinesisFirehoseDeliveryStreamOrcSerDeFormatVersion (\s a -> s { _kinesisFirehoseDeliveryStreamOrcSerDeFormatVersion = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-orcserde.html#cfn-kinesisfirehose-deliverystream-orcserde-paddingtolerance
kfdsosdPaddingTolerance :: Lens' KinesisFirehoseDeliveryStreamOrcSerDe (Maybe (Val Double))
kfdsosdPaddingTolerance = lens _kinesisFirehoseDeliveryStreamOrcSerDePaddingTolerance (\s a -> s { _kinesisFirehoseDeliveryStreamOrcSerDePaddingTolerance = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-orcserde.html#cfn-kinesisfirehose-deliverystream-orcserde-rowindexstride
kfdsosdRowIndexStride :: Lens' KinesisFirehoseDeliveryStreamOrcSerDe (Maybe (Val Integer))
kfdsosdRowIndexStride = lens _kinesisFirehoseDeliveryStreamOrcSerDeRowIndexStride (\s a -> s { _kinesisFirehoseDeliveryStreamOrcSerDeRowIndexStride = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-orcserde.html#cfn-kinesisfirehose-deliverystream-orcserde-stripesizebytes
kfdsosdStripeSizeBytes :: Lens' KinesisFirehoseDeliveryStreamOrcSerDe (Maybe (Val Integer))
kfdsosdStripeSizeBytes = lens _kinesisFirehoseDeliveryStreamOrcSerDeStripeSizeBytes (\s a -> s { _kinesisFirehoseDeliveryStreamOrcSerDeStripeSizeBytes = a })
