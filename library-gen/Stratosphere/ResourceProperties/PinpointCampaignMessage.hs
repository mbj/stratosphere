
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-message.html

module Stratosphere.ResourceProperties.PinpointCampaignMessage where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for PinpointCampaignMessage. See
-- 'pinpointCampaignMessage' for a more convenient constructor.
data PinpointCampaignMessage =
  PinpointCampaignMessage
  { _pinpointCampaignMessageAction :: Maybe (Val Text)
  , _pinpointCampaignMessageBody :: Maybe (Val Text)
  , _pinpointCampaignMessageImageIconUrl :: Maybe (Val Text)
  , _pinpointCampaignMessageImageSmallIconUrl :: Maybe (Val Text)
  , _pinpointCampaignMessageImageUrl :: Maybe (Val Text)
  , _pinpointCampaignMessageJsonBody :: Maybe (Val Text)
  , _pinpointCampaignMessageMediaUrl :: Maybe (Val Text)
  , _pinpointCampaignMessageRawContent :: Maybe (Val Text)
  , _pinpointCampaignMessageSilentPush :: Maybe (Val Bool)
  , _pinpointCampaignMessageTimeToLive :: Maybe (Val Integer)
  , _pinpointCampaignMessageTitle :: Maybe (Val Text)
  , _pinpointCampaignMessageUrl :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON PinpointCampaignMessage where
  toJSON PinpointCampaignMessage{..} =
    object $
    catMaybes
    [ fmap (("Action",) . toJSON) _pinpointCampaignMessageAction
    , fmap (("Body",) . toJSON) _pinpointCampaignMessageBody
    , fmap (("ImageIconUrl",) . toJSON) _pinpointCampaignMessageImageIconUrl
    , fmap (("ImageSmallIconUrl",) . toJSON) _pinpointCampaignMessageImageSmallIconUrl
    , fmap (("ImageUrl",) . toJSON) _pinpointCampaignMessageImageUrl
    , fmap (("JsonBody",) . toJSON) _pinpointCampaignMessageJsonBody
    , fmap (("MediaUrl",) . toJSON) _pinpointCampaignMessageMediaUrl
    , fmap (("RawContent",) . toJSON) _pinpointCampaignMessageRawContent
    , fmap (("SilentPush",) . toJSON) _pinpointCampaignMessageSilentPush
    , fmap (("TimeToLive",) . toJSON) _pinpointCampaignMessageTimeToLive
    , fmap (("Title",) . toJSON) _pinpointCampaignMessageTitle
    , fmap (("Url",) . toJSON) _pinpointCampaignMessageUrl
    ]

-- | Constructor for 'PinpointCampaignMessage' containing required fields as
-- arguments.
pinpointCampaignMessage
  :: PinpointCampaignMessage
pinpointCampaignMessage  =
  PinpointCampaignMessage
  { _pinpointCampaignMessageAction = Nothing
  , _pinpointCampaignMessageBody = Nothing
  , _pinpointCampaignMessageImageIconUrl = Nothing
  , _pinpointCampaignMessageImageSmallIconUrl = Nothing
  , _pinpointCampaignMessageImageUrl = Nothing
  , _pinpointCampaignMessageJsonBody = Nothing
  , _pinpointCampaignMessageMediaUrl = Nothing
  , _pinpointCampaignMessageRawContent = Nothing
  , _pinpointCampaignMessageSilentPush = Nothing
  , _pinpointCampaignMessageTimeToLive = Nothing
  , _pinpointCampaignMessageTitle = Nothing
  , _pinpointCampaignMessageUrl = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-message.html#cfn-pinpoint-campaign-message-action
pcmAction :: Lens' PinpointCampaignMessage (Maybe (Val Text))
pcmAction = lens _pinpointCampaignMessageAction (\s a -> s { _pinpointCampaignMessageAction = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-message.html#cfn-pinpoint-campaign-message-body
pcmBody :: Lens' PinpointCampaignMessage (Maybe (Val Text))
pcmBody = lens _pinpointCampaignMessageBody (\s a -> s { _pinpointCampaignMessageBody = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-message.html#cfn-pinpoint-campaign-message-imageiconurl
pcmImageIconUrl :: Lens' PinpointCampaignMessage (Maybe (Val Text))
pcmImageIconUrl = lens _pinpointCampaignMessageImageIconUrl (\s a -> s { _pinpointCampaignMessageImageIconUrl = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-message.html#cfn-pinpoint-campaign-message-imagesmalliconurl
pcmImageSmallIconUrl :: Lens' PinpointCampaignMessage (Maybe (Val Text))
pcmImageSmallIconUrl = lens _pinpointCampaignMessageImageSmallIconUrl (\s a -> s { _pinpointCampaignMessageImageSmallIconUrl = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-message.html#cfn-pinpoint-campaign-message-imageurl
pcmImageUrl :: Lens' PinpointCampaignMessage (Maybe (Val Text))
pcmImageUrl = lens _pinpointCampaignMessageImageUrl (\s a -> s { _pinpointCampaignMessageImageUrl = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-message.html#cfn-pinpoint-campaign-message-jsonbody
pcmJsonBody :: Lens' PinpointCampaignMessage (Maybe (Val Text))
pcmJsonBody = lens _pinpointCampaignMessageJsonBody (\s a -> s { _pinpointCampaignMessageJsonBody = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-message.html#cfn-pinpoint-campaign-message-mediaurl
pcmMediaUrl :: Lens' PinpointCampaignMessage (Maybe (Val Text))
pcmMediaUrl = lens _pinpointCampaignMessageMediaUrl (\s a -> s { _pinpointCampaignMessageMediaUrl = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-message.html#cfn-pinpoint-campaign-message-rawcontent
pcmRawContent :: Lens' PinpointCampaignMessage (Maybe (Val Text))
pcmRawContent = lens _pinpointCampaignMessageRawContent (\s a -> s { _pinpointCampaignMessageRawContent = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-message.html#cfn-pinpoint-campaign-message-silentpush
pcmSilentPush :: Lens' PinpointCampaignMessage (Maybe (Val Bool))
pcmSilentPush = lens _pinpointCampaignMessageSilentPush (\s a -> s { _pinpointCampaignMessageSilentPush = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-message.html#cfn-pinpoint-campaign-message-timetolive
pcmTimeToLive :: Lens' PinpointCampaignMessage (Maybe (Val Integer))
pcmTimeToLive = lens _pinpointCampaignMessageTimeToLive (\s a -> s { _pinpointCampaignMessageTimeToLive = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-message.html#cfn-pinpoint-campaign-message-title
pcmTitle :: Lens' PinpointCampaignMessage (Maybe (Val Text))
pcmTitle = lens _pinpointCampaignMessageTitle (\s a -> s { _pinpointCampaignMessageTitle = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-message.html#cfn-pinpoint-campaign-message-url
pcmUrl :: Lens' PinpointCampaignMessage (Maybe (Val Text))
pcmUrl = lens _pinpointCampaignMessageUrl (\s a -> s { _pinpointCampaignMessageUrl = a })
