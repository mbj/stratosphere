
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-outputdestinationsettings.html

module Stratosphere.ResourceProperties.MediaLiveChannelOutputDestinationSettings where

import Stratosphere.ResourceImports


-- | Full data type definition for MediaLiveChannelOutputDestinationSettings.
-- See 'mediaLiveChannelOutputDestinationSettings' for a more convenient
-- constructor.
data MediaLiveChannelOutputDestinationSettings =
  MediaLiveChannelOutputDestinationSettings
  { _mediaLiveChannelOutputDestinationSettingsPasswordParam :: Maybe (Val Text)
  , _mediaLiveChannelOutputDestinationSettingsStreamName :: Maybe (Val Text)
  , _mediaLiveChannelOutputDestinationSettingsUrl :: Maybe (Val Text)
  , _mediaLiveChannelOutputDestinationSettingsUsername :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON MediaLiveChannelOutputDestinationSettings where
  toJSON MediaLiveChannelOutputDestinationSettings{..} =
    object $
    catMaybes
    [ fmap (("PasswordParam",) . toJSON) _mediaLiveChannelOutputDestinationSettingsPasswordParam
    , fmap (("StreamName",) . toJSON) _mediaLiveChannelOutputDestinationSettingsStreamName
    , fmap (("Url",) . toJSON) _mediaLiveChannelOutputDestinationSettingsUrl
    , fmap (("Username",) . toJSON) _mediaLiveChannelOutputDestinationSettingsUsername
    ]

-- | Constructor for 'MediaLiveChannelOutputDestinationSettings' containing
-- required fields as arguments.
mediaLiveChannelOutputDestinationSettings
  :: MediaLiveChannelOutputDestinationSettings
mediaLiveChannelOutputDestinationSettings  =
  MediaLiveChannelOutputDestinationSettings
  { _mediaLiveChannelOutputDestinationSettingsPasswordParam = Nothing
  , _mediaLiveChannelOutputDestinationSettingsStreamName = Nothing
  , _mediaLiveChannelOutputDestinationSettingsUrl = Nothing
  , _mediaLiveChannelOutputDestinationSettingsUsername = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-outputdestinationsettings.html#cfn-medialive-channel-outputdestinationsettings-passwordparam
mlcodsPasswordParam :: Lens' MediaLiveChannelOutputDestinationSettings (Maybe (Val Text))
mlcodsPasswordParam = lens _mediaLiveChannelOutputDestinationSettingsPasswordParam (\s a -> s { _mediaLiveChannelOutputDestinationSettingsPasswordParam = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-outputdestinationsettings.html#cfn-medialive-channel-outputdestinationsettings-streamname
mlcodsStreamName :: Lens' MediaLiveChannelOutputDestinationSettings (Maybe (Val Text))
mlcodsStreamName = lens _mediaLiveChannelOutputDestinationSettingsStreamName (\s a -> s { _mediaLiveChannelOutputDestinationSettingsStreamName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-outputdestinationsettings.html#cfn-medialive-channel-outputdestinationsettings-url
mlcodsUrl :: Lens' MediaLiveChannelOutputDestinationSettings (Maybe (Val Text))
mlcodsUrl = lens _mediaLiveChannelOutputDestinationSettingsUrl (\s a -> s { _mediaLiveChannelOutputDestinationSettingsUrl = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-outputdestinationsettings.html#cfn-medialive-channel-outputdestinationsettings-username
mlcodsUsername :: Lens' MediaLiveChannelOutputDestinationSettings (Maybe (Val Text))
mlcodsUsername = lens _mediaLiveChannelOutputDestinationSettingsUsername (\s a -> s { _mediaLiveChannelOutputDestinationSettingsUsername = a })
