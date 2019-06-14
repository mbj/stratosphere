{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-serializer.html

module Stratosphere.ResourceProperties.KinesisFirehoseDeliveryStreamSerializer where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.KinesisFirehoseDeliveryStreamOrcSerDe
import Stratosphere.ResourceProperties.KinesisFirehoseDeliveryStreamParquetSerDe

-- | Full data type definition for KinesisFirehoseDeliveryStreamSerializer.
-- See 'kinesisFirehoseDeliveryStreamSerializer' for a more convenient
-- constructor.
data KinesisFirehoseDeliveryStreamSerializer =
  KinesisFirehoseDeliveryStreamSerializer
  { _kinesisFirehoseDeliveryStreamSerializerOrcSerDe :: Maybe KinesisFirehoseDeliveryStreamOrcSerDe
  , _kinesisFirehoseDeliveryStreamSerializerParquetSerDe :: Maybe KinesisFirehoseDeliveryStreamParquetSerDe
  } deriving (Show, Eq)

instance ToJSON KinesisFirehoseDeliveryStreamSerializer where
  toJSON KinesisFirehoseDeliveryStreamSerializer{..} =
    object $
    catMaybes
    [ fmap (("OrcSerDe",) . toJSON) _kinesisFirehoseDeliveryStreamSerializerOrcSerDe
    , fmap (("ParquetSerDe",) . toJSON) _kinesisFirehoseDeliveryStreamSerializerParquetSerDe
    ]

-- | Constructor for 'KinesisFirehoseDeliveryStreamSerializer' containing
-- required fields as arguments.
kinesisFirehoseDeliveryStreamSerializer
  :: KinesisFirehoseDeliveryStreamSerializer
kinesisFirehoseDeliveryStreamSerializer  =
  KinesisFirehoseDeliveryStreamSerializer
  { _kinesisFirehoseDeliveryStreamSerializerOrcSerDe = Nothing
  , _kinesisFirehoseDeliveryStreamSerializerParquetSerDe = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-serializer.html#cfn-kinesisfirehose-deliverystream-serializer-orcserde
kfdssOrcSerDe :: Lens' KinesisFirehoseDeliveryStreamSerializer (Maybe KinesisFirehoseDeliveryStreamOrcSerDe)
kfdssOrcSerDe = lens _kinesisFirehoseDeliveryStreamSerializerOrcSerDe (\s a -> s { _kinesisFirehoseDeliveryStreamSerializerOrcSerDe = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-serializer.html#cfn-kinesisfirehose-deliverystream-serializer-parquetserde
kfdssParquetSerDe :: Lens' KinesisFirehoseDeliveryStreamSerializer (Maybe KinesisFirehoseDeliveryStreamParquetSerDe)
kfdssParquetSerDe = lens _kinesisFirehoseDeliveryStreamSerializerParquetSerDe (\s a -> s { _kinesisFirehoseDeliveryStreamSerializerParquetSerDe = a })
