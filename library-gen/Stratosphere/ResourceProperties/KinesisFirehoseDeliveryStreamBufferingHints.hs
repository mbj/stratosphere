{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-bufferinghints.html

module Stratosphere.ResourceProperties.KinesisFirehoseDeliveryStreamBufferingHints where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for
-- KinesisFirehoseDeliveryStreamBufferingHints. See
-- 'kinesisFirehoseDeliveryStreamBufferingHints' for a more convenient
-- constructor.
data KinesisFirehoseDeliveryStreamBufferingHints =
  KinesisFirehoseDeliveryStreamBufferingHints
  { _kinesisFirehoseDeliveryStreamBufferingHintsIntervalInSeconds :: Val Integer
  , _kinesisFirehoseDeliveryStreamBufferingHintsSizeInMBs :: Val Integer
  } deriving (Show, Eq)

instance ToJSON KinesisFirehoseDeliveryStreamBufferingHints where
  toJSON KinesisFirehoseDeliveryStreamBufferingHints{..} =
    object $
    catMaybes
    [ (Just . ("IntervalInSeconds",) . toJSON . fmap Integer') _kinesisFirehoseDeliveryStreamBufferingHintsIntervalInSeconds
    , (Just . ("SizeInMBs",) . toJSON . fmap Integer') _kinesisFirehoseDeliveryStreamBufferingHintsSizeInMBs
    ]

instance FromJSON KinesisFirehoseDeliveryStreamBufferingHints where
  parseJSON (Object obj) =
    KinesisFirehoseDeliveryStreamBufferingHints <$>
      fmap (fmap unInteger') (obj .: "IntervalInSeconds") <*>
      fmap (fmap unInteger') (obj .: "SizeInMBs")
  parseJSON _ = mempty

-- | Constructor for 'KinesisFirehoseDeliveryStreamBufferingHints' containing
-- required fields as arguments.
kinesisFirehoseDeliveryStreamBufferingHints
  :: Val Integer -- ^ 'kfdsbhIntervalInSeconds'
  -> Val Integer -- ^ 'kfdsbhSizeInMBs'
  -> KinesisFirehoseDeliveryStreamBufferingHints
kinesisFirehoseDeliveryStreamBufferingHints intervalInSecondsarg sizeInMBsarg =
  KinesisFirehoseDeliveryStreamBufferingHints
  { _kinesisFirehoseDeliveryStreamBufferingHintsIntervalInSeconds = intervalInSecondsarg
  , _kinesisFirehoseDeliveryStreamBufferingHintsSizeInMBs = sizeInMBsarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-bufferinghints.html#cfn-kinesisfirehose-deliverystream-bufferinghints-intervalinseconds
kfdsbhIntervalInSeconds :: Lens' KinesisFirehoseDeliveryStreamBufferingHints (Val Integer)
kfdsbhIntervalInSeconds = lens _kinesisFirehoseDeliveryStreamBufferingHintsIntervalInSeconds (\s a -> s { _kinesisFirehoseDeliveryStreamBufferingHintsIntervalInSeconds = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-bufferinghints.html#cfn-kinesisfirehose-deliverystream-bufferinghints-sizeinmbs
kfdsbhSizeInMBs :: Lens' KinesisFirehoseDeliveryStreamBufferingHints (Val Integer)
kfdsbhSizeInMBs = lens _kinesisFirehoseDeliveryStreamBufferingHintsSizeInMBs (\s a -> s { _kinesisFirehoseDeliveryStreamBufferingHintsSizeInMBs = a })
