
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-redshiftretryoptions.html

module Stratosphere.ResourceProperties.KinesisFirehoseDeliveryStreamRedshiftRetryOptions where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- KinesisFirehoseDeliveryStreamRedshiftRetryOptions. See
-- 'kinesisFirehoseDeliveryStreamRedshiftRetryOptions' for a more convenient
-- constructor.
data KinesisFirehoseDeliveryStreamRedshiftRetryOptions =
  KinesisFirehoseDeliveryStreamRedshiftRetryOptions
  { _kinesisFirehoseDeliveryStreamRedshiftRetryOptionsDurationInSeconds :: Maybe (Val Integer)
  } deriving (Show, Eq)

instance ToJSON KinesisFirehoseDeliveryStreamRedshiftRetryOptions where
  toJSON KinesisFirehoseDeliveryStreamRedshiftRetryOptions{..} =
    object $
    catMaybes
    [ fmap (("DurationInSeconds",) . toJSON) _kinesisFirehoseDeliveryStreamRedshiftRetryOptionsDurationInSeconds
    ]

-- | Constructor for 'KinesisFirehoseDeliveryStreamRedshiftRetryOptions'
-- containing required fields as arguments.
kinesisFirehoseDeliveryStreamRedshiftRetryOptions
  :: KinesisFirehoseDeliveryStreamRedshiftRetryOptions
kinesisFirehoseDeliveryStreamRedshiftRetryOptions  =
  KinesisFirehoseDeliveryStreamRedshiftRetryOptions
  { _kinesisFirehoseDeliveryStreamRedshiftRetryOptionsDurationInSeconds = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-redshiftretryoptions.html#cfn-kinesisfirehose-deliverystream-redshiftretryoptions-durationinseconds
kfdsrroDurationInSeconds :: Lens' KinesisFirehoseDeliveryStreamRedshiftRetryOptions (Maybe (Val Integer))
kfdsrroDurationInSeconds = lens _kinesisFirehoseDeliveryStreamRedshiftRetryOptionsDurationInSeconds (\s a -> s { _kinesisFirehoseDeliveryStreamRedshiftRetryOptionsDurationInSeconds = a })
