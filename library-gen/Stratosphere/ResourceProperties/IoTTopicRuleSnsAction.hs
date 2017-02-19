{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-sns.html

module Stratosphere.ResourceProperties.IoTTopicRuleSnsAction where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for IoTTopicRuleSnsAction. See
-- | 'ioTTopicRuleSnsAction' for a more convenient constructor.
data IoTTopicRuleSnsAction =
  IoTTopicRuleSnsAction
  { _ioTTopicRuleSnsActionMessageFormat :: Maybe (Val Text)
  , _ioTTopicRuleSnsActionRoleArn :: Val Text
  , _ioTTopicRuleSnsActionTargetArn :: Val Text
  } deriving (Show, Eq)

instance ToJSON IoTTopicRuleSnsAction where
  toJSON IoTTopicRuleSnsAction{..} =
    object $
    catMaybes
    [ ("MessageFormat" .=) <$> _ioTTopicRuleSnsActionMessageFormat
    , Just ("RoleArn" .= _ioTTopicRuleSnsActionRoleArn)
    , Just ("TargetArn" .= _ioTTopicRuleSnsActionTargetArn)
    ]

instance FromJSON IoTTopicRuleSnsAction where
  parseJSON (Object obj) =
    IoTTopicRuleSnsAction <$>
      obj .:? "MessageFormat" <*>
      obj .: "RoleArn" <*>
      obj .: "TargetArn"
  parseJSON _ = mempty

-- | Constructor for 'IoTTopicRuleSnsAction' containing required fields as
-- | arguments.
ioTTopicRuleSnsAction
  :: Val Text -- ^ 'ittrsnaRoleArn'
  -> Val Text -- ^ 'ittrsnaTargetArn'
  -> IoTTopicRuleSnsAction
ioTTopicRuleSnsAction roleArnarg targetArnarg =
  IoTTopicRuleSnsAction
  { _ioTTopicRuleSnsActionMessageFormat = Nothing
  , _ioTTopicRuleSnsActionRoleArn = roleArnarg
  , _ioTTopicRuleSnsActionTargetArn = targetArnarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-sns.html#cfn-iot-sns-snsaction
ittrsnaMessageFormat :: Lens' IoTTopicRuleSnsAction (Maybe (Val Text))
ittrsnaMessageFormat = lens _ioTTopicRuleSnsActionMessageFormat (\s a -> s { _ioTTopicRuleSnsActionMessageFormat = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-sns.html#cfn-iot-sns-rolearn
ittrsnaRoleArn :: Lens' IoTTopicRuleSnsAction (Val Text)
ittrsnaRoleArn = lens _ioTTopicRuleSnsActionRoleArn (\s a -> s { _ioTTopicRuleSnsActionRoleArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-sns.html#cfn-iot-sns-targetarn
ittrsnaTargetArn :: Lens' IoTTopicRuleSnsAction (Val Text)
ittrsnaTargetArn = lens _ioTTopicRuleSnsActionTargetArn (\s a -> s { _ioTTopicRuleSnsActionTargetArn = a })
