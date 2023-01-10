
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-campaignemailmessage.html

module Stratosphere.ResourceProperties.PinpointCampaignCampaignEmailMessage where

import Stratosphere.ResourceImports


-- | Full data type definition for PinpointCampaignCampaignEmailMessage. See
-- 'pinpointCampaignCampaignEmailMessage' for a more convenient constructor.
data PinpointCampaignCampaignEmailMessage =
  PinpointCampaignCampaignEmailMessage
  { _pinpointCampaignCampaignEmailMessageBody :: Maybe (Val Text)
  , _pinpointCampaignCampaignEmailMessageFromAddress :: Maybe (Val Text)
  , _pinpointCampaignCampaignEmailMessageHtmlBody :: Maybe (Val Text)
  , _pinpointCampaignCampaignEmailMessageTitle :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON PinpointCampaignCampaignEmailMessage where
  toJSON PinpointCampaignCampaignEmailMessage{..} =
    object $
    catMaybes
    [ fmap (("Body",) . toJSON) _pinpointCampaignCampaignEmailMessageBody
    , fmap (("FromAddress",) . toJSON) _pinpointCampaignCampaignEmailMessageFromAddress
    , fmap (("HtmlBody",) . toJSON) _pinpointCampaignCampaignEmailMessageHtmlBody
    , fmap (("Title",) . toJSON) _pinpointCampaignCampaignEmailMessageTitle
    ]

-- | Constructor for 'PinpointCampaignCampaignEmailMessage' containing
-- required fields as arguments.
pinpointCampaignCampaignEmailMessage
  :: PinpointCampaignCampaignEmailMessage
pinpointCampaignCampaignEmailMessage  =
  PinpointCampaignCampaignEmailMessage
  { _pinpointCampaignCampaignEmailMessageBody = Nothing
  , _pinpointCampaignCampaignEmailMessageFromAddress = Nothing
  , _pinpointCampaignCampaignEmailMessageHtmlBody = Nothing
  , _pinpointCampaignCampaignEmailMessageTitle = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-campaignemailmessage.html#cfn-pinpoint-campaign-campaignemailmessage-body
pccemBody :: Lens' PinpointCampaignCampaignEmailMessage (Maybe (Val Text))
pccemBody = lens _pinpointCampaignCampaignEmailMessageBody (\s a -> s { _pinpointCampaignCampaignEmailMessageBody = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-campaignemailmessage.html#cfn-pinpoint-campaign-campaignemailmessage-fromaddress
pccemFromAddress :: Lens' PinpointCampaignCampaignEmailMessage (Maybe (Val Text))
pccemFromAddress = lens _pinpointCampaignCampaignEmailMessageFromAddress (\s a -> s { _pinpointCampaignCampaignEmailMessageFromAddress = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-campaignemailmessage.html#cfn-pinpoint-campaign-campaignemailmessage-htmlbody
pccemHtmlBody :: Lens' PinpointCampaignCampaignEmailMessage (Maybe (Val Text))
pccemHtmlBody = lens _pinpointCampaignCampaignEmailMessageHtmlBody (\s a -> s { _pinpointCampaignCampaignEmailMessageHtmlBody = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-campaignemailmessage.html#cfn-pinpoint-campaign-campaignemailmessage-title
pccemTitle :: Lens' PinpointCampaignCampaignEmailMessage (Maybe (Val Text))
pccemTitle = lens _pinpointCampaignCampaignEmailMessageTitle (\s a -> s { _pinpointCampaignCampaignEmailMessageTitle = a })
