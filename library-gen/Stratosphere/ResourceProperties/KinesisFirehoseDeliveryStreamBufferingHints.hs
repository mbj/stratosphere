
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-bufferinghints.html

module Stratosphere.ResourceProperties.KinesisFirehoseDeliveryStreamBufferingHints where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for
-- KinesisFirehoseDeliveryStreamBufferingHints. See
-- 'kinesisFirehoseDeliveryStreamBufferingHints' for a more convenient
-- constructor.
data KinesisFirehoseDeliveryStreamBufferingHints =
  KinesisFirehoseDeliveryStreamBufferingHints
  { _kinesisFirehoseDeliveryStreamBufferingHintsIntervalInSeconds :: Maybe (Val Integer)
  , _kinesisFirehoseDeliveryStreamBufferingHintsSizeInMBs :: Maybe (Val Integer)
  } deriving (Show, Eq)

instance ToJSON KinesisFirehoseDeliveryStreamBufferingHints where
  toJSON KinesisFirehoseDeliveryStreamBufferingHints{..} =
    object $
    catMaybes
    [ fmap (("IntervalInSeconds",) . toJSON) _kinesisFirehoseDeliveryStreamBufferingHintsIntervalInSeconds
    , fmap (("SizeInMBs",) . toJSON) _kinesisFirehoseDeliveryStreamBufferingHintsSizeInMBs
    ]

-- | Constructor for 'KinesisFirehoseDeliveryStreamBufferingHints' containing
-- required fields as arguments.
kinesisFirehoseDeliveryStreamBufferingHints
  :: KinesisFirehoseDeliveryStreamBufferingHints
kinesisFirehoseDeliveryStreamBufferingHints  =
  KinesisFirehoseDeliveryStreamBufferingHints
  { _kinesisFirehoseDeliveryStreamBufferingHintsIntervalInSeconds = Nothing
  , _kinesisFirehoseDeliveryStreamBufferingHintsSizeInMBs = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-bufferinghints.html#cfn-kinesisfirehose-deliverystream-bufferinghints-intervalinseconds
kfdsbhIntervalInSeconds :: Lens' KinesisFirehoseDeliveryStreamBufferingHints (Maybe (Val Integer))
kfdsbhIntervalInSeconds = lens _kinesisFirehoseDeliveryStreamBufferingHintsIntervalInSeconds (\s a -> s { _kinesisFirehoseDeliveryStreamBufferingHintsIntervalInSeconds = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-bufferinghints.html#cfn-kinesisfirehose-deliverystream-bufferinghints-sizeinmbs
kfdsbhSizeInMBs :: Lens' KinesisFirehoseDeliveryStreamBufferingHints (Maybe (Val Integer))
kfdsbhSizeInMBs = lens _kinesisFirehoseDeliveryStreamBufferingHintsSizeInMBs (\s a -> s { _kinesisFirehoseDeliveryStreamBufferingHintsSizeInMBs = a })
