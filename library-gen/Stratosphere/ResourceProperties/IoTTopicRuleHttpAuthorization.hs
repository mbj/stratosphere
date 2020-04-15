{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-httpauthorization.html

module Stratosphere.ResourceProperties.IoTTopicRuleHttpAuthorization where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.IoTTopicRuleSigV4Authorization

-- | Full data type definition for IoTTopicRuleHttpAuthorization. See
-- 'ioTTopicRuleHttpAuthorization' for a more convenient constructor.
data IoTTopicRuleHttpAuthorization =
  IoTTopicRuleHttpAuthorization
  { _ioTTopicRuleHttpAuthorizationSigv4 :: Maybe IoTTopicRuleSigV4Authorization
  } deriving (Show, Eq)

instance ToJSON IoTTopicRuleHttpAuthorization where
  toJSON IoTTopicRuleHttpAuthorization{..} =
    object $
    catMaybes
    [ fmap (("Sigv4",) . toJSON) _ioTTopicRuleHttpAuthorizationSigv4
    ]

-- | Constructor for 'IoTTopicRuleHttpAuthorization' containing required
-- fields as arguments.
ioTTopicRuleHttpAuthorization
  :: IoTTopicRuleHttpAuthorization
ioTTopicRuleHttpAuthorization  =
  IoTTopicRuleHttpAuthorization
  { _ioTTopicRuleHttpAuthorizationSigv4 = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-httpauthorization.html#cfn-iot-topicrule-httpauthorization-sigv4
ittrhaSigv4 :: Lens' IoTTopicRuleHttpAuthorization (Maybe IoTTopicRuleSigV4Authorization)
ittrhaSigv4 = lens _ioTTopicRuleHttpAuthorizationSigv4 (\s a -> s { _ioTTopicRuleHttpAuthorizationSigv4 = a })
