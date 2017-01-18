{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-elasticsearch.html

module Stratosphere.ResourceProperties.IoTTopicRuleElasticsearchAction where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for IoTTopicRuleElasticsearchAction. See
-- | 'ioTTopicRuleElasticsearchAction' for a more convenient constructor.
data IoTTopicRuleElasticsearchAction =
  IoTTopicRuleElasticsearchAction
  { _ioTTopicRuleElasticsearchActionEndpoint :: Val Text
  , _ioTTopicRuleElasticsearchActionId :: Val Text
  , _ioTTopicRuleElasticsearchActionIndex :: Val Text
  , _ioTTopicRuleElasticsearchActionRoleArn :: Val Text
  , _ioTTopicRuleElasticsearchActionType :: Val Text
  } deriving (Show, Eq, Generic)

instance ToJSON IoTTopicRuleElasticsearchAction where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 32, omitNothingFields = True }

instance FromJSON IoTTopicRuleElasticsearchAction where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 32, omitNothingFields = True }

-- | Constructor for 'IoTTopicRuleElasticsearchAction' containing required
-- | fields as arguments.
ioTTopicRuleElasticsearchAction
  :: Val Text -- ^ 'ittreaEndpoint'
  -> Val Text -- ^ 'ittreaId'
  -> Val Text -- ^ 'ittreaIndex'
  -> Val Text -- ^ 'ittreaRoleArn'
  -> Val Text -- ^ 'ittreaType'
  -> IoTTopicRuleElasticsearchAction
ioTTopicRuleElasticsearchAction endpointarg idarg indexarg roleArnarg typearg =
  IoTTopicRuleElasticsearchAction
  { _ioTTopicRuleElasticsearchActionEndpoint = endpointarg
  , _ioTTopicRuleElasticsearchActionId = idarg
  , _ioTTopicRuleElasticsearchActionIndex = indexarg
  , _ioTTopicRuleElasticsearchActionRoleArn = roleArnarg
  , _ioTTopicRuleElasticsearchActionType = typearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-elasticsearch.html#cfn-iot-elasticsearch-endpoint
ittreaEndpoint :: Lens' IoTTopicRuleElasticsearchAction (Val Text)
ittreaEndpoint = lens _ioTTopicRuleElasticsearchActionEndpoint (\s a -> s { _ioTTopicRuleElasticsearchActionEndpoint = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-elasticsearch.html#cfn-iot-elasticsearch-id
ittreaId :: Lens' IoTTopicRuleElasticsearchAction (Val Text)
ittreaId = lens _ioTTopicRuleElasticsearchActionId (\s a -> s { _ioTTopicRuleElasticsearchActionId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-elasticsearch.html#cfn-iot-elasticsearch-index
ittreaIndex :: Lens' IoTTopicRuleElasticsearchAction (Val Text)
ittreaIndex = lens _ioTTopicRuleElasticsearchActionIndex (\s a -> s { _ioTTopicRuleElasticsearchActionIndex = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-elasticsearch.html#cfn-iot-elasticsearch-rolearn
ittreaRoleArn :: Lens' IoTTopicRuleElasticsearchAction (Val Text)
ittreaRoleArn = lens _ioTTopicRuleElasticsearchActionRoleArn (\s a -> s { _ioTTopicRuleElasticsearchActionRoleArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-elasticsearch.html#cfn-iot-elasticsearch-type
ittreaType :: Lens' IoTTopicRuleElasticsearchAction (Val Text)
ittreaType = lens _ioTTopicRuleElasticsearchActionType (\s a -> s { _ioTTopicRuleElasticsearchActionType = a })
