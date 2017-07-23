{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-topicrule.html

module Stratosphere.Resources.IoTTopicRule where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values
import Stratosphere.ResourceProperties.IoTTopicRuleTopicRulePayload

-- | Full data type definition for IoTTopicRule. See 'ioTTopicRule' for a more
-- convenient constructor.
data IoTTopicRule =
  IoTTopicRule
  { _ioTTopicRuleRuleName :: Maybe (Val Text)
  , _ioTTopicRuleTopicRulePayload :: IoTTopicRuleTopicRulePayload
  } deriving (Show, Eq)

instance ToJSON IoTTopicRule where
  toJSON IoTTopicRule{..} =
    object $
    catMaybes
    [ fmap (("RuleName",) . toJSON) _ioTTopicRuleRuleName
    , (Just . ("TopicRulePayload",) . toJSON) _ioTTopicRuleTopicRulePayload
    ]

instance FromJSON IoTTopicRule where
  parseJSON (Object obj) =
    IoTTopicRule <$>
      (obj .:? "RuleName") <*>
      (obj .: "TopicRulePayload")
  parseJSON _ = mempty

-- | Constructor for 'IoTTopicRule' containing required fields as arguments.
ioTTopicRule
  :: IoTTopicRuleTopicRulePayload -- ^ 'ittrTopicRulePayload'
  -> IoTTopicRule
ioTTopicRule topicRulePayloadarg =
  IoTTopicRule
  { _ioTTopicRuleRuleName = Nothing
  , _ioTTopicRuleTopicRulePayload = topicRulePayloadarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-topicrule.html#cfn-iot-topicrule-rulename
ittrRuleName :: Lens' IoTTopicRule (Maybe (Val Text))
ittrRuleName = lens _ioTTopicRuleRuleName (\s a -> s { _ioTTopicRuleRuleName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-topicrule.html#cfn-iot-topicrule-topicrulepayload
ittrTopicRulePayload :: Lens' IoTTopicRule IoTTopicRuleTopicRulePayload
ittrTopicRulePayload = lens _ioTTopicRuleTopicRulePayload (\s a -> s { _ioTTopicRuleTopicRulePayload = a })
