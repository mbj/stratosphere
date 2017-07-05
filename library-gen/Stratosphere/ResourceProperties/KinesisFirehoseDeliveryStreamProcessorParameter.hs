{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-kinesisdeliverystream-ProcessingConfiguration.html

module Stratosphere.ResourceProperties.KinesisFirehoseDeliveryStreamProcessorParameter where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


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
    [ Just ("ParameterName" .= _kinesisFirehoseDeliveryStreamProcessorParameterParameterName)
    , Just ("ParameterValue" .= _kinesisFirehoseDeliveryStreamProcessorParameterParameterValue)
    ]

instance FromJSON KinesisFirehoseDeliveryStreamProcessorParameter where
  parseJSON (Object obj) =
    KinesisFirehoseDeliveryStreamProcessorParameter <$>
      obj .: "ParameterName" <*>
      obj .: "ParameterValue"
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

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-kinesisdeliverystream-ProcessingConfiguration.html#cfn-kinesisfirehose-kinesisdeliverystream-ProcessingConfiguration-Processor-Parameter-ParameterName
kfdsppParameterName :: Lens' KinesisFirehoseDeliveryStreamProcessorParameter (Val Text)
kfdsppParameterName = lens _kinesisFirehoseDeliveryStreamProcessorParameterParameterName (\s a -> s { _kinesisFirehoseDeliveryStreamProcessorParameterParameterName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-kinesisdeliverystream-ProcessingConfiguration.html#cfn-kinesisfirehose-kinesisdeliverystream-ProcessingConfiguration-Processor-Parameter-ParameterValue
kfdsppParameterValue :: Lens' KinesisFirehoseDeliveryStreamProcessorParameter (Val Text)
kfdsppParameterValue = lens _kinesisFirehoseDeliveryStreamProcessorParameterParameterValue (\s a -> s { _kinesisFirehoseDeliveryStreamProcessorParameterParameterValue = a })
