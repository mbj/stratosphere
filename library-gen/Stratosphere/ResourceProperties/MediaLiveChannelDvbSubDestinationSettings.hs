{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-dvbsubdestinationsettings.html

module Stratosphere.ResourceProperties.MediaLiveChannelDvbSubDestinationSettings where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.MediaLiveChannelInputLocation

-- | Full data type definition for MediaLiveChannelDvbSubDestinationSettings.
-- See 'mediaLiveChannelDvbSubDestinationSettings' for a more convenient
-- constructor.
data MediaLiveChannelDvbSubDestinationSettings =
  MediaLiveChannelDvbSubDestinationSettings
  { _mediaLiveChannelDvbSubDestinationSettingsAlignment :: Maybe (Val Text)
  , _mediaLiveChannelDvbSubDestinationSettingsBackgroundColor :: Maybe (Val Text)
  , _mediaLiveChannelDvbSubDestinationSettingsBackgroundOpacity :: Maybe (Val Integer)
  , _mediaLiveChannelDvbSubDestinationSettingsFont :: Maybe MediaLiveChannelInputLocation
  , _mediaLiveChannelDvbSubDestinationSettingsFontColor :: Maybe (Val Text)
  , _mediaLiveChannelDvbSubDestinationSettingsFontOpacity :: Maybe (Val Integer)
  , _mediaLiveChannelDvbSubDestinationSettingsFontResolution :: Maybe (Val Integer)
  , _mediaLiveChannelDvbSubDestinationSettingsFontSize :: Maybe (Val Text)
  , _mediaLiveChannelDvbSubDestinationSettingsOutlineColor :: Maybe (Val Text)
  , _mediaLiveChannelDvbSubDestinationSettingsOutlineSize :: Maybe (Val Integer)
  , _mediaLiveChannelDvbSubDestinationSettingsShadowColor :: Maybe (Val Text)
  , _mediaLiveChannelDvbSubDestinationSettingsShadowOpacity :: Maybe (Val Integer)
  , _mediaLiveChannelDvbSubDestinationSettingsShadowXOffset :: Maybe (Val Integer)
  , _mediaLiveChannelDvbSubDestinationSettingsShadowYOffset :: Maybe (Val Integer)
  , _mediaLiveChannelDvbSubDestinationSettingsTeletextGridControl :: Maybe (Val Text)
  , _mediaLiveChannelDvbSubDestinationSettingsXPosition :: Maybe (Val Integer)
  , _mediaLiveChannelDvbSubDestinationSettingsYPosition :: Maybe (Val Integer)
  } deriving (Show, Eq)

instance ToJSON MediaLiveChannelDvbSubDestinationSettings where
  toJSON MediaLiveChannelDvbSubDestinationSettings{..} =
    object $
    catMaybes
    [ fmap (("Alignment",) . toJSON) _mediaLiveChannelDvbSubDestinationSettingsAlignment
    , fmap (("BackgroundColor",) . toJSON) _mediaLiveChannelDvbSubDestinationSettingsBackgroundColor
    , fmap (("BackgroundOpacity",) . toJSON) _mediaLiveChannelDvbSubDestinationSettingsBackgroundOpacity
    , fmap (("Font",) . toJSON) _mediaLiveChannelDvbSubDestinationSettingsFont
    , fmap (("FontColor",) . toJSON) _mediaLiveChannelDvbSubDestinationSettingsFontColor
    , fmap (("FontOpacity",) . toJSON) _mediaLiveChannelDvbSubDestinationSettingsFontOpacity
    , fmap (("FontResolution",) . toJSON) _mediaLiveChannelDvbSubDestinationSettingsFontResolution
    , fmap (("FontSize",) . toJSON) _mediaLiveChannelDvbSubDestinationSettingsFontSize
    , fmap (("OutlineColor",) . toJSON) _mediaLiveChannelDvbSubDestinationSettingsOutlineColor
    , fmap (("OutlineSize",) . toJSON) _mediaLiveChannelDvbSubDestinationSettingsOutlineSize
    , fmap (("ShadowColor",) . toJSON) _mediaLiveChannelDvbSubDestinationSettingsShadowColor
    , fmap (("ShadowOpacity",) . toJSON) _mediaLiveChannelDvbSubDestinationSettingsShadowOpacity
    , fmap (("ShadowXOffset",) . toJSON) _mediaLiveChannelDvbSubDestinationSettingsShadowXOffset
    , fmap (("ShadowYOffset",) . toJSON) _mediaLiveChannelDvbSubDestinationSettingsShadowYOffset
    , fmap (("TeletextGridControl",) . toJSON) _mediaLiveChannelDvbSubDestinationSettingsTeletextGridControl
    , fmap (("XPosition",) . toJSON) _mediaLiveChannelDvbSubDestinationSettingsXPosition
    , fmap (("YPosition",) . toJSON) _mediaLiveChannelDvbSubDestinationSettingsYPosition
    ]

-- | Constructor for 'MediaLiveChannelDvbSubDestinationSettings' containing
-- required fields as arguments.
mediaLiveChannelDvbSubDestinationSettings
  :: MediaLiveChannelDvbSubDestinationSettings
mediaLiveChannelDvbSubDestinationSettings  =
  MediaLiveChannelDvbSubDestinationSettings
  { _mediaLiveChannelDvbSubDestinationSettingsAlignment = Nothing
  , _mediaLiveChannelDvbSubDestinationSettingsBackgroundColor = Nothing
  , _mediaLiveChannelDvbSubDestinationSettingsBackgroundOpacity = Nothing
  , _mediaLiveChannelDvbSubDestinationSettingsFont = Nothing
  , _mediaLiveChannelDvbSubDestinationSettingsFontColor = Nothing
  , _mediaLiveChannelDvbSubDestinationSettingsFontOpacity = Nothing
  , _mediaLiveChannelDvbSubDestinationSettingsFontResolution = Nothing
  , _mediaLiveChannelDvbSubDestinationSettingsFontSize = Nothing
  , _mediaLiveChannelDvbSubDestinationSettingsOutlineColor = Nothing
  , _mediaLiveChannelDvbSubDestinationSettingsOutlineSize = Nothing
  , _mediaLiveChannelDvbSubDestinationSettingsShadowColor = Nothing
  , _mediaLiveChannelDvbSubDestinationSettingsShadowOpacity = Nothing
  , _mediaLiveChannelDvbSubDestinationSettingsShadowXOffset = Nothing
  , _mediaLiveChannelDvbSubDestinationSettingsShadowYOffset = Nothing
  , _mediaLiveChannelDvbSubDestinationSettingsTeletextGridControl = Nothing
  , _mediaLiveChannelDvbSubDestinationSettingsXPosition = Nothing
  , _mediaLiveChannelDvbSubDestinationSettingsYPosition = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-dvbsubdestinationsettings.html#cfn-medialive-channel-dvbsubdestinationsettings-alignment
mlcdsdsAlignment :: Lens' MediaLiveChannelDvbSubDestinationSettings (Maybe (Val Text))
mlcdsdsAlignment = lens _mediaLiveChannelDvbSubDestinationSettingsAlignment (\s a -> s { _mediaLiveChannelDvbSubDestinationSettingsAlignment = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-dvbsubdestinationsettings.html#cfn-medialive-channel-dvbsubdestinationsettings-backgroundcolor
mlcdsdsBackgroundColor :: Lens' MediaLiveChannelDvbSubDestinationSettings (Maybe (Val Text))
mlcdsdsBackgroundColor = lens _mediaLiveChannelDvbSubDestinationSettingsBackgroundColor (\s a -> s { _mediaLiveChannelDvbSubDestinationSettingsBackgroundColor = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-dvbsubdestinationsettings.html#cfn-medialive-channel-dvbsubdestinationsettings-backgroundopacity
mlcdsdsBackgroundOpacity :: Lens' MediaLiveChannelDvbSubDestinationSettings (Maybe (Val Integer))
mlcdsdsBackgroundOpacity = lens _mediaLiveChannelDvbSubDestinationSettingsBackgroundOpacity (\s a -> s { _mediaLiveChannelDvbSubDestinationSettingsBackgroundOpacity = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-dvbsubdestinationsettings.html#cfn-medialive-channel-dvbsubdestinationsettings-font
mlcdsdsFont :: Lens' MediaLiveChannelDvbSubDestinationSettings (Maybe MediaLiveChannelInputLocation)
mlcdsdsFont = lens _mediaLiveChannelDvbSubDestinationSettingsFont (\s a -> s { _mediaLiveChannelDvbSubDestinationSettingsFont = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-dvbsubdestinationsettings.html#cfn-medialive-channel-dvbsubdestinationsettings-fontcolor
mlcdsdsFontColor :: Lens' MediaLiveChannelDvbSubDestinationSettings (Maybe (Val Text))
mlcdsdsFontColor = lens _mediaLiveChannelDvbSubDestinationSettingsFontColor (\s a -> s { _mediaLiveChannelDvbSubDestinationSettingsFontColor = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-dvbsubdestinationsettings.html#cfn-medialive-channel-dvbsubdestinationsettings-fontopacity
mlcdsdsFontOpacity :: Lens' MediaLiveChannelDvbSubDestinationSettings (Maybe (Val Integer))
mlcdsdsFontOpacity = lens _mediaLiveChannelDvbSubDestinationSettingsFontOpacity (\s a -> s { _mediaLiveChannelDvbSubDestinationSettingsFontOpacity = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-dvbsubdestinationsettings.html#cfn-medialive-channel-dvbsubdestinationsettings-fontresolution
mlcdsdsFontResolution :: Lens' MediaLiveChannelDvbSubDestinationSettings (Maybe (Val Integer))
mlcdsdsFontResolution = lens _mediaLiveChannelDvbSubDestinationSettingsFontResolution (\s a -> s { _mediaLiveChannelDvbSubDestinationSettingsFontResolution = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-dvbsubdestinationsettings.html#cfn-medialive-channel-dvbsubdestinationsettings-fontsize
mlcdsdsFontSize :: Lens' MediaLiveChannelDvbSubDestinationSettings (Maybe (Val Text))
mlcdsdsFontSize = lens _mediaLiveChannelDvbSubDestinationSettingsFontSize (\s a -> s { _mediaLiveChannelDvbSubDestinationSettingsFontSize = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-dvbsubdestinationsettings.html#cfn-medialive-channel-dvbsubdestinationsettings-outlinecolor
mlcdsdsOutlineColor :: Lens' MediaLiveChannelDvbSubDestinationSettings (Maybe (Val Text))
mlcdsdsOutlineColor = lens _mediaLiveChannelDvbSubDestinationSettingsOutlineColor (\s a -> s { _mediaLiveChannelDvbSubDestinationSettingsOutlineColor = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-dvbsubdestinationsettings.html#cfn-medialive-channel-dvbsubdestinationsettings-outlinesize
mlcdsdsOutlineSize :: Lens' MediaLiveChannelDvbSubDestinationSettings (Maybe (Val Integer))
mlcdsdsOutlineSize = lens _mediaLiveChannelDvbSubDestinationSettingsOutlineSize (\s a -> s { _mediaLiveChannelDvbSubDestinationSettingsOutlineSize = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-dvbsubdestinationsettings.html#cfn-medialive-channel-dvbsubdestinationsettings-shadowcolor
mlcdsdsShadowColor :: Lens' MediaLiveChannelDvbSubDestinationSettings (Maybe (Val Text))
mlcdsdsShadowColor = lens _mediaLiveChannelDvbSubDestinationSettingsShadowColor (\s a -> s { _mediaLiveChannelDvbSubDestinationSettingsShadowColor = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-dvbsubdestinationsettings.html#cfn-medialive-channel-dvbsubdestinationsettings-shadowopacity
mlcdsdsShadowOpacity :: Lens' MediaLiveChannelDvbSubDestinationSettings (Maybe (Val Integer))
mlcdsdsShadowOpacity = lens _mediaLiveChannelDvbSubDestinationSettingsShadowOpacity (\s a -> s { _mediaLiveChannelDvbSubDestinationSettingsShadowOpacity = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-dvbsubdestinationsettings.html#cfn-medialive-channel-dvbsubdestinationsettings-shadowxoffset
mlcdsdsShadowXOffset :: Lens' MediaLiveChannelDvbSubDestinationSettings (Maybe (Val Integer))
mlcdsdsShadowXOffset = lens _mediaLiveChannelDvbSubDestinationSettingsShadowXOffset (\s a -> s { _mediaLiveChannelDvbSubDestinationSettingsShadowXOffset = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-dvbsubdestinationsettings.html#cfn-medialive-channel-dvbsubdestinationsettings-shadowyoffset
mlcdsdsShadowYOffset :: Lens' MediaLiveChannelDvbSubDestinationSettings (Maybe (Val Integer))
mlcdsdsShadowYOffset = lens _mediaLiveChannelDvbSubDestinationSettingsShadowYOffset (\s a -> s { _mediaLiveChannelDvbSubDestinationSettingsShadowYOffset = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-dvbsubdestinationsettings.html#cfn-medialive-channel-dvbsubdestinationsettings-teletextgridcontrol
mlcdsdsTeletextGridControl :: Lens' MediaLiveChannelDvbSubDestinationSettings (Maybe (Val Text))
mlcdsdsTeletextGridControl = lens _mediaLiveChannelDvbSubDestinationSettingsTeletextGridControl (\s a -> s { _mediaLiveChannelDvbSubDestinationSettingsTeletextGridControl = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-dvbsubdestinationsettings.html#cfn-medialive-channel-dvbsubdestinationsettings-xposition
mlcdsdsXPosition :: Lens' MediaLiveChannelDvbSubDestinationSettings (Maybe (Val Integer))
mlcdsdsXPosition = lens _mediaLiveChannelDvbSubDestinationSettingsXPosition (\s a -> s { _mediaLiveChannelDvbSubDestinationSettingsXPosition = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-dvbsubdestinationsettings.html#cfn-medialive-channel-dvbsubdestinationsettings-yposition
mlcdsdsYPosition :: Lens' MediaLiveChannelDvbSubDestinationSettings (Maybe (Val Integer))
mlcdsdsYPosition = lens _mediaLiveChannelDvbSubDestinationSettingsYPosition (\s a -> s { _mediaLiveChannelDvbSubDestinationSettingsYPosition = a })
