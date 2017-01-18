{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-firehose.html

module Stratosphere.ResourceProperties.IoTTopicRuleFirehoseAction where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for IoTTopicRuleFirehoseAction. See
-- | 'ioTTopicRuleFirehoseAction' for a more convenient constructor.
data IoTTopicRuleFirehoseAction =
  IoTTopicRuleFirehoseAction
  { _ioTTopicRuleFirehoseActionDeliveryStreamName :: Val Text
  , _ioTTopicRuleFirehoseActionRoleArn :: Val Text
  , _ioTTopicRuleFirehoseActionSeparator :: Maybe (Val Text)
  } deriving (Show, Eq, Generic)

instance ToJSON IoTTopicRuleFirehoseAction where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 27, omitNothingFields = True }

instance FromJSON IoTTopicRuleFirehoseAction where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 27, omitNothingFields = True }

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
