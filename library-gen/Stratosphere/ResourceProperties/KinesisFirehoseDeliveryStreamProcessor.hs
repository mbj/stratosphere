{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-kinesisdeliverystream-ProcessingConfiguration.html

module Stratosphere.ResourceProperties.KinesisFirehoseDeliveryStreamProcessor where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values
import Stratosphere.ResourceProperties.KinesisFirehoseDeliveryStreamProcessorParameter

-- | Full data type definition for KinesisFirehoseDeliveryStreamProcessor. See
-- 'kinesisFirehoseDeliveryStreamProcessor' for a more convenient
-- constructor.
data KinesisFirehoseDeliveryStreamProcessor =
  KinesisFirehoseDeliveryStreamProcessor
  { _kinesisFirehoseDeliveryStreamProcessorParameters :: [KinesisFirehoseDeliveryStreamProcessorParameter]
  , _kinesisFirehoseDeliveryStreamProcessorType :: Val Text
  } deriving (Show, Eq)

instance ToJSON KinesisFirehoseDeliveryStreamProcessor where
  toJSON KinesisFirehoseDeliveryStreamProcessor{..} =
    object $
    catMaybes
    [ Just ("Parameters" .= _kinesisFirehoseDeliveryStreamProcessorParameters)
    , Just ("Type" .= _kinesisFirehoseDeliveryStreamProcessorType)
    ]

instance FromJSON KinesisFirehoseDeliveryStreamProcessor where
  parseJSON (Object obj) =
    KinesisFirehoseDeliveryStreamProcessor <$>
      obj .: "Parameters" <*>
      obj .: "Type"
  parseJSON _ = mempty

-- | Constructor for 'KinesisFirehoseDeliveryStreamProcessor' containing
-- required fields as arguments.
kinesisFirehoseDeliveryStreamProcessor
  :: [KinesisFirehoseDeliveryStreamProcessorParameter] -- ^ 'kfdspParameters'
  -> Val Text -- ^ 'kfdspType'
  -> KinesisFirehoseDeliveryStreamProcessor
kinesisFirehoseDeliveryStreamProcessor parametersarg typearg =
  KinesisFirehoseDeliveryStreamProcessor
  { _kinesisFirehoseDeliveryStreamProcessorParameters = parametersarg
  , _kinesisFirehoseDeliveryStreamProcessorType = typearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-kinesisdeliverystream-ProcessingConfiguration.html#cfn-kinesisfirehose-kinesisdeliverystream-ProcessingConfiguration-Processor-Parameter
kfdspParameters :: Lens' KinesisFirehoseDeliveryStreamProcessor [KinesisFirehoseDeliveryStreamProcessorParameter]
kfdspParameters = lens _kinesisFirehoseDeliveryStreamProcessorParameters (\s a -> s { _kinesisFirehoseDeliveryStreamProcessorParameters = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-kinesisdeliverystream-ProcessingConfiguration.html#cfn-kinesisfirehose-kinesisdeliverystream-ProcessingConfiguration-Processor-Type
kfdspType :: Lens' KinesisFirehoseDeliveryStreamProcessor (Val Text)
kfdspType = lens _kinesisFirehoseDeliveryStreamProcessorType (\s a -> s { _kinesisFirehoseDeliveryStreamProcessorType = a })
