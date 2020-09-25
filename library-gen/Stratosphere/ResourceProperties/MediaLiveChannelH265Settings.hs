{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h265settings.html

module Stratosphere.ResourceProperties.MediaLiveChannelH265Settings where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.MediaLiveChannelH265ColorSpaceSettings
import Stratosphere.ResourceProperties.MediaLiveChannelH265FilterSettings

-- | Full data type definition for MediaLiveChannelH265Settings. See
-- 'mediaLiveChannelH265Settings' for a more convenient constructor.
data MediaLiveChannelH265Settings =
  MediaLiveChannelH265Settings
  { _mediaLiveChannelH265SettingsAdaptiveQuantization :: Maybe (Val Text)
  , _mediaLiveChannelH265SettingsAfdSignaling :: Maybe (Val Text)
  , _mediaLiveChannelH265SettingsAlternativeTransferFunction :: Maybe (Val Text)
  , _mediaLiveChannelH265SettingsBitrate :: Maybe (Val Integer)
  , _mediaLiveChannelH265SettingsBufSize :: Maybe (Val Integer)
  , _mediaLiveChannelH265SettingsColorMetadata :: Maybe (Val Text)
  , _mediaLiveChannelH265SettingsColorSpaceSettings :: Maybe MediaLiveChannelH265ColorSpaceSettings
  , _mediaLiveChannelH265SettingsFilterSettings :: Maybe MediaLiveChannelH265FilterSettings
  , _mediaLiveChannelH265SettingsFixedAfd :: Maybe (Val Text)
  , _mediaLiveChannelH265SettingsFlickerAq :: Maybe (Val Text)
  , _mediaLiveChannelH265SettingsFramerateDenominator :: Maybe (Val Integer)
  , _mediaLiveChannelH265SettingsFramerateNumerator :: Maybe (Val Integer)
  , _mediaLiveChannelH265SettingsGopClosedCadence :: Maybe (Val Integer)
  , _mediaLiveChannelH265SettingsGopSize :: Maybe (Val Double)
  , _mediaLiveChannelH265SettingsGopSizeUnits :: Maybe (Val Text)
  , _mediaLiveChannelH265SettingsLevel :: Maybe (Val Text)
  , _mediaLiveChannelH265SettingsLookAheadRateControl :: Maybe (Val Text)
  , _mediaLiveChannelH265SettingsMaxBitrate :: Maybe (Val Integer)
  , _mediaLiveChannelH265SettingsMinIInterval :: Maybe (Val Integer)
  , _mediaLiveChannelH265SettingsParDenominator :: Maybe (Val Integer)
  , _mediaLiveChannelH265SettingsParNumerator :: Maybe (Val Integer)
  , _mediaLiveChannelH265SettingsProfile :: Maybe (Val Text)
  , _mediaLiveChannelH265SettingsQvbrQualityLevel :: Maybe (Val Integer)
  , _mediaLiveChannelH265SettingsRateControlMode :: Maybe (Val Text)
  , _mediaLiveChannelH265SettingsScanType :: Maybe (Val Text)
  , _mediaLiveChannelH265SettingsSceneChangeDetect :: Maybe (Val Text)
  , _mediaLiveChannelH265SettingsSlices :: Maybe (Val Integer)
  , _mediaLiveChannelH265SettingsTier :: Maybe (Val Text)
  , _mediaLiveChannelH265SettingsTimecodeInsertion :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON MediaLiveChannelH265Settings where
  toJSON MediaLiveChannelH265Settings{..} =
    object $
    catMaybes
    [ fmap (("AdaptiveQuantization",) . toJSON) _mediaLiveChannelH265SettingsAdaptiveQuantization
    , fmap (("AfdSignaling",) . toJSON) _mediaLiveChannelH265SettingsAfdSignaling
    , fmap (("AlternativeTransferFunction",) . toJSON) _mediaLiveChannelH265SettingsAlternativeTransferFunction
    , fmap (("Bitrate",) . toJSON) _mediaLiveChannelH265SettingsBitrate
    , fmap (("BufSize",) . toJSON) _mediaLiveChannelH265SettingsBufSize
    , fmap (("ColorMetadata",) . toJSON) _mediaLiveChannelH265SettingsColorMetadata
    , fmap (("ColorSpaceSettings",) . toJSON) _mediaLiveChannelH265SettingsColorSpaceSettings
    , fmap (("FilterSettings",) . toJSON) _mediaLiveChannelH265SettingsFilterSettings
    , fmap (("FixedAfd",) . toJSON) _mediaLiveChannelH265SettingsFixedAfd
    , fmap (("FlickerAq",) . toJSON) _mediaLiveChannelH265SettingsFlickerAq
    , fmap (("FramerateDenominator",) . toJSON) _mediaLiveChannelH265SettingsFramerateDenominator
    , fmap (("FramerateNumerator",) . toJSON) _mediaLiveChannelH265SettingsFramerateNumerator
    , fmap (("GopClosedCadence",) . toJSON) _mediaLiveChannelH265SettingsGopClosedCadence
    , fmap (("GopSize",) . toJSON) _mediaLiveChannelH265SettingsGopSize
    , fmap (("GopSizeUnits",) . toJSON) _mediaLiveChannelH265SettingsGopSizeUnits
    , fmap (("Level",) . toJSON) _mediaLiveChannelH265SettingsLevel
    , fmap (("LookAheadRateControl",) . toJSON) _mediaLiveChannelH265SettingsLookAheadRateControl
    , fmap (("MaxBitrate",) . toJSON) _mediaLiveChannelH265SettingsMaxBitrate
    , fmap (("MinIInterval",) . toJSON) _mediaLiveChannelH265SettingsMinIInterval
    , fmap (("ParDenominator",) . toJSON) _mediaLiveChannelH265SettingsParDenominator
    , fmap (("ParNumerator",) . toJSON) _mediaLiveChannelH265SettingsParNumerator
    , fmap (("Profile",) . toJSON) _mediaLiveChannelH265SettingsProfile
    , fmap (("QvbrQualityLevel",) . toJSON) _mediaLiveChannelH265SettingsQvbrQualityLevel
    , fmap (("RateControlMode",) . toJSON) _mediaLiveChannelH265SettingsRateControlMode
    , fmap (("ScanType",) . toJSON) _mediaLiveChannelH265SettingsScanType
    , fmap (("SceneChangeDetect",) . toJSON) _mediaLiveChannelH265SettingsSceneChangeDetect
    , fmap (("Slices",) . toJSON) _mediaLiveChannelH265SettingsSlices
    , fmap (("Tier",) . toJSON) _mediaLiveChannelH265SettingsTier
    , fmap (("TimecodeInsertion",) . toJSON) _mediaLiveChannelH265SettingsTimecodeInsertion
    ]

-- | Constructor for 'MediaLiveChannelH265Settings' containing required fields
-- as arguments.
mediaLiveChannelH265Settings
  :: MediaLiveChannelH265Settings
mediaLiveChannelH265Settings  =
  MediaLiveChannelH265Settings
  { _mediaLiveChannelH265SettingsAdaptiveQuantization = Nothing
  , _mediaLiveChannelH265SettingsAfdSignaling = Nothing
  , _mediaLiveChannelH265SettingsAlternativeTransferFunction = Nothing
  , _mediaLiveChannelH265SettingsBitrate = Nothing
  , _mediaLiveChannelH265SettingsBufSize = Nothing
  , _mediaLiveChannelH265SettingsColorMetadata = Nothing
  , _mediaLiveChannelH265SettingsColorSpaceSettings = Nothing
  , _mediaLiveChannelH265SettingsFilterSettings = Nothing
  , _mediaLiveChannelH265SettingsFixedAfd = Nothing
  , _mediaLiveChannelH265SettingsFlickerAq = Nothing
  , _mediaLiveChannelH265SettingsFramerateDenominator = Nothing
  , _mediaLiveChannelH265SettingsFramerateNumerator = Nothing
  , _mediaLiveChannelH265SettingsGopClosedCadence = Nothing
  , _mediaLiveChannelH265SettingsGopSize = Nothing
  , _mediaLiveChannelH265SettingsGopSizeUnits = Nothing
  , _mediaLiveChannelH265SettingsLevel = Nothing
  , _mediaLiveChannelH265SettingsLookAheadRateControl = Nothing
  , _mediaLiveChannelH265SettingsMaxBitrate = Nothing
  , _mediaLiveChannelH265SettingsMinIInterval = Nothing
  , _mediaLiveChannelH265SettingsParDenominator = Nothing
  , _mediaLiveChannelH265SettingsParNumerator = Nothing
  , _mediaLiveChannelH265SettingsProfile = Nothing
  , _mediaLiveChannelH265SettingsQvbrQualityLevel = Nothing
  , _mediaLiveChannelH265SettingsRateControlMode = Nothing
  , _mediaLiveChannelH265SettingsScanType = Nothing
  , _mediaLiveChannelH265SettingsSceneChangeDetect = Nothing
  , _mediaLiveChannelH265SettingsSlices = Nothing
  , _mediaLiveChannelH265SettingsTier = Nothing
  , _mediaLiveChannelH265SettingsTimecodeInsertion = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h265settings.html#cfn-medialive-channel-h265settings-adaptivequantization
mlchsAdaptiveQuantization :: Lens' MediaLiveChannelH265Settings (Maybe (Val Text))
mlchsAdaptiveQuantization = lens _mediaLiveChannelH265SettingsAdaptiveQuantization (\s a -> s { _mediaLiveChannelH265SettingsAdaptiveQuantization = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h265settings.html#cfn-medialive-channel-h265settings-afdsignaling
mlchsAfdSignaling :: Lens' MediaLiveChannelH265Settings (Maybe (Val Text))
mlchsAfdSignaling = lens _mediaLiveChannelH265SettingsAfdSignaling (\s a -> s { _mediaLiveChannelH265SettingsAfdSignaling = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h265settings.html#cfn-medialive-channel-h265settings-alternativetransferfunction
mlchsAlternativeTransferFunction :: Lens' MediaLiveChannelH265Settings (Maybe (Val Text))
mlchsAlternativeTransferFunction = lens _mediaLiveChannelH265SettingsAlternativeTransferFunction (\s a -> s { _mediaLiveChannelH265SettingsAlternativeTransferFunction = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h265settings.html#cfn-medialive-channel-h265settings-bitrate
mlchsBitrate :: Lens' MediaLiveChannelH265Settings (Maybe (Val Integer))
mlchsBitrate = lens _mediaLiveChannelH265SettingsBitrate (\s a -> s { _mediaLiveChannelH265SettingsBitrate = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h265settings.html#cfn-medialive-channel-h265settings-bufsize
mlchsBufSize :: Lens' MediaLiveChannelH265Settings (Maybe (Val Integer))
mlchsBufSize = lens _mediaLiveChannelH265SettingsBufSize (\s a -> s { _mediaLiveChannelH265SettingsBufSize = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h265settings.html#cfn-medialive-channel-h265settings-colormetadata
mlchsColorMetadata :: Lens' MediaLiveChannelH265Settings (Maybe (Val Text))
mlchsColorMetadata = lens _mediaLiveChannelH265SettingsColorMetadata (\s a -> s { _mediaLiveChannelH265SettingsColorMetadata = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h265settings.html#cfn-medialive-channel-h265settings-colorspacesettings
mlchsColorSpaceSettings :: Lens' MediaLiveChannelH265Settings (Maybe MediaLiveChannelH265ColorSpaceSettings)
mlchsColorSpaceSettings = lens _mediaLiveChannelH265SettingsColorSpaceSettings (\s a -> s { _mediaLiveChannelH265SettingsColorSpaceSettings = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h265settings.html#cfn-medialive-channel-h265settings-filtersettings
mlchsFilterSettings :: Lens' MediaLiveChannelH265Settings (Maybe MediaLiveChannelH265FilterSettings)
mlchsFilterSettings = lens _mediaLiveChannelH265SettingsFilterSettings (\s a -> s { _mediaLiveChannelH265SettingsFilterSettings = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h265settings.html#cfn-medialive-channel-h265settings-fixedafd
mlchsFixedAfd :: Lens' MediaLiveChannelH265Settings (Maybe (Val Text))
mlchsFixedAfd = lens _mediaLiveChannelH265SettingsFixedAfd (\s a -> s { _mediaLiveChannelH265SettingsFixedAfd = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h265settings.html#cfn-medialive-channel-h265settings-flickeraq
mlchsFlickerAq :: Lens' MediaLiveChannelH265Settings (Maybe (Val Text))
mlchsFlickerAq = lens _mediaLiveChannelH265SettingsFlickerAq (\s a -> s { _mediaLiveChannelH265SettingsFlickerAq = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h265settings.html#cfn-medialive-channel-h265settings-frameratedenominator
mlchsFramerateDenominator :: Lens' MediaLiveChannelH265Settings (Maybe (Val Integer))
mlchsFramerateDenominator = lens _mediaLiveChannelH265SettingsFramerateDenominator (\s a -> s { _mediaLiveChannelH265SettingsFramerateDenominator = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h265settings.html#cfn-medialive-channel-h265settings-frameratenumerator
mlchsFramerateNumerator :: Lens' MediaLiveChannelH265Settings (Maybe (Val Integer))
mlchsFramerateNumerator = lens _mediaLiveChannelH265SettingsFramerateNumerator (\s a -> s { _mediaLiveChannelH265SettingsFramerateNumerator = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h265settings.html#cfn-medialive-channel-h265settings-gopclosedcadence
mlchsGopClosedCadence :: Lens' MediaLiveChannelH265Settings (Maybe (Val Integer))
mlchsGopClosedCadence = lens _mediaLiveChannelH265SettingsGopClosedCadence (\s a -> s { _mediaLiveChannelH265SettingsGopClosedCadence = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h265settings.html#cfn-medialive-channel-h265settings-gopsize
mlchsGopSize :: Lens' MediaLiveChannelH265Settings (Maybe (Val Double))
mlchsGopSize = lens _mediaLiveChannelH265SettingsGopSize (\s a -> s { _mediaLiveChannelH265SettingsGopSize = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h265settings.html#cfn-medialive-channel-h265settings-gopsizeunits
mlchsGopSizeUnits :: Lens' MediaLiveChannelH265Settings (Maybe (Val Text))
mlchsGopSizeUnits = lens _mediaLiveChannelH265SettingsGopSizeUnits (\s a -> s { _mediaLiveChannelH265SettingsGopSizeUnits = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h265settings.html#cfn-medialive-channel-h265settings-level
mlchsLevel :: Lens' MediaLiveChannelH265Settings (Maybe (Val Text))
mlchsLevel = lens _mediaLiveChannelH265SettingsLevel (\s a -> s { _mediaLiveChannelH265SettingsLevel = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h265settings.html#cfn-medialive-channel-h265settings-lookaheadratecontrol
mlchsLookAheadRateControl :: Lens' MediaLiveChannelH265Settings (Maybe (Val Text))
mlchsLookAheadRateControl = lens _mediaLiveChannelH265SettingsLookAheadRateControl (\s a -> s { _mediaLiveChannelH265SettingsLookAheadRateControl = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h265settings.html#cfn-medialive-channel-h265settings-maxbitrate
mlchsMaxBitrate :: Lens' MediaLiveChannelH265Settings (Maybe (Val Integer))
mlchsMaxBitrate = lens _mediaLiveChannelH265SettingsMaxBitrate (\s a -> s { _mediaLiveChannelH265SettingsMaxBitrate = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h265settings.html#cfn-medialive-channel-h265settings-miniinterval
mlchsMinIInterval :: Lens' MediaLiveChannelH265Settings (Maybe (Val Integer))
mlchsMinIInterval = lens _mediaLiveChannelH265SettingsMinIInterval (\s a -> s { _mediaLiveChannelH265SettingsMinIInterval = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h265settings.html#cfn-medialive-channel-h265settings-pardenominator
mlchsParDenominator :: Lens' MediaLiveChannelH265Settings (Maybe (Val Integer))
mlchsParDenominator = lens _mediaLiveChannelH265SettingsParDenominator (\s a -> s { _mediaLiveChannelH265SettingsParDenominator = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h265settings.html#cfn-medialive-channel-h265settings-parnumerator
mlchsParNumerator :: Lens' MediaLiveChannelH265Settings (Maybe (Val Integer))
mlchsParNumerator = lens _mediaLiveChannelH265SettingsParNumerator (\s a -> s { _mediaLiveChannelH265SettingsParNumerator = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h265settings.html#cfn-medialive-channel-h265settings-profile
mlchsProfile :: Lens' MediaLiveChannelH265Settings (Maybe (Val Text))
mlchsProfile = lens _mediaLiveChannelH265SettingsProfile (\s a -> s { _mediaLiveChannelH265SettingsProfile = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h265settings.html#cfn-medialive-channel-h265settings-qvbrqualitylevel
mlchsQvbrQualityLevel :: Lens' MediaLiveChannelH265Settings (Maybe (Val Integer))
mlchsQvbrQualityLevel = lens _mediaLiveChannelH265SettingsQvbrQualityLevel (\s a -> s { _mediaLiveChannelH265SettingsQvbrQualityLevel = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h265settings.html#cfn-medialive-channel-h265settings-ratecontrolmode
mlchsRateControlMode :: Lens' MediaLiveChannelH265Settings (Maybe (Val Text))
mlchsRateControlMode = lens _mediaLiveChannelH265SettingsRateControlMode (\s a -> s { _mediaLiveChannelH265SettingsRateControlMode = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h265settings.html#cfn-medialive-channel-h265settings-scantype
mlchsScanType :: Lens' MediaLiveChannelH265Settings (Maybe (Val Text))
mlchsScanType = lens _mediaLiveChannelH265SettingsScanType (\s a -> s { _mediaLiveChannelH265SettingsScanType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h265settings.html#cfn-medialive-channel-h265settings-scenechangedetect
mlchsSceneChangeDetect :: Lens' MediaLiveChannelH265Settings (Maybe (Val Text))
mlchsSceneChangeDetect = lens _mediaLiveChannelH265SettingsSceneChangeDetect (\s a -> s { _mediaLiveChannelH265SettingsSceneChangeDetect = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h265settings.html#cfn-medialive-channel-h265settings-slices
mlchsSlices :: Lens' MediaLiveChannelH265Settings (Maybe (Val Integer))
mlchsSlices = lens _mediaLiveChannelH265SettingsSlices (\s a -> s { _mediaLiveChannelH265SettingsSlices = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h265settings.html#cfn-medialive-channel-h265settings-tier
mlchsTier :: Lens' MediaLiveChannelH265Settings (Maybe (Val Text))
mlchsTier = lens _mediaLiveChannelH265SettingsTier (\s a -> s { _mediaLiveChannelH265SettingsTier = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h265settings.html#cfn-medialive-channel-h265settings-timecodeinsertion
mlchsTimecodeInsertion :: Lens' MediaLiveChannelH265Settings (Maybe (Val Text))
mlchsTimecodeInsertion = lens _mediaLiveChannelH265SettingsTimecodeInsertion (\s a -> s { _mediaLiveChannelH265SettingsTimecodeInsertion = a })
