
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-retryoptions.html

module Stratosphere.ResourceProperties.KinesisFirehoseDeliveryStreamRetryOptions where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for KinesisFirehoseDeliveryStreamRetryOptions.
-- See 'kinesisFirehoseDeliveryStreamRetryOptions' for a more convenient
-- constructor.
data KinesisFirehoseDeliveryStreamRetryOptions =
  KinesisFirehoseDeliveryStreamRetryOptions
  { _kinesisFirehoseDeliveryStreamRetryOptionsDurationInSeconds :: Maybe (Val Integer)
  } deriving (Show, Eq)

instance ToJSON KinesisFirehoseDeliveryStreamRetryOptions where
  toJSON KinesisFirehoseDeliveryStreamRetryOptions{..} =
    object $
    catMaybes
    [ fmap (("DurationInSeconds",) . toJSON) _kinesisFirehoseDeliveryStreamRetryOptionsDurationInSeconds
    ]

-- | Constructor for 'KinesisFirehoseDeliveryStreamRetryOptions' containing
-- required fields as arguments.
kinesisFirehoseDeliveryStreamRetryOptions
  :: KinesisFirehoseDeliveryStreamRetryOptions
kinesisFirehoseDeliveryStreamRetryOptions  =
  KinesisFirehoseDeliveryStreamRetryOptions
  { _kinesisFirehoseDeliveryStreamRetryOptionsDurationInSeconds = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-retryoptions.html#cfn-kinesisfirehose-deliverystream-retryoptions-durationinseconds
kfdsroDurationInSeconds :: Lens' KinesisFirehoseDeliveryStreamRetryOptions (Maybe (Val Integer))
kfdsroDurationInSeconds = lens _kinesisFirehoseDeliveryStreamRetryOptionsDurationInSeconds (\s a -> s { _kinesisFirehoseDeliveryStreamRetryOptionsDurationInSeconds = a })
