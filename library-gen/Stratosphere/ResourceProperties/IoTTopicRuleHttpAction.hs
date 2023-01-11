
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-httpaction.html

module Stratosphere.ResourceProperties.IoTTopicRuleHttpAction where

import Prelude
import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.IoTTopicRuleHttpAuthorization
import Stratosphere.ResourceProperties.IoTTopicRuleHttpActionHeader

-- | Full data type definition for IoTTopicRuleHttpAction. See
-- 'ioTTopicRuleHttpAction' for a more convenient constructor.
data IoTTopicRuleHttpAction =
  IoTTopicRuleHttpAction
  { _ioTTopicRuleHttpActionAuth :: Maybe IoTTopicRuleHttpAuthorization
  , _ioTTopicRuleHttpActionConfirmationUrl :: Maybe (Val Text)
  , _ioTTopicRuleHttpActionHeaders :: Maybe [IoTTopicRuleHttpActionHeader]
  , _ioTTopicRuleHttpActionUrl :: Val Text
  } deriving (Show, Eq)

instance ToJSON IoTTopicRuleHttpAction where
  toJSON IoTTopicRuleHttpAction{..} =
    object $
    catMaybes
    [ fmap (("Auth",) . toJSON) _ioTTopicRuleHttpActionAuth
    , fmap (("ConfirmationUrl",) . toJSON) _ioTTopicRuleHttpActionConfirmationUrl
    , fmap (("Headers",) . toJSON) _ioTTopicRuleHttpActionHeaders
    , (Just . ("Url",) . toJSON) _ioTTopicRuleHttpActionUrl
    ]

-- | Constructor for 'IoTTopicRuleHttpAction' containing required fields as
-- arguments.
ioTTopicRuleHttpAction
  :: Val Text -- ^ 'ittrhaUrl'
  -> IoTTopicRuleHttpAction
ioTTopicRuleHttpAction urlarg =
  IoTTopicRuleHttpAction
  { _ioTTopicRuleHttpActionAuth = Nothing
  , _ioTTopicRuleHttpActionConfirmationUrl = Nothing
  , _ioTTopicRuleHttpActionHeaders = Nothing
  , _ioTTopicRuleHttpActionUrl = urlarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-httpaction.html#cfn-iot-topicrule-httpaction-auth
ittrhaAuth :: Lens' IoTTopicRuleHttpAction (Maybe IoTTopicRuleHttpAuthorization)
ittrhaAuth = lens _ioTTopicRuleHttpActionAuth (\s a -> s { _ioTTopicRuleHttpActionAuth = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-httpaction.html#cfn-iot-topicrule-httpaction-confirmationurl
ittrhaConfirmationUrl :: Lens' IoTTopicRuleHttpAction (Maybe (Val Text))
ittrhaConfirmationUrl = lens _ioTTopicRuleHttpActionConfirmationUrl (\s a -> s { _ioTTopicRuleHttpActionConfirmationUrl = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-httpaction.html#cfn-iot-topicrule-httpaction-headers
ittrhaHeaders :: Lens' IoTTopicRuleHttpAction (Maybe [IoTTopicRuleHttpActionHeader])
ittrhaHeaders = lens _ioTTopicRuleHttpActionHeaders (\s a -> s { _ioTTopicRuleHttpActionHeaders = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-httpaction.html#cfn-iot-topicrule-httpaction-url
ittrhaUrl :: Lens' IoTTopicRuleHttpAction (Val Text)
ittrhaUrl = lens _ioTTopicRuleHttpActionUrl (\s a -> s { _ioTTopicRuleHttpActionUrl = a })
