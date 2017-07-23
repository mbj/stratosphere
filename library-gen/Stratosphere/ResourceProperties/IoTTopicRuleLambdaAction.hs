{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-lambda.html

module Stratosphere.ResourceProperties.IoTTopicRuleLambdaAction where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for IoTTopicRuleLambdaAction. See
-- 'ioTTopicRuleLambdaAction' for a more convenient constructor.
data IoTTopicRuleLambdaAction =
  IoTTopicRuleLambdaAction
  { _ioTTopicRuleLambdaActionFunctionArn :: Val Text
  } deriving (Show, Eq)

instance ToJSON IoTTopicRuleLambdaAction where
  toJSON IoTTopicRuleLambdaAction{..} =
    object $
    catMaybes
    [ (Just . ("FunctionArn",) . toJSON) _ioTTopicRuleLambdaActionFunctionArn
    ]

instance FromJSON IoTTopicRuleLambdaAction where
  parseJSON (Object obj) =
    IoTTopicRuleLambdaAction <$>
      (obj .: "FunctionArn")
  parseJSON _ = mempty

-- | Constructor for 'IoTTopicRuleLambdaAction' containing required fields as
-- arguments.
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
