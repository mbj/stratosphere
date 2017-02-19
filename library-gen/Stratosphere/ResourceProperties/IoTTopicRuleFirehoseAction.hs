{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-firehose.html

module Stratosphere.ResourceProperties.IoTTopicRuleFirehoseAction where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for IoTTopicRuleFirehoseAction. See
-- | 'ioTTopicRuleFirehoseAction' for a more convenient constructor.
data IoTTopicRuleFirehoseAction =
  IoTTopicRuleFirehoseAction
  { _ioTTopicRuleFirehoseActionDeliveryStreamName :: Val Text
  , _ioTTopicRuleFirehoseActionRoleArn :: Val Text
  , _ioTTopicRuleFirehoseActionSeparator :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON IoTTopicRuleFirehoseAction where
  toJSON IoTTopicRuleFirehoseAction{..} =
    object $
    catMaybes
    [ Just ("DeliveryStreamName" .= _ioTTopicRuleFirehoseActionDeliveryStreamName)
    , Just ("RoleArn" .= _ioTTopicRuleFirehoseActionRoleArn)
    , ("Separator" .=) <$> _ioTTopicRuleFirehoseActionSeparator
    ]

instance FromJSON IoTTopicRuleFirehoseAction where
  parseJSON (Object obj) =
    IoTTopicRuleFirehoseAction <$>
      obj .: "DeliveryStreamName" <*>
      obj .: "RoleArn" <*>
      obj .:? "Separator"
  parseJSON _ = mempty

-- | Constructor for 'IoTTopicRuleFirehoseAction' containing required fields
-- | as arguments.
ioTTopicRuleFirehoseAction
  :: Val Text -- ^ 'ittrfaDeliveryStreamName'
  -> Val Text -- ^ 'ittrfaRoleArn'
  -> IoTTopicRuleFirehoseAction
ioTTopicRuleFirehoseAction deliveryStreamNamearg roleArnarg =
  IoTTopicRuleFirehoseAction
  { _ioTTopicRuleFirehoseActionDeliveryStreamName = deliveryStreamNamearg
  , _ioTTopicRuleFirehoseActionRoleArn = roleArnarg
  , _ioTTopicRuleFirehoseActionSeparator = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-firehose.html#cfn-iot-firehose-deliverystreamname
ittrfaDeliveryStreamName :: Lens' IoTTopicRuleFirehoseAction (Val Text)
ittrfaDeliveryStreamName = lens _ioTTopicRuleFirehoseActionDeliveryStreamName (\s a -> s { _ioTTopicRuleFirehoseActionDeliveryStreamName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-firehose.html#cfn-iot-firehose-rolearn
ittrfaRoleArn :: Lens' IoTTopicRuleFirehoseAction (Val Text)
ittrfaRoleArn = lens _ioTTopicRuleFirehoseActionRoleArn (\s a -> s { _ioTTopicRuleFirehoseActionRoleArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-firehose.html#cfn-iot-firehose-separator
ittrfaSeparator :: Lens' IoTTopicRuleFirehoseAction (Maybe (Val Text))
ittrfaSeparator = lens _ioTTopicRuleFirehoseActionSeparator (\s a -> s { _ioTTopicRuleFirehoseActionSeparator = a })
