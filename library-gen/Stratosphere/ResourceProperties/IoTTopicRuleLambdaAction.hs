{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-lambda.html

module Stratosphere.ResourceProperties.IoTTopicRuleLambdaAction where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for IoTTopicRuleLambdaAction. See
-- | 'ioTTopicRuleLambdaAction' for a more convenient constructor.
data IoTTopicRuleLambdaAction =
  IoTTopicRuleLambdaAction
  { _ioTTopicRuleLambdaActionFunctionArn :: Val Text
  } deriving (Show, Generic)

instance ToJSON IoTTopicRuleLambdaAction where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 25, omitNothingFields = True }

instance FromJSON IoTTopicRuleLambdaAction where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 25, omitNothingFields = True }

-- | Constructor for 'IoTTopicRuleLambdaAction' containing required fields as
-- | arguments.
ioTTopicRuleLambdaAction
  :: Val Text -- ^ 'ittrlaFunctionArn'
  -> IoTTopicRuleLambdaAction
ioTTopicRuleLambdaAction functionArnarg =
  IoTTopicRuleLambdaAction
  { _ioTTopicRuleLambdaActionFunctionArn = functionArnarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-lambda.html#cfn-iot-lambda-functionarn
ittrlaFunctionArn :: Lens' IoTTopicRuleLambdaAction (Val Text)
ittrlaFunctionArn = lens _ioTTopicRuleLambdaActionFunctionArn (\s a -> s { _ioTTopicRuleLambdaActionFunctionArn = a })
