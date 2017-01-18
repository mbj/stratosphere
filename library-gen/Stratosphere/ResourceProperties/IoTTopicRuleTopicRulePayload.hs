{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrulepayload.html

module Stratosphere.ResourceProperties.IoTTopicRuleTopicRulePayload where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.ResourceProperties.IoTTopicRuleAction

-- | Full data type definition for IoTTopicRuleTopicRulePayload. See
-- | 'ioTTopicRuleTopicRulePayload' for a more convenient constructor.
data IoTTopicRuleTopicRulePayload =
  IoTTopicRuleTopicRulePayload
  { _ioTTopicRuleTopicRulePayloadActions :: [IoTTopicRuleAction]
  , _ioTTopicRuleTopicRulePayloadAwsIotSqlVersion :: Maybe (Val Text)
  , _ioTTopicRuleTopicRulePayloadDescription :: Maybe (Val Text)
  , _ioTTopicRuleTopicRulePayloadRuleDisabled :: Val Bool'
  , _ioTTopicRuleTopicRulePayloadSql :: Val Text
  } deriving (Show, Eq, Generic)

instance ToJSON IoTTopicRuleTopicRulePayload where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 29, omitNothingFields = True }

instance FromJSON IoTTopicRuleTopicRulePayload where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 29, omitNothingFields = True }

-- | Constructor for 'IoTTopicRuleTopicRulePayload' containing required fields
-- | as arguments.
ioTTopicRuleTopicRulePayload
  :: [IoTTopicRuleAction] -- ^ 'ittrtrpActions'
  -> Val Bool' -- ^ 'ittrtrpRuleDisabled'
  -> Val Text -- ^ 'ittrtrpSql'
  -> IoTTopicRuleTopicRulePayload
ioTTopicRuleTopicRulePayload actionsarg ruleDisabledarg sqlarg =
  IoTTopicRuleTopicRulePayload
  { _ioTTopicRuleTopicRulePayloadActions = actionsarg
  , _ioTTopicRuleTopicRulePayloadAwsIotSqlVersion = Nothing
  , _ioTTopicRuleTopicRulePayloadDescription = Nothing
  , _ioTTopicRuleTopicRulePayloadRuleDisabled = ruleDisabledarg
  , _ioTTopicRuleTopicRulePayloadSql = sqlarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrulepayload.html#cfn-iot-topicrulepayload-actions
ittrtrpActions :: Lens' IoTTopicRuleTopicRulePayload [IoTTopicRuleAction]
ittrtrpActions = lens _ioTTopicRuleTopicRulePayloadActions (\s a -> s { _ioTTopicRuleTopicRulePayloadActions = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrulepayload.html#cfn-iot-topicrulepayload-awsiotsqlversion
ittrtrpAwsIotSqlVersion :: Lens' IoTTopicRuleTopicRulePayload (Maybe (Val Text))
ittrtrpAwsIotSqlVersion = lens _ioTTopicRuleTopicRulePayloadAwsIotSqlVersion (\s a -> s { _ioTTopicRuleTopicRulePayloadAwsIotSqlVersion = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrulepayload.html#cfn-iot-topicrulepayload-description
ittrtrpDescription :: Lens' IoTTopicRuleTopicRulePayload (Maybe (Val Text))
ittrtrpDescription = lens _ioTTopicRuleTopicRulePayloadDescription (\s a -> s { _ioTTopicRuleTopicRulePayloadDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrulepayload.html#cfn-iot-topicrulepayload-ruledisabled
ittrtrpRuleDisabled :: Lens' IoTTopicRuleTopicRulePayload (Val Bool')
ittrtrpRuleDisabled = lens _ioTTopicRuleTopicRulePayloadRuleDisabled (\s a -> s { _ioTTopicRuleTopicRulePayloadRuleDisabled = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrulepayload.html#cfn-iot-topicrulepayload-sql
ittrtrpSql :: Lens' IoTTopicRuleTopicRulePayload (Val Text)
ittrtrpSql = lens _ioTTopicRuleTopicRulePayloadSql (\s a -> s { _ioTTopicRuleTopicRulePayloadSql = a })
