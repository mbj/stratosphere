
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-campaignsmsmessage.html

module Stratosphere.ResourceProperties.PinpointCampaignCampaignSmsMessage where

import Stratosphere.ResourceImports


-- | Full data type definition for PinpointCampaignCampaignSmsMessage. See
-- 'pinpointCampaignCampaignSmsMessage' for a more convenient constructor.
data PinpointCampaignCampaignSmsMessage =
  PinpointCampaignCampaignSmsMessage
  { _pinpointCampaignCampaignSmsMessageBody :: Maybe (Val Text)
  , _pinpointCampaignCampaignSmsMessageMessageType :: Maybe (Val Text)
  , _pinpointCampaignCampaignSmsMessageSenderId :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON PinpointCampaignCampaignSmsMessage where
  toJSON PinpointCampaignCampaignSmsMessage{..} =
    object $
    catMaybes
    [ fmap (("Body",) . toJSON) _pinpointCampaignCampaignSmsMessageBody
    , fmap (("MessageType",) . toJSON) _pinpointCampaignCampaignSmsMessageMessageType
    , fmap (("SenderId",) . toJSON) _pinpointCampaignCampaignSmsMessageSenderId
    ]

-- | Constructor for 'PinpointCampaignCampaignSmsMessage' containing required
-- fields as arguments.
pinpointCampaignCampaignSmsMessage
  :: PinpointCampaignCampaignSmsMessage
pinpointCampaignCampaignSmsMessage  =
  PinpointCampaignCampaignSmsMessage
  { _pinpointCampaignCampaignSmsMessageBody = Nothing
  , _pinpointCampaignCampaignSmsMessageMessageType = Nothing
  , _pinpointCampaignCampaignSmsMessageSenderId = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-campaignsmsmessage.html#cfn-pinpoint-campaign-campaignsmsmessage-body
pccsmBody :: Lens' PinpointCampaignCampaignSmsMessage (Maybe (Val Text))
pccsmBody = lens _pinpointCampaignCampaignSmsMessageBody (\s a -> s { _pinpointCampaignCampaignSmsMessageBody = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-campaignsmsmessage.html#cfn-pinpoint-campaign-campaignsmsmessage-messagetype
pccsmMessageType :: Lens' PinpointCampaignCampaignSmsMessage (Maybe (Val Text))
pccsmMessageType = lens _pinpointCampaignCampaignSmsMessageMessageType (\s a -> s { _pinpointCampaignCampaignSmsMessageMessageType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-campaignsmsmessage.html#cfn-pinpoint-campaign-campaignsmsmessage-senderid
pccsmSenderId :: Lens' PinpointCampaignCampaignSmsMessage (Maybe (Val Text))
pccsmSenderId = lens _pinpointCampaignCampaignSmsMessageSenderId (\s a -> s { _pinpointCampaignCampaignSmsMessageSenderId = a })
