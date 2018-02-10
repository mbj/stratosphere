{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-processorparameter.html

module Stratosphere.ResourceProperties.KinesisFirehoseDeliveryStreamProcessorParameter where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- KinesisFirehoseDeliveryStreamProcessorParameter. See
-- 'kinesisFirehoseDeliveryStreamProcessorParameter' for a more convenient
-- constructor.
data KinesisFirehoseDeliveryStreamProcessorParameter =
  KinesisFirehoseDeliveryStreamProcessorParameter
  { _kinesisFirehoseDeliveryStreamProcessorParameterParameterName :: Val Text
  , _kinesisFirehoseDeliveryStreamProcessorParameterParameterValue :: Val Text
  } deriving (Show, Eq)

instance ToJSON KinesisFirehoseDeliveryStreamProcessorParameter where
  toJSON KinesisFirehoseDeliveryStreamProcessorParameter{..} =
    object $
    catMaybes
    [ (Just . ("ParameterName",) . toJSON) _kinesisFirehoseDeliveryStreamProcessorParameterParameterName
    , (Just . ("ParameterValue",) . toJSON) _kinesisFirehoseDeliveryStreamProcessorParameterParameterValue
    ]

instance FromJSON KinesisFirehoseDeliveryStreamProcessorParameter where
  parseJSON (Object obj) =
    KinesisFirehoseDeliveryStreamProcessorParameter <$>
      (obj .: "ParameterName") <*>
      (obj .: "ParameterValue")
  parseJSON _ = mempty

-- | Constructor for 'KinesisFirehoseDeliveryStreamProcessorParameter'
-- containing required fields as arguments.
kinesisFirehoseDeliveryStreamProcessorParameter
  :: Val Text -- ^ 'kfdsppParameterName'
  -> Val Text -- ^ 'kfdsppParameterValue'
  -> KinesisFirehoseDeliveryStreamProcessorParameter
kinesisFirehoseDeliveryStreamProcessorParameter parameterNamearg parameterValuearg =
  KinesisFirehoseDeliveryStreamProcessorParameter
  { _kinesisFirehoseDeliveryStreamProcessorParameterParameterName = parameterNamearg
  , _kinesisFirehoseDeliveryStreamProcessorParameterParameterValue = parameterValuearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-processorparameter.html#cfn-kinesisfirehose-deliverystream-processorparameter-parametername
kfdsppParameterName :: Lens' KinesisFirehoseDeliveryStreamProcessorParameter (Val Text)
kfdsppParameterName = lens _kinesisFirehoseDeliveryStreamProcessorParameterParameterName (\s a -> s { _kinesisFirehoseDeliveryStreamProcessorParameterParameterName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-processorparameter.html#cfn-kinesisfirehose-deliverystream-processorparameter-parametervalue
kfdsppParameterValue :: Lens' KinesisFirehoseDeliveryStreamProcessorParameter (Val Text)
kfdsppParameterValue = lens _kinesisFirehoseDeliveryStreamProcessorParameterParameterValue (\s a -> s { _kinesisFirehoseDeliveryStreamProcessorParameterParameterValue = a })
