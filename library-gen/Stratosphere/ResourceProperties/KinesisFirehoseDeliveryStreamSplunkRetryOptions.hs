
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-splunkretryoptions.html

module Stratosphere.ResourceProperties.KinesisFirehoseDeliveryStreamSplunkRetryOptions where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for
-- KinesisFirehoseDeliveryStreamSplunkRetryOptions. See
-- 'kinesisFirehoseDeliveryStreamSplunkRetryOptions' for a more convenient
-- constructor.
data KinesisFirehoseDeliveryStreamSplunkRetryOptions =
  KinesisFirehoseDeliveryStreamSplunkRetryOptions
  { _kinesisFirehoseDeliveryStreamSplunkRetryOptionsDurationInSeconds :: Maybe (Val Integer)
  } deriving (Show, Eq)

instance ToJSON KinesisFirehoseDeliveryStreamSplunkRetryOptions where
  toJSON KinesisFirehoseDeliveryStreamSplunkRetryOptions{..} =
    object $
    catMaybes
    [ fmap (("DurationInSeconds",) . toJSON) _kinesisFirehoseDeliveryStreamSplunkRetryOptionsDurationInSeconds
    ]

-- | Constructor for 'KinesisFirehoseDeliveryStreamSplunkRetryOptions'
-- containing required fields as arguments.
kinesisFirehoseDeliveryStreamSplunkRetryOptions
  :: KinesisFirehoseDeliveryStreamSplunkRetryOptions
kinesisFirehoseDeliveryStreamSplunkRetryOptions  =
  KinesisFirehoseDeliveryStreamSplunkRetryOptions
  { _kinesisFirehoseDeliveryStreamSplunkRetryOptionsDurationInSeconds = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-splunkretryoptions.html#cfn-kinesisfirehose-deliverystream-splunkretryoptions-durationinseconds
kfdssroDurationInSeconds :: Lens' KinesisFirehoseDeliveryStreamSplunkRetryOptions (Maybe (Val Integer))
kfdssroDurationInSeconds = lens _kinesisFirehoseDeliveryStreamSplunkRetryOptionsDurationInSeconds (\s a -> s { _kinesisFirehoseDeliveryStreamSplunkRetryOptionsDurationInSeconds = a })
