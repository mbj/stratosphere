{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-kinesisdeliverystream-s3destinationconfiguration-bufferinghints.html

module Stratosphere.ResourceProperties.KinesisFirehoseDeliveryStreamBufferingHints where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for
-- | KinesisFirehoseDeliveryStreamBufferingHints. See
-- | 'kinesisFirehoseDeliveryStreamBufferingHints' for a more convenient
-- | constructor.
data KinesisFirehoseDeliveryStreamBufferingHints =
  KinesisFirehoseDeliveryStreamBufferingHints
  { _kinesisFirehoseDeliveryStreamBufferingHintsIntervalInSeconds :: Val Integer'
  , _kinesisFirehoseDeliveryStreamBufferingHintsSizeInMBs :: Val Integer'
  } deriving (Show, Generic)

instance ToJSON KinesisFirehoseDeliveryStreamBufferingHints where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 44, omitNothingFields = True }

instance FromJSON KinesisFirehoseDeliveryStreamBufferingHints where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 44, omitNothingFields = True }

-- | Constructor for 'KinesisFirehoseDeliveryStreamBufferingHints' containing
-- | required fields as arguments.
kinesisFirehoseDeliveryStreamBufferingHints
  :: Val Integer' -- ^ 'kfdsbhIntervalInSeconds'
  -> Val Integer' -- ^ 'kfdsbhSizeInMBs'
  -> KinesisFirehoseDeliveryStreamBufferingHints
kinesisFirehoseDeliveryStreamBufferingHints intervalInSecondsarg sizeInMBsarg =
  KinesisFirehoseDeliveryStreamBufferingHints
  { _kinesisFirehoseDeliveryStreamBufferingHintsIntervalInSeconds = intervalInSecondsarg
  , _kinesisFirehoseDeliveryStreamBufferingHintsSizeInMBs = sizeInMBsarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-kinesisdeliverystream-s3destinationconfiguration-bufferinghints.html#cfn-kinesisfirehose-kinesisdeliverystream-s3destinationconfiguration-bufferinghints-intervalinseconds
kfdsbhIntervalInSeconds :: Lens' KinesisFirehoseDeliveryStreamBufferingHints (Val Integer')
kfdsbhIntervalInSeconds = lens _kinesisFirehoseDeliveryStreamBufferingHintsIntervalInSeconds (\s a -> s { _kinesisFirehoseDeliveryStreamBufferingHintsIntervalInSeconds = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-kinesisdeliverystream-s3destinationconfiguration-bufferinghints.html#cfn-kinesisfirehose-kinesisdeliverystream-s3destinationconfiguration-bufferinghints-sizeinmbs
kfdsbhSizeInMBs :: Lens' KinesisFirehoseDeliveryStreamBufferingHints (Val Integer')
kfdsbhSizeInMBs = lens _kinesisFirehoseDeliveryStreamBufferingHintsSizeInMBs (\s a -> s { _kinesisFirehoseDeliveryStreamBufferingHintsSizeInMBs = a })
