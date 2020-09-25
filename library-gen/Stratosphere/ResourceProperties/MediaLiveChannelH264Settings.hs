{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h264settings.html

module Stratosphere.ResourceProperties.MediaLiveChannelH264Settings where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.MediaLiveChannelH264ColorSpaceSettings
import Stratosphere.ResourceProperties.MediaLiveChannelH264FilterSettings

-- | Full data type definition for MediaLiveChannelH264Settings. See
-- 'mediaLiveChannelH264Settings' for a more convenient constructor.
data MediaLiveChannelH264Settings =
  MediaLiveChannelH264Settings
  { _mediaLiveChannelH264SettingsAdaptiveQuantization :: Maybe (Val Text)
  , _mediaLiveChannelH264SettingsAfdSignaling :: Maybe (Val Text)
  , _mediaLiveChannelH264SettingsBitrate :: Maybe (Val Integer)
  , _mediaLiveChannelH264SettingsBufFillPct :: Maybe (Val Integer)
  , _mediaLiveChannelH264SettingsBufSize :: Maybe (Val Integer)
  , _mediaLiveChannelH264SettingsColorMetadata :: Maybe (Val Text)
  , _mediaLiveChannelH264SettingsColorSpaceSettings :: Maybe MediaLiveChannelH264ColorSpaceSettings
  , _mediaLiveChannelH264SettingsEntropyEncoding :: Maybe (Val Text)
  , _mediaLiveChannelH264SettingsFilterSettings :: Maybe MediaLiveChannelH264FilterSettings
  , _mediaLiveChannelH264SettingsFixedAfd :: Maybe (Val Text)
  , _mediaLiveChannelH264SettingsFlickerAq :: Maybe (Val Text)
  , _mediaLiveChannelH264SettingsForceFieldPictures :: Maybe (Val Text)
  , _mediaLiveChannelH264SettingsFramerateControl :: Maybe (Val Text)
  , _mediaLiveChannelH264SettingsFramerateDenominator :: Maybe (Val Integer)
  , _mediaLiveChannelH264SettingsFramerateNumerator :: Maybe (Val Integer)
  , _mediaLiveChannelH264SettingsGopBReference :: Maybe (Val Text)
  , _mediaLiveChannelH264SettingsGopClosedCadence :: Maybe (Val Integer)
  , _mediaLiveChannelH264SettingsGopNumBFrames :: Maybe (Val Integer)
  , _mediaLiveChannelH264SettingsGopSize :: Maybe (Val Double)
  , _mediaLiveChannelH264SettingsGopSizeUnits :: Maybe (Val Text)
  , _mediaLiveChannelH264SettingsLevel :: Maybe (Val Text)
  , _mediaLiveChannelH264SettingsLookAheadRateControl :: Maybe (Val Text)
  , _mediaLiveChannelH264SettingsMaxBitrate :: Maybe (Val Integer)
  , _mediaLiveChannelH264SettingsMinIInterval :: Maybe (Val Integer)
  , _mediaLiveChannelH264SettingsNumRefFrames :: Maybe (Val Integer)
  , _mediaLiveChannelH264SettingsParControl :: Maybe (Val Text)
  , _mediaLiveChannelH264SettingsParDenominator :: Maybe (Val Integer)
  , _mediaLiveChannelH264SettingsParNumerator :: Maybe (Val Integer)
  , _mediaLiveChannelH264SettingsProfile :: Maybe (Val Text)
  , _mediaLiveChannelH264SettingsQualityLevel :: Maybe (Val Text)
  , _mediaLiveChannelH264SettingsQvbrQualityLevel :: Maybe (Val Integer)
  , _mediaLiveChannelH264SettingsRateControlMode :: Maybe (Val Text)
  , _mediaLiveChannelH264SettingsScanType :: Maybe (Val Text)
  , _mediaLiveChannelH264SettingsSceneChangeDetect :: Maybe (Val Text)
  , _mediaLiveChannelH264SettingsSlices :: Maybe (Val Integer)
  , _mediaLiveChannelH264SettingsSoftness :: Maybe (Val Integer)
  , _mediaLiveChannelH264SettingsSpatialAq :: Maybe (Val Text)
  , _mediaLiveChannelH264SettingsSubgopLength :: Maybe (Val Text)
  , _mediaLiveChannelH264SettingsSyntax :: Maybe (Val Text)
  , _mediaLiveChannelH264SettingsTemporalAq :: Maybe (Val Text)
  , _mediaLiveChannelH264SettingsTimecodeInsertion :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON MediaLiveChannelH264Settings where
  toJSON MediaLiveChannelH264Settings{..} =
    object $
    catMaybes
    [ fmap (("AdaptiveQuantization",) . toJSON) _mediaLiveChannelH264SettingsAdaptiveQuantization
    , fmap (("AfdSignaling",) . toJSON) _mediaLiveChannelH264SettingsAfdSignaling
    , fmap (("Bitrate",) . toJSON) _mediaLiveChannelH264SettingsBitrate
    , fmap (("BufFillPct",) . toJSON) _mediaLiveChannelH264SettingsBufFillPct
    , fmap (("BufSize",) . toJSON) _mediaLiveChannelH264SettingsBufSize
    , fmap (("ColorMetadata",) . toJSON) _mediaLiveChannelH264SettingsColorMetadata
    , fmap (("ColorSpaceSettings",) . toJSON) _mediaLiveChannelH264SettingsColorSpaceSettings
    , fmap (("EntropyEncoding",) . toJSON) _mediaLiveChannelH264SettingsEntropyEncoding
    , fmap (("FilterSettings",) . toJSON) _mediaLiveChannelH264SettingsFilterSettings
    , fmap (("FixedAfd",) . toJSON) _mediaLiveChannelH264SettingsFixedAfd
    , fmap (("FlickerAq",) . toJSON) _mediaLiveChannelH264SettingsFlickerAq
    , fmap (("ForceFieldPictures",) . toJSON) _mediaLiveChannelH264SettingsForceFieldPictures
    , fmap (("FramerateControl",) . toJSON) _mediaLiveChannelH264SettingsFramerateControl
    , fmap (("FramerateDenominator",) . toJSON) _mediaLiveChannelH264SettingsFramerateDenominator
    , fmap (("FramerateNumerator",) . toJSON) _mediaLiveChannelH264SettingsFramerateNumerator
    , fmap (("GopBReference",) . toJSON) _mediaLiveChannelH264SettingsGopBReference
    , fmap (("GopClosedCadence",) . toJSON) _mediaLiveChannelH264SettingsGopClosedCadence
    , fmap (("GopNumBFrames",) . toJSON) _mediaLiveChannelH264SettingsGopNumBFrames
    , fmap (("GopSize",) . toJSON) _mediaLiveChannelH264SettingsGopSize
    , fmap (("GopSizeUnits",) . toJSON) _mediaLiveChannelH264SettingsGopSizeUnits
    , fmap (("Level",) . toJSON) _mediaLiveChannelH264SettingsLevel
    , fmap (("LookAheadRateControl",) . toJSON) _mediaLiveChannelH264SettingsLookAheadRateControl
    , fmap (("MaxBitrate",) . toJSON) _mediaLiveChannelH264SettingsMaxBitrate
    , fmap (("MinIInterval",) . toJSON) _mediaLiveChannelH264SettingsMinIInterval
    , fmap (("NumRefFrames",) . toJSON) _mediaLiveChannelH264SettingsNumRefFrames
    , fmap (("ParControl",) . toJSON) _mediaLiveChannelH264SettingsParControl
    , fmap (("ParDenominator",) . toJSON) _mediaLiveChannelH264SettingsParDenominator
    , fmap (("ParNumerator",) . toJSON) _mediaLiveChannelH264SettingsParNumerator
    , fmap (("Profile",) . toJSON) _mediaLiveChannelH264SettingsProfile
    , fmap (("QualityLevel",) . toJSON) _mediaLiveChannelH264SettingsQualityLevel
    , fmap (("QvbrQualityLevel",) . toJSON) _mediaLiveChannelH264SettingsQvbrQualityLevel
    , fmap (("RateControlMode",) . toJSON) _mediaLiveChannelH264SettingsRateControlMode
    , fmap (("ScanType",) . toJSON) _mediaLiveChannelH264SettingsScanType
    , fmap (("SceneChangeDetect",) . toJSON) _mediaLiveChannelH264SettingsSceneChangeDetect
    , fmap (("Slices",) . toJSON) _mediaLiveChannelH264SettingsSlices
    , fmap (("Softness",) . toJSON) _mediaLiveChannelH264SettingsSoftness
    , fmap (("SpatialAq",) . toJSON) _mediaLiveChannelH264SettingsSpatialAq
    , fmap (("SubgopLength",) . toJSON) _mediaLiveChannelH264SettingsSubgopLength
    , fmap (("Syntax",) . toJSON) _mediaLiveChannelH264SettingsSyntax
    , fmap (("TemporalAq",) . toJSON) _mediaLiveChannelH264SettingsTemporalAq
    , fmap (("TimecodeInsertion",) . toJSON) _mediaLiveChannelH264SettingsTimecodeInsertion
    ]

-- | Constructor for 'MediaLiveChannelH264Settings' containing required fields
-- as arguments.
mediaLiveChannelH264Settings
  :: MediaLiveChannelH264Settings
mediaLiveChannelH264Settings  =
  MediaLiveChannelH264Settings
  { _mediaLiveChannelH264SettingsAdaptiveQuantization = Nothing
  , _mediaLiveChannelH264SettingsAfdSignaling = Nothing
  , _mediaLiveChannelH264SettingsBitrate = Nothing
  , _mediaLiveChannelH264SettingsBufFillPct = Nothing
  , _mediaLiveChannelH264SettingsBufSize = Nothing
  , _mediaLiveChannelH264SettingsColorMetadata = Nothing
  , _mediaLiveChannelH264SettingsColorSpaceSettings = Nothing
  , _mediaLiveChannelH264SettingsEntropyEncoding = Nothing
  , _mediaLiveChannelH264SettingsFilterSettings = Nothing
  , _mediaLiveChannelH264SettingsFixedAfd = Nothing
  , _mediaLiveChannelH264SettingsFlickerAq = Nothing
  , _mediaLiveChannelH264SettingsForceFieldPictures = Nothing
  , _mediaLiveChannelH264SettingsFramerateControl = Nothing
  , _mediaLiveChannelH264SettingsFramerateDenominator = Nothing
  , _mediaLiveChannelH264SettingsFramerateNumerator = Nothing
  , _mediaLiveChannelH264SettingsGopBReference = Nothing
  , _mediaLiveChannelH264SettingsGopClosedCadence = Nothing
  , _mediaLiveChannelH264SettingsGopNumBFrames = Nothing
  , _mediaLiveChannelH264SettingsGopSize = Nothing
  , _mediaLiveChannelH264SettingsGopSizeUnits = Nothing
  , _mediaLiveChannelH264SettingsLevel = Nothing
  , _mediaLiveChannelH264SettingsLookAheadRateControl = Nothing
  , _mediaLiveChannelH264SettingsMaxBitrate = Nothing
  , _mediaLiveChannelH264SettingsMinIInterval = Nothing
  , _mediaLiveChannelH264SettingsNumRefFrames = Nothing
  , _mediaLiveChannelH264SettingsParControl = Nothing
  , _mediaLiveChannelH264SettingsParDenominator = Nothing
  , _mediaLiveChannelH264SettingsParNumerator = Nothing
  , _mediaLiveChannelH264SettingsProfile = Nothing
  , _mediaLiveChannelH264SettingsQualityLevel = Nothing
  , _mediaLiveChannelH264SettingsQvbrQualityLevel = Nothing
  , _mediaLiveChannelH264SettingsRateControlMode = Nothing
  , _mediaLiveChannelH264SettingsScanType = Nothing
  , _mediaLiveChannelH264SettingsSceneChangeDetect = Nothing
  , _mediaLiveChannelH264SettingsSlices = Nothing
  , _mediaLiveChannelH264SettingsSoftness = Nothing
  , _mediaLiveChannelH264SettingsSpatialAq = Nothing
  , _mediaLiveChannelH264SettingsSubgopLength = Nothing
  , _mediaLiveChannelH264SettingsSyntax = Nothing
  , _mediaLiveChannelH264SettingsTemporalAq = Nothing
  , _mediaLiveChannelH264SettingsTimecodeInsertion = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h264settings.html#cfn-medialive-channel-h264settings-adaptivequantization
mlchsAdaptiveQuantization :: Lens' MediaLiveChannelH264Settings (Maybe (Val Text))
mlchsAdaptiveQuantization = lens _mediaLiveChannelH264SettingsAdaptiveQuantization (\s a -> s { _mediaLiveChannelH264SettingsAdaptiveQuantization = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h264settings.html#cfn-medialive-channel-h264settings-afdsignaling
mlchsAfdSignaling :: Lens' MediaLiveChannelH264Settings (Maybe (Val Text))
mlchsAfdSignaling = lens _mediaLiveChannelH264SettingsAfdSignaling (\s a -> s { _mediaLiveChannelH264SettingsAfdSignaling = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h264settings.html#cfn-medialive-channel-h264settings-bitrate
mlchsBitrate :: Lens' MediaLiveChannelH264Settings (Maybe (Val Integer))
mlchsBitrate = lens _mediaLiveChannelH264SettingsBitrate (\s a -> s { _mediaLiveChannelH264SettingsBitrate = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h264settings.html#cfn-medialive-channel-h264settings-buffillpct
mlchsBufFillPct :: Lens' MediaLiveChannelH264Settings (Maybe (Val Integer))
mlchsBufFillPct = lens _mediaLiveChannelH264SettingsBufFillPct (\s a -> s { _mediaLiveChannelH264SettingsBufFillPct = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h264settings.html#cfn-medialive-channel-h264settings-bufsize
mlchsBufSize :: Lens' MediaLiveChannelH264Settings (Maybe (Val Integer))
mlchsBufSize = lens _mediaLiveChannelH264SettingsBufSize (\s a -> s { _mediaLiveChannelH264SettingsBufSize = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h264settings.html#cfn-medialive-channel-h264settings-colormetadata
mlchsColorMetadata :: Lens' MediaLiveChannelH264Settings (Maybe (Val Text))
mlchsColorMetadata = lens _mediaLiveChannelH264SettingsColorMetadata (\s a -> s { _mediaLiveChannelH264SettingsColorMetadata = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h264settings.html#cfn-medialive-channel-h264settings-colorspacesettings
mlchsColorSpaceSettings :: Lens' MediaLiveChannelH264Settings (Maybe MediaLiveChannelH264ColorSpaceSettings)
mlchsColorSpaceSettings = lens _mediaLiveChannelH264SettingsColorSpaceSettings (\s a -> s { _mediaLiveChannelH264SettingsColorSpaceSettings = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h264settings.html#cfn-medialive-channel-h264settings-entropyencoding
mlchsEntropyEncoding :: Lens' MediaLiveChannelH264Settings (Maybe (Val Text))
mlchsEntropyEncoding = lens _mediaLiveChannelH264SettingsEntropyEncoding (\s a -> s { _mediaLiveChannelH264SettingsEntropyEncoding = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h264settings.html#cfn-medialive-channel-h264settings-filtersettings
mlchsFilterSettings :: Lens' MediaLiveChannelH264Settings (Maybe MediaLiveChannelH264FilterSettings)
mlchsFilterSettings = lens _mediaLiveChannelH264SettingsFilterSettings (\s a -> s { _mediaLiveChannelH264SettingsFilterSettings = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h264settings.html#cfn-medialive-channel-h264settings-fixedafd
mlchsFixedAfd :: Lens' MediaLiveChannelH264Settings (Maybe (Val Text))
mlchsFixedAfd = lens _mediaLiveChannelH264SettingsFixedAfd (\s a -> s { _mediaLiveChannelH264SettingsFixedAfd = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h264settings.html#cfn-medialive-channel-h264settings-flickeraq
mlchsFlickerAq :: Lens' MediaLiveChannelH264Settings (Maybe (Val Text))
mlchsFlickerAq = lens _mediaLiveChannelH264SettingsFlickerAq (\s a -> s { _mediaLiveChannelH264SettingsFlickerAq = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h264settings.html#cfn-medialive-channel-h264settings-forcefieldpictures
mlchsForceFieldPictures :: Lens' MediaLiveChannelH264Settings (Maybe (Val Text))
mlchsForceFieldPictures = lens _mediaLiveChannelH264SettingsForceFieldPictures (\s a -> s { _mediaLiveChannelH264SettingsForceFieldPictures = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h264settings.html#cfn-medialive-channel-h264settings-frameratecontrol
mlchsFramerateControl :: Lens' MediaLiveChannelH264Settings (Maybe (Val Text))
mlchsFramerateControl = lens _mediaLiveChannelH264SettingsFramerateControl (\s a -> s { _mediaLiveChannelH264SettingsFramerateControl = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h264settings.html#cfn-medialive-channel-h264settings-frameratedenominator
mlchsFramerateDenominator :: Lens' MediaLiveChannelH264Settings (Maybe (Val Integer))
mlchsFramerateDenominator = lens _mediaLiveChannelH264SettingsFramerateDenominator (\s a -> s { _mediaLiveChannelH264SettingsFramerateDenominator = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h264settings.html#cfn-medialive-channel-h264settings-frameratenumerator
mlchsFramerateNumerator :: Lens' MediaLiveChannelH264Settings (Maybe (Val Integer))
mlchsFramerateNumerator = lens _mediaLiveChannelH264SettingsFramerateNumerator (\s a -> s { _mediaLiveChannelH264SettingsFramerateNumerator = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h264settings.html#cfn-medialive-channel-h264settings-gopbreference
mlchsGopBReference :: Lens' MediaLiveChannelH264Settings (Maybe (Val Text))
mlchsGopBReference = lens _mediaLiveChannelH264SettingsGopBReference (\s a -> s { _mediaLiveChannelH264SettingsGopBReference = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h264settings.html#cfn-medialive-channel-h264settings-gopclosedcadence
mlchsGopClosedCadence :: Lens' MediaLiveChannelH264Settings (Maybe (Val Integer))
mlchsGopClosedCadence = lens _mediaLiveChannelH264SettingsGopClosedCadence (\s a -> s { _mediaLiveChannelH264SettingsGopClosedCadence = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h264settings.html#cfn-medialive-channel-h264settings-gopnumbframes
mlchsGopNumBFrames :: Lens' MediaLiveChannelH264Settings (Maybe (Val Integer))
mlchsGopNumBFrames = lens _mediaLiveChannelH264SettingsGopNumBFrames (\s a -> s { _mediaLiveChannelH264SettingsGopNumBFrames = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h264settings.html#cfn-medialive-channel-h264settings-gopsize
mlchsGopSize :: Lens' MediaLiveChannelH264Settings (Maybe (Val Double))
mlchsGopSize = lens _mediaLiveChannelH264SettingsGopSize (\s a -> s { _mediaLiveChannelH264SettingsGopSize = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h264settings.html#cfn-medialive-channel-h264settings-gopsizeunits
mlchsGopSizeUnits :: Lens' MediaLiveChannelH264Settings (Maybe (Val Text))
mlchsGopSizeUnits = lens _mediaLiveChannelH264SettingsGopSizeUnits (\s a -> s { _mediaLiveChannelH264SettingsGopSizeUnits = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h264settings.html#cfn-medialive-channel-h264settings-level
mlchsLevel :: Lens' MediaLiveChannelH264Settings (Maybe (Val Text))
mlchsLevel = lens _mediaLiveChannelH264SettingsLevel (\s a -> s { _mediaLiveChannelH264SettingsLevel = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h264settings.html#cfn-medialive-channel-h264settings-lookaheadratecontrol
mlchsLookAheadRateControl :: Lens' MediaLiveChannelH264Settings (Maybe (Val Text))
mlchsLookAheadRateControl = lens _mediaLiveChannelH264SettingsLookAheadRateControl (\s a -> s { _mediaLiveChannelH264SettingsLookAheadRateControl = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h264settings.html#cfn-medialive-channel-h264settings-maxbitrate
mlchsMaxBitrate :: Lens' MediaLiveChannelH264Settings (Maybe (Val Integer))
mlchsMaxBitrate = lens _mediaLiveChannelH264SettingsMaxBitrate (\s a -> s { _mediaLiveChannelH264SettingsMaxBitrate = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h264settings.html#cfn-medialive-channel-h264settings-miniinterval
mlchsMinIInterval :: Lens' MediaLiveChannelH264Settings (Maybe (Val Integer))
mlchsMinIInterval = lens _mediaLiveChannelH264SettingsMinIInterval (\s a -> s { _mediaLiveChannelH264SettingsMinIInterval = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h264settings.html#cfn-medialive-channel-h264settings-numrefframes
mlchsNumRefFrames :: Lens' MediaLiveChannelH264Settings (Maybe (Val Integer))
mlchsNumRefFrames = lens _mediaLiveChannelH264SettingsNumRefFrames (\s a -> s { _mediaLiveChannelH264SettingsNumRefFrames = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h264settings.html#cfn-medialive-channel-h264settings-parcontrol
mlchsParControl :: Lens' MediaLiveChannelH264Settings (Maybe (Val Text))
mlchsParControl = lens _mediaLiveChannelH264SettingsParControl (\s a -> s { _mediaLiveChannelH264SettingsParControl = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h264settings.html#cfn-medialive-channel-h264settings-pardenominator
mlchsParDenominator :: Lens' MediaLiveChannelH264Settings (Maybe (Val Integer))
mlchsParDenominator = lens _mediaLiveChannelH264SettingsParDenominator (\s a -> s { _mediaLiveChannelH264SettingsParDenominator = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h264settings.html#cfn-medialive-channel-h264settings-parnumerator
mlchsParNumerator :: Lens' MediaLiveChannelH264Settings (Maybe (Val Integer))
mlchsParNumerator = lens _mediaLiveChannelH264SettingsParNumerator (\s a -> s { _mediaLiveChannelH264SettingsParNumerator = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h264settings.html#cfn-medialive-channel-h264settings-profile
mlchsProfile :: Lens' MediaLiveChannelH264Settings (Maybe (Val Text))
mlchsProfile = lens _mediaLiveChannelH264SettingsProfile (\s a -> s { _mediaLiveChannelH264SettingsProfile = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h264settings.html#cfn-medialive-channel-h264settings-qualitylevel
mlchsQualityLevel :: Lens' MediaLiveChannelH264Settings (Maybe (Val Text))
mlchsQualityLevel = lens _mediaLiveChannelH264SettingsQualityLevel (\s a -> s { _mediaLiveChannelH264SettingsQualityLevel = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h264settings.html#cfn-medialive-channel-h264settings-qvbrqualitylevel
mlchsQvbrQualityLevel :: Lens' MediaLiveChannelH264Settings (Maybe (Val Integer))
mlchsQvbrQualityLevel = lens _mediaLiveChannelH264SettingsQvbrQualityLevel (\s a -> s { _mediaLiveChannelH264SettingsQvbrQualityLevel = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h264settings.html#cfn-medialive-channel-h264settings-ratecontrolmode
mlchsRateControlMode :: Lens' MediaLiveChannelH264Settings (Maybe (Val Text))
mlchsRateControlMode = lens _mediaLiveChannelH264SettingsRateControlMode (\s a -> s { _mediaLiveChannelH264SettingsRateControlMode = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h264settings.html#cfn-medialive-channel-h264settings-scantype
mlchsScanType :: Lens' MediaLiveChannelH264Settings (Maybe (Val Text))
mlchsScanType = lens _mediaLiveChannelH264SettingsScanType (\s a -> s { _mediaLiveChannelH264SettingsScanType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h264settings.html#cfn-medialive-channel-h264settings-scenechangedetect
mlchsSceneChangeDetect :: Lens' MediaLiveChannelH264Settings (Maybe (Val Text))
mlchsSceneChangeDetect = lens _mediaLiveChannelH264SettingsSceneChangeDetect (\s a -> s { _mediaLiveChannelH264SettingsSceneChangeDetect = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h264settings.html#cfn-medialive-channel-h264settings-slices
mlchsSlices :: Lens' MediaLiveChannelH264Settings (Maybe (Val Integer))
mlchsSlices = lens _mediaLiveChannelH264SettingsSlices (\s a -> s { _mediaLiveChannelH264SettingsSlices = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h264settings.html#cfn-medialive-channel-h264settings-softness
mlchsSoftness :: Lens' MediaLiveChannelH264Settings (Maybe (Val Integer))
mlchsSoftness = lens _mediaLiveChannelH264SettingsSoftness (\s a -> s { _mediaLiveChannelH264SettingsSoftness = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h264settings.html#cfn-medialive-channel-h264settings-spatialaq
mlchsSpatialAq :: Lens' MediaLiveChannelH264Settings (Maybe (Val Text))
mlchsSpatialAq = lens _mediaLiveChannelH264SettingsSpatialAq (\s a -> s { _mediaLiveChannelH264SettingsSpatialAq = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h264settings.html#cfn-medialive-channel-h264settings-subgoplength
mlchsSubgopLength :: Lens' MediaLiveChannelH264Settings (Maybe (Val Text))
mlchsSubgopLength = lens _mediaLiveChannelH264SettingsSubgopLength (\s a -> s { _mediaLiveChannelH264SettingsSubgopLength = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h264settings.html#cfn-medialive-channel-h264settings-syntax
mlchsSyntax :: Lens' MediaLiveChannelH264Settings (Maybe (Val Text))
mlchsSyntax = lens _mediaLiveChannelH264SettingsSyntax (\s a -> s { _mediaLiveChannelH264SettingsSyntax = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h264settings.html#cfn-medialive-channel-h264settings-temporalaq
mlchsTemporalAq :: Lens' MediaLiveChannelH264Settings (Maybe (Val Text))
mlchsTemporalAq = lens _mediaLiveChannelH264SettingsTemporalAq (\s a -> s { _mediaLiveChannelH264SettingsTemporalAq = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h264settings.html#cfn-medialive-channel-h264settings-timecodeinsertion
mlchsTimecodeInsertion :: Lens' MediaLiveChannelH264Settings (Maybe (Val Text))
mlchsTimecodeInsertion = lens _mediaLiveChannelH264SettingsTimecodeInsertion (\s a -> s { _mediaLiveChannelH264SettingsTimecodeInsertion = a })
