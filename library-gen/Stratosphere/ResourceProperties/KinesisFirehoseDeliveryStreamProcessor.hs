{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-processor.html

module Stratosphere.ResourceProperties.KinesisFirehoseDeliveryStreamProcessor where

import Stratosphere.ResourceImports
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
    [ (Just . ("Parameters",) . toJSON) _kinesisFirehoseDeliveryStreamProcessorParameters
    , (Just . ("Type",) . toJSON) _kinesisFirehoseDeliveryStreamProcessorType
    ]

instance FromJSON KinesisFirehoseDeliveryStreamProcessor where
  parseJSON (Object obj) =
    KinesisFirehoseDeliveryStreamProcessor <$>
      (obj .: "Parameters") <*>
      (obj .: "Type")
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

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-processor.html#cfn-kinesisfirehose-deliverystream-processor-parameters
kfdspParameters :: Lens' KinesisFirehoseDeliveryStreamProcessor [KinesisFirehoseDeliveryStreamProcessorParameter]
kfdspParameters = lens _kinesisFirehoseDeliveryStreamProcessorParameters (\s a -> s { _kinesisFirehoseDeliveryStreamProcessorParameters = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-processor.html#cfn-kinesisfirehose-deliverystream-processor-type
kfdspType :: Lens' KinesisFirehoseDeliveryStreamProcessor (Val Text)
kfdspType = lens _kinesisFirehoseDeliveryStreamProcessorType (\s a -> s { _kinesisFirehoseDeliveryStreamProcessorType = a })
