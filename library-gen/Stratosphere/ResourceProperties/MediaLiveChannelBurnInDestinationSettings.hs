{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-burnindestinationsettings.html

module Stratosphere.ResourceProperties.MediaLiveChannelBurnInDestinationSettings where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.MediaLiveChannelInputLocation

-- | Full data type definition for MediaLiveChannelBurnInDestinationSettings.
-- See 'mediaLiveChannelBurnInDestinationSettings' for a more convenient
-- constructor.
data MediaLiveChannelBurnInDestinationSettings =
  MediaLiveChannelBurnInDestinationSettings
  { _mediaLiveChannelBurnInDestinationSettingsAlignment :: Maybe (Val Text)
  , _mediaLiveChannelBurnInDestinationSettingsBackgroundColor :: Maybe (Val Text)
  , _mediaLiveChannelBurnInDestinationSettingsBackgroundOpacity :: Maybe (Val Integer)
  , _mediaLiveChannelBurnInDestinationSettingsFont :: Maybe MediaLiveChannelInputLocation
  , _mediaLiveChannelBurnInDestinationSettingsFontColor :: Maybe (Val Text)
  , _mediaLiveChannelBurnInDestinationSettingsFontOpacity :: Maybe (Val Integer)
  , _mediaLiveChannelBurnInDestinationSettingsFontResolution :: Maybe (Val Integer)
  , _mediaLiveChannelBurnInDestinationSettingsFontSize :: Maybe (Val Text)
  , _mediaLiveChannelBurnInDestinationSettingsOutlineColor :: Maybe (Val Text)
  , _mediaLiveChannelBurnInDestinationSettingsOutlineSize :: Maybe (Val Integer)
  , _mediaLiveChannelBurnInDestinationSettingsShadowColor :: Maybe (Val Text)
  , _mediaLiveChannelBurnInDestinationSettingsShadowOpacity :: Maybe (Val Integer)
  , _mediaLiveChannelBurnInDestinationSettingsShadowXOffset :: Maybe (Val Integer)
  , _mediaLiveChannelBurnInDestinationSettingsShadowYOffset :: Maybe (Val Integer)
  , _mediaLiveChannelBurnInDestinationSettingsTeletextGridControl :: Maybe (Val Text)
  , _mediaLiveChannelBurnInDestinationSettingsXPosition :: Maybe (Val Integer)
  , _mediaLiveChannelBurnInDestinationSettingsYPosition :: Maybe (Val Integer)
  } deriving (Show, Eq)

instance ToJSON MediaLiveChannelBurnInDestinationSettings where
  toJSON MediaLiveChannelBurnInDestinationSettings{..} =
    object $
    catMaybes
    [ fmap (("Alignment",) . toJSON) _mediaLiveChannelBurnInDestinationSettingsAlignment
    , fmap (("BackgroundColor",) . toJSON) _mediaLiveChannelBurnInDestinationSettingsBackgroundColor
    , fmap (("BackgroundOpacity",) . toJSON) _mediaLiveChannelBurnInDestinationSettingsBackgroundOpacity
    , fmap (("Font",) . toJSON) _mediaLiveChannelBurnInDestinationSettingsFont
    , fmap (("FontColor",) . toJSON) _mediaLiveChannelBurnInDestinationSettingsFontColor
    , fmap (("FontOpacity",) . toJSON) _mediaLiveChannelBurnInDestinationSettingsFontOpacity
    , fmap (("FontResolution",) . toJSON) _mediaLiveChannelBurnInDestinationSettingsFontResolution
    , fmap (("FontSize",) . toJSON) _mediaLiveChannelBurnInDestinationSettingsFontSize
    , fmap (("OutlineColor",) . toJSON) _mediaLiveChannelBurnInDestinationSettingsOutlineColor
    , fmap (("OutlineSize",) . toJSON) _mediaLiveChannelBurnInDestinationSettingsOutlineSize
    , fmap (("ShadowColor",) . toJSON) _mediaLiveChannelBurnInDestinationSettingsShadowColor
    , fmap (("ShadowOpacity",) . toJSON) _mediaLiveChannelBurnInDestinationSettingsShadowOpacity
    , fmap (("ShadowXOffset",) . toJSON) _mediaLiveChannelBurnInDestinationSettingsShadowXOffset
    , fmap (("ShadowYOffset",) . toJSON) _mediaLiveChannelBurnInDestinationSettingsShadowYOffset
    , fmap (("TeletextGridControl",) . toJSON) _mediaLiveChannelBurnInDestinationSettingsTeletextGridControl
    , fmap (("XPosition",) . toJSON) _mediaLiveChannelBurnInDestinationSettingsXPosition
    , fmap (("YPosition",) . toJSON) _mediaLiveChannelBurnInDestinationSettingsYPosition
    ]

-- | Constructor for 'MediaLiveChannelBurnInDestinationSettings' containing
-- required fields as arguments.
mediaLiveChannelBurnInDestinationSettings
  :: MediaLiveChannelBurnInDestinationSettings
mediaLiveChannelBurnInDestinationSettings  =
  MediaLiveChannelBurnInDestinationSettings
  { _mediaLiveChannelBurnInDestinationSettingsAlignment = Nothing
  , _mediaLiveChannelBurnInDestinationSettingsBackgroundColor = Nothing
  , _mediaLiveChannelBurnInDestinationSettingsBackgroundOpacity = Nothing
  , _mediaLiveChannelBurnInDestinationSettingsFont = Nothing
  , _mediaLiveChannelBurnInDestinationSettingsFontColor = Nothing
  , _mediaLiveChannelBurnInDestinationSettingsFontOpacity = Nothing
  , _mediaLiveChannelBurnInDestinationSettingsFontResolution = Nothing
  , _mediaLiveChannelBurnInDestinationSettingsFontSize = Nothing
  , _mediaLiveChannelBurnInDestinationSettingsOutlineColor = Nothing
  , _mediaLiveChannelBurnInDestinationSettingsOutlineSize = Nothing
  , _mediaLiveChannelBurnInDestinationSettingsShadowColor = Nothing
  , _mediaLiveChannelBurnInDestinationSettingsShadowOpacity = Nothing
  , _mediaLiveChannelBurnInDestinationSettingsShadowXOffset = Nothing
  , _mediaLiveChannelBurnInDestinationSettingsShadowYOffset = Nothing
  , _mediaLiveChannelBurnInDestinationSettingsTeletextGridControl = Nothing
  , _mediaLiveChannelBurnInDestinationSettingsXPosition = Nothing
  , _mediaLiveChannelBurnInDestinationSettingsYPosition = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-burnindestinationsettings.html#cfn-medialive-channel-burnindestinationsettings-alignment
mlcbidsAlignment :: Lens' MediaLiveChannelBurnInDestinationSettings (Maybe (Val Text))
mlcbidsAlignment = lens _mediaLiveChannelBurnInDestinationSettingsAlignment (\s a -> s { _mediaLiveChannelBurnInDestinationSettingsAlignment = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-burnindestinationsettings.html#cfn-medialive-channel-burnindestinationsettings-backgroundcolor
mlcbidsBackgroundColor :: Lens' MediaLiveChannelBurnInDestinationSettings (Maybe (Val Text))
mlcbidsBackgroundColor = lens _mediaLiveChannelBurnInDestinationSettingsBackgroundColor (\s a -> s { _mediaLiveChannelBurnInDestinationSettingsBackgroundColor = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-burnindestinationsettings.html#cfn-medialive-channel-burnindestinationsettings-backgroundopacity
mlcbidsBackgroundOpacity :: Lens' MediaLiveChannelBurnInDestinationSettings (Maybe (Val Integer))
mlcbidsBackgroundOpacity = lens _mediaLiveChannelBurnInDestinationSettingsBackgroundOpacity (\s a -> s { _mediaLiveChannelBurnInDestinationSettingsBackgroundOpacity = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-burnindestinationsettings.html#cfn-medialive-channel-burnindestinationsettings-font
mlcbidsFont :: Lens' MediaLiveChannelBurnInDestinationSettings (Maybe MediaLiveChannelInputLocation)
mlcbidsFont = lens _mediaLiveChannelBurnInDestinationSettingsFont (\s a -> s { _mediaLiveChannelBurnInDestinationSettingsFont = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-burnindestinationsettings.html#cfn-medialive-channel-burnindestinationsettings-fontcolor
mlcbidsFontColor :: Lens' MediaLiveChannelBurnInDestinationSettings (Maybe (Val Text))
mlcbidsFontColor = lens _mediaLiveChannelBurnInDestinationSettingsFontColor (\s a -> s { _mediaLiveChannelBurnInDestinationSettingsFontColor = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-burnindestinationsettings.html#cfn-medialive-channel-burnindestinationsettings-fontopacity
mlcbidsFontOpacity :: Lens' MediaLiveChannelBurnInDestinationSettings (Maybe (Val Integer))
mlcbidsFontOpacity = lens _mediaLiveChannelBurnInDestinationSettingsFontOpacity (\s a -> s { _mediaLiveChannelBurnInDestinationSettingsFontOpacity = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-burnindestinationsettings.html#cfn-medialive-channel-burnindestinationsettings-fontresolution
mlcbidsFontResolution :: Lens' MediaLiveChannelBurnInDestinationSettings (Maybe (Val Integer))
mlcbidsFontResolution = lens _mediaLiveChannelBurnInDestinationSettingsFontResolution (\s a -> s { _mediaLiveChannelBurnInDestinationSettingsFontResolution = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-burnindestinationsettings.html#cfn-medialive-channel-burnindestinationsettings-fontsize
mlcbidsFontSize :: Lens' MediaLiveChannelBurnInDestinationSettings (Maybe (Val Text))
mlcbidsFontSize = lens _mediaLiveChannelBurnInDestinationSettingsFontSize (\s a -> s { _mediaLiveChannelBurnInDestinationSettingsFontSize = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-burnindestinationsettings.html#cfn-medialive-channel-burnindestinationsettings-outlinecolor
mlcbidsOutlineColor :: Lens' MediaLiveChannelBurnInDestinationSettings (Maybe (Val Text))
mlcbidsOutlineColor = lens _mediaLiveChannelBurnInDestinationSettingsOutlineColor (\s a -> s { _mediaLiveChannelBurnInDestinationSettingsOutlineColor = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-burnindestinationsettings.html#cfn-medialive-channel-burnindestinationsettings-outlinesize
mlcbidsOutlineSize :: Lens' MediaLiveChannelBurnInDestinationSettings (Maybe (Val Integer))
mlcbidsOutlineSize = lens _mediaLiveChannelBurnInDestinationSettingsOutlineSize (\s a -> s { _mediaLiveChannelBurnInDestinationSettingsOutlineSize = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-burnindestinationsettings.html#cfn-medialive-channel-burnindestinationsettings-shadowcolor
mlcbidsShadowColor :: Lens' MediaLiveChannelBurnInDestinationSettings (Maybe (Val Text))
mlcbidsShadowColor = lens _mediaLiveChannelBurnInDestinationSettingsShadowColor (\s a -> s { _mediaLiveChannelBurnInDestinationSettingsShadowColor = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-burnindestinationsettings.html#cfn-medialive-channel-burnindestinationsettings-shadowopacity
mlcbidsShadowOpacity :: Lens' MediaLiveChannelBurnInDestinationSettings (Maybe (Val Integer))
mlcbidsShadowOpacity = lens _mediaLiveChannelBurnInDestinationSettingsShadowOpacity (\s a -> s { _mediaLiveChannelBurnInDestinationSettingsShadowOpacity = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-burnindestinationsettings.html#cfn-medialive-channel-burnindestinationsettings-shadowxoffset
mlcbidsShadowXOffset :: Lens' MediaLiveChannelBurnInDestinationSettings (Maybe (Val Integer))
mlcbidsShadowXOffset = lens _mediaLiveChannelBurnInDestinationSettingsShadowXOffset (\s a -> s { _mediaLiveChannelBurnInDestinationSettingsShadowXOffset = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-burnindestinationsettings.html#cfn-medialive-channel-burnindestinationsettings-shadowyoffset
mlcbidsShadowYOffset :: Lens' MediaLiveChannelBurnInDestinationSettings (Maybe (Val Integer))
mlcbidsShadowYOffset = lens _mediaLiveChannelBurnInDestinationSettingsShadowYOffset (\s a -> s { _mediaLiveChannelBurnInDestinationSettingsShadowYOffset = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-burnindestinationsettings.html#cfn-medialive-channel-burnindestinationsettings-teletextgridcontrol
mlcbidsTeletextGridControl :: Lens' MediaLiveChannelBurnInDestinationSettings (Maybe (Val Text))
mlcbidsTeletextGridControl = lens _mediaLiveChannelBurnInDestinationSettingsTeletextGridControl (\s a -> s { _mediaLiveChannelBurnInDestinationSettingsTeletextGridControl = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-burnindestinationsettings.html#cfn-medialive-channel-burnindestinationsettings-xposition
mlcbidsXPosition :: Lens' MediaLiveChannelBurnInDestinationSettings (Maybe (Val Integer))
mlcbidsXPosition = lens _mediaLiveChannelBurnInDestinationSettingsXPosition (\s a -> s { _mediaLiveChannelBurnInDestinationSettingsXPosition = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-burnindestinationsettings.html#cfn-medialive-channel-burnindestinationsettings-yposition
mlcbidsYPosition :: Lens' MediaLiveChannelBurnInDestinationSettings (Maybe (Val Integer))
mlcbidsYPosition = lens _mediaLiveChannelBurnInDestinationSettingsYPosition (\s a -> s { _mediaLiveChannelBurnInDestinationSettingsYPosition = a })
