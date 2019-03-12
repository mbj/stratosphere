{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-splunkretryoptions.html

module Stratosphere.ResourceProperties.KinesisFirehoseDeliveryStreamSplunkRetryOptions where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- KinesisFirehoseDeliveryStreamSplunkRetryOptions. See
-- 'kinesisFirehoseDeliveryStreamSplunkRetryOptions' for a more convenient
-- constructor.
data KinesisFirehoseDeliveryStreamSplunkRetryOptions =
  KinesisFirehoseDeliveryStreamSplunkRetryOptions
  { _kinesisFirehoseDeliveryStreamSplunkRetryOptionsDurationInSeconds :: Val Integer
  } deriving (Show, Eq)

instance ToJSON KinesisFirehoseDeliveryStreamSplunkRetryOptions where
  toJSON KinesisFirehoseDeliveryStreamSplunkRetryOptions{..} =
    object $
    catMaybes
    [ (Just . ("DurationInSeconds",) . toJSON) _kinesisFirehoseDeliveryStreamSplunkRetryOptionsDurationInSeconds
    ]

-- | Constructor for 'KinesisFirehoseDeliveryStreamSplunkRetryOptions'
-- containing required fields as arguments.
kinesisFirehoseDeliveryStreamSplunkRetryOptions
  :: Val Integer -- ^ 'kfdssroDurationInSeconds'
  -> KinesisFirehoseDeliveryStreamSplunkRetryOptions
kinesisFirehoseDeliveryStreamSplunkRetryOptions durationInSecondsarg =
  KinesisFirehoseDeliveryStreamSplunkRetryOptions
  { _kinesisFirehoseDeliveryStreamSplunkRetryOptionsDurationInSeconds = durationInSecondsarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-splunkretryoptions.html#cfn-kinesisfirehose-deliverystream-splunkretryoptions-durationinseconds
kfdssroDurationInSeconds :: Lens' KinesisFirehoseDeliveryStreamSplunkRetryOptions (Val Integer)
kfdssroDurationInSeconds = lens _kinesisFirehoseDeliveryStreamSplunkRetryOptionsDurationInSeconds (\s a -> s { _kinesisFirehoseDeliveryStreamSplunkRetryOptionsDurationInSeconds = a })
