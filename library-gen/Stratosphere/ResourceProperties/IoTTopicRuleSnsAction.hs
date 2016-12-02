{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-sns.html

module Stratosphere.ResourceProperties.IoTTopicRuleSnsAction where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for IoTTopicRuleSnsAction. See
-- | 'ioTTopicRuleSnsAction' for a more convenient constructor.
data IoTTopicRuleSnsAction =
  IoTTopicRuleSnsAction
  { _ioTTopicRuleSnsActionMessageFormat :: Maybe (Val Text)
  , _ioTTopicRuleSnsActionRoleArn :: Val Text
  , _ioTTopicRuleSnsActionTargetArn :: Val Text
  } deriving (Show, Generic)

instance ToJSON IoTTopicRuleSnsAction where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 22, omitNothingFields = True }

instance FromJSON IoTTopicRuleSnsAction where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 22, omitNothingFields = True }

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
