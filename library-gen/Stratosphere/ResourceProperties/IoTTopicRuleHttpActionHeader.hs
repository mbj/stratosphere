
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-httpactionheader.html

module Stratosphere.ResourceProperties.IoTTopicRuleHttpActionHeader where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for IoTTopicRuleHttpActionHeader. See
-- 'ioTTopicRuleHttpActionHeader' for a more convenient constructor.
data IoTTopicRuleHttpActionHeader =
  IoTTopicRuleHttpActionHeader
  { _ioTTopicRuleHttpActionHeaderKey :: Val Text
  , _ioTTopicRuleHttpActionHeaderValue :: Val Text
  } deriving (Show, Eq)

instance ToJSON IoTTopicRuleHttpActionHeader where
  toJSON IoTTopicRuleHttpActionHeader{..} =
    object $
    catMaybes
    [ (Just . ("Key",) . toJSON) _ioTTopicRuleHttpActionHeaderKey
    , (Just . ("Value",) . toJSON) _ioTTopicRuleHttpActionHeaderValue
    ]

-- | Constructor for 'IoTTopicRuleHttpActionHeader' containing required fields
-- as arguments.
ioTTopicRuleHttpActionHeader
  :: Val Text -- ^ 'ittrhahKey'
  -> Val Text -- ^ 'ittrhahValue'
  -> IoTTopicRuleHttpActionHeader
ioTTopicRuleHttpActionHeader keyarg valuearg =
  IoTTopicRuleHttpActionHeader
  { _ioTTopicRuleHttpActionHeaderKey = keyarg
  , _ioTTopicRuleHttpActionHeaderValue = valuearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-httpactionheader.html#cfn-iot-topicrule-httpactionheader-key
ittrhahKey :: Lens' IoTTopicRuleHttpActionHeader (Val Text)
ittrhahKey = lens _ioTTopicRuleHttpActionHeaderKey (\s a -> s { _ioTTopicRuleHttpActionHeaderKey = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-httpactionheader.html#cfn-iot-topicrule-httpactionheader-value
ittrhahValue :: Lens' IoTTopicRuleHttpActionHeader (Val Text)
ittrhahValue = lens _ioTTopicRuleHttpActionHeaderValue (\s a -> s { _ioTTopicRuleHttpActionHeaderValue = a })
