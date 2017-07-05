{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-kinesisdeliverystream-ProcessingConfiguration.html

module Stratosphere.ResourceProperties.KinesisFirehoseDeliveryStreamProcessingConfiguration where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values
import Stratosphere.ResourceProperties.KinesisFirehoseDeliveryStreamProcessor

-- | Full data type definition for
-- KinesisFirehoseDeliveryStreamProcessingConfiguration. See
-- 'kinesisFirehoseDeliveryStreamProcessingConfiguration' for a more
-- convenient constructor.
data KinesisFirehoseDeliveryStreamProcessingConfiguration =
  KinesisFirehoseDeliveryStreamProcessingConfiguration
  { _kinesisFirehoseDeliveryStreamProcessingConfigurationEnabled :: Val Bool'
  , _kinesisFirehoseDeliveryStreamProcessingConfigurationProcessors :: [KinesisFirehoseDeliveryStreamProcessor]
  } deriving (Show, Eq)

instance ToJSON KinesisFirehoseDeliveryStreamProcessingConfiguration where
  toJSON KinesisFirehoseDeliveryStreamProcessingConfiguration{..} =
    object $
    catMaybes
    [ Just ("Enabled" .= _kinesisFirehoseDeliveryStreamProcessingConfigurationEnabled)
    , Just ("Processors" .= _kinesisFirehoseDeliveryStreamProcessingConfigurationProcessors)
    ]

instance FromJSON KinesisFirehoseDeliveryStreamProcessingConfiguration where
  parseJSON (Object obj) =
    KinesisFirehoseDeliveryStreamProcessingConfiguration <$>
      obj .: "Enabled" <*>
      obj .: "Processors"
  parseJSON _ = mempty

-- | Constructor for 'KinesisFirehoseDeliveryStreamProcessingConfiguration'
-- containing required fields as arguments.
kinesisFirehoseDeliveryStreamProcessingConfiguration
  :: Val Bool' -- ^ 'kfdspcEnabled'
  -> [KinesisFirehoseDeliveryStreamProcessor] -- ^ 'kfdspcProcessors'
  -> KinesisFirehoseDeliveryStreamProcessingConfiguration
kinesisFirehoseDeliveryStreamProcessingConfiguration enabledarg processorsarg =
  KinesisFirehoseDeliveryStreamProcessingConfiguration
  { _kinesisFirehoseDeliveryStreamProcessingConfigurationEnabled = enabledarg
  , _kinesisFirehoseDeliveryStreamProcessingConfigurationProcessors = processorsarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-kinesisdeliverystream-ProcessingConfiguration.html#cfn-kinesisfirehose-kinesisdeliverystream-ProcessingConfiguration-ProcessingConfiguration-Enabled
kfdspcEnabled :: Lens' KinesisFirehoseDeliveryStreamProcessingConfiguration (Val Bool')
kfdspcEnabled = lens _kinesisFirehoseDeliveryStreamProcessingConfigurationEnabled (\s a -> s { _kinesisFirehoseDeliveryStreamProcessingConfigurationEnabled = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-kinesisdeliverystream-ProcessingConfiguration.html#cfn-kinesisfirehose-kinesisdeliverystream-ProcessingConfiguration-ProcessingConfiguration-Processors
kfdspcProcessors :: Lens' KinesisFirehoseDeliveryStreamProcessingConfiguration [KinesisFirehoseDeliveryStreamProcessor]
kfdspcProcessors = lens _kinesisFirehoseDeliveryStreamProcessingConfigurationProcessors (\s a -> s { _kinesisFirehoseDeliveryStreamProcessingConfigurationProcessors = a })
