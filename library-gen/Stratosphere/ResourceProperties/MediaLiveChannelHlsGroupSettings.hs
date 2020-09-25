{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsgroupsettings.html

module Stratosphere.ResourceProperties.MediaLiveChannelHlsGroupSettings where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.MediaLiveChannelCaptionLanguageMapping
import Stratosphere.ResourceProperties.MediaLiveChannelOutputLocationRef
import Stratosphere.ResourceProperties.MediaLiveChannelHlsCdnSettings
import Stratosphere.ResourceProperties.MediaLiveChannelKeyProviderSettings

-- | Full data type definition for MediaLiveChannelHlsGroupSettings. See
-- 'mediaLiveChannelHlsGroupSettings' for a more convenient constructor.
data MediaLiveChannelHlsGroupSettings =
  MediaLiveChannelHlsGroupSettings
  { _mediaLiveChannelHlsGroupSettingsAdMarkers :: Maybe (ValList Text)
  , _mediaLiveChannelHlsGroupSettingsBaseUrlContent :: Maybe (Val Text)
  , _mediaLiveChannelHlsGroupSettingsBaseUrlContent1 :: Maybe (Val Text)
  , _mediaLiveChannelHlsGroupSettingsBaseUrlManifest :: Maybe (Val Text)
  , _mediaLiveChannelHlsGroupSettingsBaseUrlManifest1 :: Maybe (Val Text)
  , _mediaLiveChannelHlsGroupSettingsCaptionLanguageMappings :: Maybe [MediaLiveChannelCaptionLanguageMapping]
  , _mediaLiveChannelHlsGroupSettingsCaptionLanguageSetting :: Maybe (Val Text)
  , _mediaLiveChannelHlsGroupSettingsClientCache :: Maybe (Val Text)
  , _mediaLiveChannelHlsGroupSettingsCodecSpecification :: Maybe (Val Text)
  , _mediaLiveChannelHlsGroupSettingsConstantIv :: Maybe (Val Text)
  , _mediaLiveChannelHlsGroupSettingsDestination :: Maybe MediaLiveChannelOutputLocationRef
  , _mediaLiveChannelHlsGroupSettingsDirectoryStructure :: Maybe (Val Text)
  , _mediaLiveChannelHlsGroupSettingsEncryptionType :: Maybe (Val Text)
  , _mediaLiveChannelHlsGroupSettingsHlsCdnSettings :: Maybe MediaLiveChannelHlsCdnSettings
  , _mediaLiveChannelHlsGroupSettingsHlsId3SegmentTagging :: Maybe (Val Text)
  , _mediaLiveChannelHlsGroupSettingsIFrameOnlyPlaylists :: Maybe (Val Text)
  , _mediaLiveChannelHlsGroupSettingsIndexNSegments :: Maybe (Val Integer)
  , _mediaLiveChannelHlsGroupSettingsInputLossAction :: Maybe (Val Text)
  , _mediaLiveChannelHlsGroupSettingsIvInManifest :: Maybe (Val Text)
  , _mediaLiveChannelHlsGroupSettingsIvSource :: Maybe (Val Text)
  , _mediaLiveChannelHlsGroupSettingsKeepSegments :: Maybe (Val Integer)
  , _mediaLiveChannelHlsGroupSettingsKeyFormat :: Maybe (Val Text)
  , _mediaLiveChannelHlsGroupSettingsKeyFormatVersions :: Maybe (Val Text)
  , _mediaLiveChannelHlsGroupSettingsKeyProviderSettings :: Maybe MediaLiveChannelKeyProviderSettings
  , _mediaLiveChannelHlsGroupSettingsManifestCompression :: Maybe (Val Text)
  , _mediaLiveChannelHlsGroupSettingsManifestDurationFormat :: Maybe (Val Text)
  , _mediaLiveChannelHlsGroupSettingsMinSegmentLength :: Maybe (Val Integer)
  , _mediaLiveChannelHlsGroupSettingsMode :: Maybe (Val Text)
  , _mediaLiveChannelHlsGroupSettingsOutputSelection :: Maybe (Val Text)
  , _mediaLiveChannelHlsGroupSettingsProgramDateTime :: Maybe (Val Text)
  , _mediaLiveChannelHlsGroupSettingsProgramDateTimePeriod :: Maybe (Val Integer)
  , _mediaLiveChannelHlsGroupSettingsRedundantManifest :: Maybe (Val Text)
  , _mediaLiveChannelHlsGroupSettingsSegmentLength :: Maybe (Val Integer)
  , _mediaLiveChannelHlsGroupSettingsSegmentationMode :: Maybe (Val Text)
  , _mediaLiveChannelHlsGroupSettingsSegmentsPerSubdirectory :: Maybe (Val Integer)
  , _mediaLiveChannelHlsGroupSettingsStreamInfResolution :: Maybe (Val Text)
  , _mediaLiveChannelHlsGroupSettingsTimedMetadataId3Frame :: Maybe (Val Text)
  , _mediaLiveChannelHlsGroupSettingsTimedMetadataId3Period :: Maybe (Val Integer)
  , _mediaLiveChannelHlsGroupSettingsTimestampDeltaMilliseconds :: Maybe (Val Integer)
  , _mediaLiveChannelHlsGroupSettingsTsFileMode :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON MediaLiveChannelHlsGroupSettings where
  toJSON MediaLiveChannelHlsGroupSettings{..} =
    object $
    catMaybes
    [ fmap (("AdMarkers",) . toJSON) _mediaLiveChannelHlsGroupSettingsAdMarkers
    , fmap (("BaseUrlContent",) . toJSON) _mediaLiveChannelHlsGroupSettingsBaseUrlContent
    , fmap (("BaseUrlContent1",) . toJSON) _mediaLiveChannelHlsGroupSettingsBaseUrlContent1
    , fmap (("BaseUrlManifest",) . toJSON) _mediaLiveChannelHlsGroupSettingsBaseUrlManifest
    , fmap (("BaseUrlManifest1",) . toJSON) _mediaLiveChannelHlsGroupSettingsBaseUrlManifest1
    , fmap (("CaptionLanguageMappings",) . toJSON) _mediaLiveChannelHlsGroupSettingsCaptionLanguageMappings
    , fmap (("CaptionLanguageSetting",) . toJSON) _mediaLiveChannelHlsGroupSettingsCaptionLanguageSetting
    , fmap (("ClientCache",) . toJSON) _mediaLiveChannelHlsGroupSettingsClientCache
    , fmap (("CodecSpecification",) . toJSON) _mediaLiveChannelHlsGroupSettingsCodecSpecification
    , fmap (("ConstantIv",) . toJSON) _mediaLiveChannelHlsGroupSettingsConstantIv
    , fmap (("Destination",) . toJSON) _mediaLiveChannelHlsGroupSettingsDestination
    , fmap (("DirectoryStructure",) . toJSON) _mediaLiveChannelHlsGroupSettingsDirectoryStructure
    , fmap (("EncryptionType",) . toJSON) _mediaLiveChannelHlsGroupSettingsEncryptionType
    , fmap (("HlsCdnSettings",) . toJSON) _mediaLiveChannelHlsGroupSettingsHlsCdnSettings
    , fmap (("HlsId3SegmentTagging",) . toJSON) _mediaLiveChannelHlsGroupSettingsHlsId3SegmentTagging
    , fmap (("IFrameOnlyPlaylists",) . toJSON) _mediaLiveChannelHlsGroupSettingsIFrameOnlyPlaylists
    , fmap (("IndexNSegments",) . toJSON) _mediaLiveChannelHlsGroupSettingsIndexNSegments
    , fmap (("InputLossAction",) . toJSON) _mediaLiveChannelHlsGroupSettingsInputLossAction
    , fmap (("IvInManifest",) . toJSON) _mediaLiveChannelHlsGroupSettingsIvInManifest
    , fmap (("IvSource",) . toJSON) _mediaLiveChannelHlsGroupSettingsIvSource
    , fmap (("KeepSegments",) . toJSON) _mediaLiveChannelHlsGroupSettingsKeepSegments
    , fmap (("KeyFormat",) . toJSON) _mediaLiveChannelHlsGroupSettingsKeyFormat
    , fmap (("KeyFormatVersions",) . toJSON) _mediaLiveChannelHlsGroupSettingsKeyFormatVersions
    , fmap (("KeyProviderSettings",) . toJSON) _mediaLiveChannelHlsGroupSettingsKeyProviderSettings
    , fmap (("ManifestCompression",) . toJSON) _mediaLiveChannelHlsGroupSettingsManifestCompression
    , fmap (("ManifestDurationFormat",) . toJSON) _mediaLiveChannelHlsGroupSettingsManifestDurationFormat
    , fmap (("MinSegmentLength",) . toJSON) _mediaLiveChannelHlsGroupSettingsMinSegmentLength
    , fmap (("Mode",) . toJSON) _mediaLiveChannelHlsGroupSettingsMode
    , fmap (("OutputSelection",) . toJSON) _mediaLiveChannelHlsGroupSettingsOutputSelection
    , fmap (("ProgramDateTime",) . toJSON) _mediaLiveChannelHlsGroupSettingsProgramDateTime
    , fmap (("ProgramDateTimePeriod",) . toJSON) _mediaLiveChannelHlsGroupSettingsProgramDateTimePeriod
    , fmap (("RedundantManifest",) . toJSON) _mediaLiveChannelHlsGroupSettingsRedundantManifest
    , fmap (("SegmentLength",) . toJSON) _mediaLiveChannelHlsGroupSettingsSegmentLength
    , fmap (("SegmentationMode",) . toJSON) _mediaLiveChannelHlsGroupSettingsSegmentationMode
    , fmap (("SegmentsPerSubdirectory",) . toJSON) _mediaLiveChannelHlsGroupSettingsSegmentsPerSubdirectory
    , fmap (("StreamInfResolution",) . toJSON) _mediaLiveChannelHlsGroupSettingsStreamInfResolution
    , fmap (("TimedMetadataId3Frame",) . toJSON) _mediaLiveChannelHlsGroupSettingsTimedMetadataId3Frame
    , fmap (("TimedMetadataId3Period",) . toJSON) _mediaLiveChannelHlsGroupSettingsTimedMetadataId3Period
    , fmap (("TimestampDeltaMilliseconds",) . toJSON) _mediaLiveChannelHlsGroupSettingsTimestampDeltaMilliseconds
    , fmap (("TsFileMode",) . toJSON) _mediaLiveChannelHlsGroupSettingsTsFileMode
    ]

-- | Constructor for 'MediaLiveChannelHlsGroupSettings' containing required
-- fields as arguments.
mediaLiveChannelHlsGroupSettings
  :: MediaLiveChannelHlsGroupSettings
mediaLiveChannelHlsGroupSettings  =
  MediaLiveChannelHlsGroupSettings
  { _mediaLiveChannelHlsGroupSettingsAdMarkers = Nothing
  , _mediaLiveChannelHlsGroupSettingsBaseUrlContent = Nothing
  , _mediaLiveChannelHlsGroupSettingsBaseUrlContent1 = Nothing
  , _mediaLiveChannelHlsGroupSettingsBaseUrlManifest = Nothing
  , _mediaLiveChannelHlsGroupSettingsBaseUrlManifest1 = Nothing
  , _mediaLiveChannelHlsGroupSettingsCaptionLanguageMappings = Nothing
  , _mediaLiveChannelHlsGroupSettingsCaptionLanguageSetting = Nothing
  , _mediaLiveChannelHlsGroupSettingsClientCache = Nothing
  , _mediaLiveChannelHlsGroupSettingsCodecSpecification = Nothing
  , _mediaLiveChannelHlsGroupSettingsConstantIv = Nothing
  , _mediaLiveChannelHlsGroupSettingsDestination = Nothing
  , _mediaLiveChannelHlsGroupSettingsDirectoryStructure = Nothing
  , _mediaLiveChannelHlsGroupSettingsEncryptionType = Nothing
  , _mediaLiveChannelHlsGroupSettingsHlsCdnSettings = Nothing
  , _mediaLiveChannelHlsGroupSettingsHlsId3SegmentTagging = Nothing
  , _mediaLiveChannelHlsGroupSettingsIFrameOnlyPlaylists = Nothing
  , _mediaLiveChannelHlsGroupSettingsIndexNSegments = Nothing
  , _mediaLiveChannelHlsGroupSettingsInputLossAction = Nothing
  , _mediaLiveChannelHlsGroupSettingsIvInManifest = Nothing
  , _mediaLiveChannelHlsGroupSettingsIvSource = Nothing
  , _mediaLiveChannelHlsGroupSettingsKeepSegments = Nothing
  , _mediaLiveChannelHlsGroupSettingsKeyFormat = Nothing
  , _mediaLiveChannelHlsGroupSettingsKeyFormatVersions = Nothing
  , _mediaLiveChannelHlsGroupSettingsKeyProviderSettings = Nothing
  , _mediaLiveChannelHlsGroupSettingsManifestCompression = Nothing
  , _mediaLiveChannelHlsGroupSettingsManifestDurationFormat = Nothing
  , _mediaLiveChannelHlsGroupSettingsMinSegmentLength = Nothing
  , _mediaLiveChannelHlsGroupSettingsMode = Nothing
  , _mediaLiveChannelHlsGroupSettingsOutputSelection = Nothing
  , _mediaLiveChannelHlsGroupSettingsProgramDateTime = Nothing
  , _mediaLiveChannelHlsGroupSettingsProgramDateTimePeriod = Nothing
  , _mediaLiveChannelHlsGroupSettingsRedundantManifest = Nothing
  , _mediaLiveChannelHlsGroupSettingsSegmentLength = Nothing
  , _mediaLiveChannelHlsGroupSettingsSegmentationMode = Nothing
  , _mediaLiveChannelHlsGroupSettingsSegmentsPerSubdirectory = Nothing
  , _mediaLiveChannelHlsGroupSettingsStreamInfResolution = Nothing
  , _mediaLiveChannelHlsGroupSettingsTimedMetadataId3Frame = Nothing
  , _mediaLiveChannelHlsGroupSettingsTimedMetadataId3Period = Nothing
  , _mediaLiveChannelHlsGroupSettingsTimestampDeltaMilliseconds = Nothing
  , _mediaLiveChannelHlsGroupSettingsTsFileMode = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsgroupsettings.html#cfn-medialive-channel-hlsgroupsettings-admarkers
mlchgsAdMarkers :: Lens' MediaLiveChannelHlsGroupSettings (Maybe (ValList Text))
mlchgsAdMarkers = lens _mediaLiveChannelHlsGroupSettingsAdMarkers (\s a -> s { _mediaLiveChannelHlsGroupSettingsAdMarkers = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsgroupsettings.html#cfn-medialive-channel-hlsgroupsettings-baseurlcontent
mlchgsBaseUrlContent :: Lens' MediaLiveChannelHlsGroupSettings (Maybe (Val Text))
mlchgsBaseUrlContent = lens _mediaLiveChannelHlsGroupSettingsBaseUrlContent (\s a -> s { _mediaLiveChannelHlsGroupSettingsBaseUrlContent = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsgroupsettings.html#cfn-medialive-channel-hlsgroupsettings-baseurlcontent1
mlchgsBaseUrlContent1 :: Lens' MediaLiveChannelHlsGroupSettings (Maybe (Val Text))
mlchgsBaseUrlContent1 = lens _mediaLiveChannelHlsGroupSettingsBaseUrlContent1 (\s a -> s { _mediaLiveChannelHlsGroupSettingsBaseUrlContent1 = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsgroupsettings.html#cfn-medialive-channel-hlsgroupsettings-baseurlmanifest
mlchgsBaseUrlManifest :: Lens' MediaLiveChannelHlsGroupSettings (Maybe (Val Text))
mlchgsBaseUrlManifest = lens _mediaLiveChannelHlsGroupSettingsBaseUrlManifest (\s a -> s { _mediaLiveChannelHlsGroupSettingsBaseUrlManifest = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsgroupsettings.html#cfn-medialive-channel-hlsgroupsettings-baseurlmanifest1
mlchgsBaseUrlManifest1 :: Lens' MediaLiveChannelHlsGroupSettings (Maybe (Val Text))
mlchgsBaseUrlManifest1 = lens _mediaLiveChannelHlsGroupSettingsBaseUrlManifest1 (\s a -> s { _mediaLiveChannelHlsGroupSettingsBaseUrlManifest1 = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsgroupsettings.html#cfn-medialive-channel-hlsgroupsettings-captionlanguagemappings
mlchgsCaptionLanguageMappings :: Lens' MediaLiveChannelHlsGroupSettings (Maybe [MediaLiveChannelCaptionLanguageMapping])
mlchgsCaptionLanguageMappings = lens _mediaLiveChannelHlsGroupSettingsCaptionLanguageMappings (\s a -> s { _mediaLiveChannelHlsGroupSettingsCaptionLanguageMappings = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsgroupsettings.html#cfn-medialive-channel-hlsgroupsettings-captionlanguagesetting
mlchgsCaptionLanguageSetting :: Lens' MediaLiveChannelHlsGroupSettings (Maybe (Val Text))
mlchgsCaptionLanguageSetting = lens _mediaLiveChannelHlsGroupSettingsCaptionLanguageSetting (\s a -> s { _mediaLiveChannelHlsGroupSettingsCaptionLanguageSetting = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsgroupsettings.html#cfn-medialive-channel-hlsgroupsettings-clientcache
mlchgsClientCache :: Lens' MediaLiveChannelHlsGroupSettings (Maybe (Val Text))
mlchgsClientCache = lens _mediaLiveChannelHlsGroupSettingsClientCache (\s a -> s { _mediaLiveChannelHlsGroupSettingsClientCache = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsgroupsettings.html#cfn-medialive-channel-hlsgroupsettings-codecspecification
mlchgsCodecSpecification :: Lens' MediaLiveChannelHlsGroupSettings (Maybe (Val Text))
mlchgsCodecSpecification = lens _mediaLiveChannelHlsGroupSettingsCodecSpecification (\s a -> s { _mediaLiveChannelHlsGroupSettingsCodecSpecification = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsgroupsettings.html#cfn-medialive-channel-hlsgroupsettings-constantiv
mlchgsConstantIv :: Lens' MediaLiveChannelHlsGroupSettings (Maybe (Val Text))
mlchgsConstantIv = lens _mediaLiveChannelHlsGroupSettingsConstantIv (\s a -> s { _mediaLiveChannelHlsGroupSettingsConstantIv = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsgroupsettings.html#cfn-medialive-channel-hlsgroupsettings-destination
mlchgsDestination :: Lens' MediaLiveChannelHlsGroupSettings (Maybe MediaLiveChannelOutputLocationRef)
mlchgsDestination = lens _mediaLiveChannelHlsGroupSettingsDestination (\s a -> s { _mediaLiveChannelHlsGroupSettingsDestination = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsgroupsettings.html#cfn-medialive-channel-hlsgroupsettings-directorystructure
mlchgsDirectoryStructure :: Lens' MediaLiveChannelHlsGroupSettings (Maybe (Val Text))
mlchgsDirectoryStructure = lens _mediaLiveChannelHlsGroupSettingsDirectoryStructure (\s a -> s { _mediaLiveChannelHlsGroupSettingsDirectoryStructure = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsgroupsettings.html#cfn-medialive-channel-hlsgroupsettings-encryptiontype
mlchgsEncryptionType :: Lens' MediaLiveChannelHlsGroupSettings (Maybe (Val Text))
mlchgsEncryptionType = lens _mediaLiveChannelHlsGroupSettingsEncryptionType (\s a -> s { _mediaLiveChannelHlsGroupSettingsEncryptionType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsgroupsettings.html#cfn-medialive-channel-hlsgroupsettings-hlscdnsettings
mlchgsHlsCdnSettings :: Lens' MediaLiveChannelHlsGroupSettings (Maybe MediaLiveChannelHlsCdnSettings)
mlchgsHlsCdnSettings = lens _mediaLiveChannelHlsGroupSettingsHlsCdnSettings (\s a -> s { _mediaLiveChannelHlsGroupSettingsHlsCdnSettings = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsgroupsettings.html#cfn-medialive-channel-hlsgroupsettings-hlsid3segmenttagging
mlchgsHlsId3SegmentTagging :: Lens' MediaLiveChannelHlsGroupSettings (Maybe (Val Text))
mlchgsHlsId3SegmentTagging = lens _mediaLiveChannelHlsGroupSettingsHlsId3SegmentTagging (\s a -> s { _mediaLiveChannelHlsGroupSettingsHlsId3SegmentTagging = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsgroupsettings.html#cfn-medialive-channel-hlsgroupsettings-iframeonlyplaylists
mlchgsIFrameOnlyPlaylists :: Lens' MediaLiveChannelHlsGroupSettings (Maybe (Val Text))
mlchgsIFrameOnlyPlaylists = lens _mediaLiveChannelHlsGroupSettingsIFrameOnlyPlaylists (\s a -> s { _mediaLiveChannelHlsGroupSettingsIFrameOnlyPlaylists = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsgroupsettings.html#cfn-medialive-channel-hlsgroupsettings-indexnsegments
mlchgsIndexNSegments :: Lens' MediaLiveChannelHlsGroupSettings (Maybe (Val Integer))
mlchgsIndexNSegments = lens _mediaLiveChannelHlsGroupSettingsIndexNSegments (\s a -> s { _mediaLiveChannelHlsGroupSettingsIndexNSegments = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsgroupsettings.html#cfn-medialive-channel-hlsgroupsettings-inputlossaction
mlchgsInputLossAction :: Lens' MediaLiveChannelHlsGroupSettings (Maybe (Val Text))
mlchgsInputLossAction = lens _mediaLiveChannelHlsGroupSettingsInputLossAction (\s a -> s { _mediaLiveChannelHlsGroupSettingsInputLossAction = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsgroupsettings.html#cfn-medialive-channel-hlsgroupsettings-ivinmanifest
mlchgsIvInManifest :: Lens' MediaLiveChannelHlsGroupSettings (Maybe (Val Text))
mlchgsIvInManifest = lens _mediaLiveChannelHlsGroupSettingsIvInManifest (\s a -> s { _mediaLiveChannelHlsGroupSettingsIvInManifest = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsgroupsettings.html#cfn-medialive-channel-hlsgroupsettings-ivsource
mlchgsIvSource :: Lens' MediaLiveChannelHlsGroupSettings (Maybe (Val Text))
mlchgsIvSource = lens _mediaLiveChannelHlsGroupSettingsIvSource (\s a -> s { _mediaLiveChannelHlsGroupSettingsIvSource = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsgroupsettings.html#cfn-medialive-channel-hlsgroupsettings-keepsegments
mlchgsKeepSegments :: Lens' MediaLiveChannelHlsGroupSettings (Maybe (Val Integer))
mlchgsKeepSegments = lens _mediaLiveChannelHlsGroupSettingsKeepSegments (\s a -> s { _mediaLiveChannelHlsGroupSettingsKeepSegments = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsgroupsettings.html#cfn-medialive-channel-hlsgroupsettings-keyformat
mlchgsKeyFormat :: Lens' MediaLiveChannelHlsGroupSettings (Maybe (Val Text))
mlchgsKeyFormat = lens _mediaLiveChannelHlsGroupSettingsKeyFormat (\s a -> s { _mediaLiveChannelHlsGroupSettingsKeyFormat = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsgroupsettings.html#cfn-medialive-channel-hlsgroupsettings-keyformatversions
mlchgsKeyFormatVersions :: Lens' MediaLiveChannelHlsGroupSettings (Maybe (Val Text))
mlchgsKeyFormatVersions = lens _mediaLiveChannelHlsGroupSettingsKeyFormatVersions (\s a -> s { _mediaLiveChannelHlsGroupSettingsKeyFormatVersions = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsgroupsettings.html#cfn-medialive-channel-hlsgroupsettings-keyprovidersettings
mlchgsKeyProviderSettings :: Lens' MediaLiveChannelHlsGroupSettings (Maybe MediaLiveChannelKeyProviderSettings)
mlchgsKeyProviderSettings = lens _mediaLiveChannelHlsGroupSettingsKeyProviderSettings (\s a -> s { _mediaLiveChannelHlsGroupSettingsKeyProviderSettings = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsgroupsettings.html#cfn-medialive-channel-hlsgroupsettings-manifestcompression
mlchgsManifestCompression :: Lens' MediaLiveChannelHlsGroupSettings (Maybe (Val Text))
mlchgsManifestCompression = lens _mediaLiveChannelHlsGroupSettingsManifestCompression (\s a -> s { _mediaLiveChannelHlsGroupSettingsManifestCompression = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsgroupsettings.html#cfn-medialive-channel-hlsgroupsettings-manifestdurationformat
mlchgsManifestDurationFormat :: Lens' MediaLiveChannelHlsGroupSettings (Maybe (Val Text))
mlchgsManifestDurationFormat = lens _mediaLiveChannelHlsGroupSettingsManifestDurationFormat (\s a -> s { _mediaLiveChannelHlsGroupSettingsManifestDurationFormat = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsgroupsettings.html#cfn-medialive-channel-hlsgroupsettings-minsegmentlength
mlchgsMinSegmentLength :: Lens' MediaLiveChannelHlsGroupSettings (Maybe (Val Integer))
mlchgsMinSegmentLength = lens _mediaLiveChannelHlsGroupSettingsMinSegmentLength (\s a -> s { _mediaLiveChannelHlsGroupSettingsMinSegmentLength = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsgroupsettings.html#cfn-medialive-channel-hlsgroupsettings-mode
mlchgsMode :: Lens' MediaLiveChannelHlsGroupSettings (Maybe (Val Text))
mlchgsMode = lens _mediaLiveChannelHlsGroupSettingsMode (\s a -> s { _mediaLiveChannelHlsGroupSettingsMode = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsgroupsettings.html#cfn-medialive-channel-hlsgroupsettings-outputselection
mlchgsOutputSelection :: Lens' MediaLiveChannelHlsGroupSettings (Maybe (Val Text))
mlchgsOutputSelection = lens _mediaLiveChannelHlsGroupSettingsOutputSelection (\s a -> s { _mediaLiveChannelHlsGroupSettingsOutputSelection = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsgroupsettings.html#cfn-medialive-channel-hlsgroupsettings-programdatetime
mlchgsProgramDateTime :: Lens' MediaLiveChannelHlsGroupSettings (Maybe (Val Text))
mlchgsProgramDateTime = lens _mediaLiveChannelHlsGroupSettingsProgramDateTime (\s a -> s { _mediaLiveChannelHlsGroupSettingsProgramDateTime = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsgroupsettings.html#cfn-medialive-channel-hlsgroupsettings-programdatetimeperiod
mlchgsProgramDateTimePeriod :: Lens' MediaLiveChannelHlsGroupSettings (Maybe (Val Integer))
mlchgsProgramDateTimePeriod = lens _mediaLiveChannelHlsGroupSettingsProgramDateTimePeriod (\s a -> s { _mediaLiveChannelHlsGroupSettingsProgramDateTimePeriod = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsgroupsettings.html#cfn-medialive-channel-hlsgroupsettings-redundantmanifest
mlchgsRedundantManifest :: Lens' MediaLiveChannelHlsGroupSettings (Maybe (Val Text))
mlchgsRedundantManifest = lens _mediaLiveChannelHlsGroupSettingsRedundantManifest (\s a -> s { _mediaLiveChannelHlsGroupSettingsRedundantManifest = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsgroupsettings.html#cfn-medialive-channel-hlsgroupsettings-segmentlength
mlchgsSegmentLength :: Lens' MediaLiveChannelHlsGroupSettings (Maybe (Val Integer))
mlchgsSegmentLength = lens _mediaLiveChannelHlsGroupSettingsSegmentLength (\s a -> s { _mediaLiveChannelHlsGroupSettingsSegmentLength = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsgroupsettings.html#cfn-medialive-channel-hlsgroupsettings-segmentationmode
mlchgsSegmentationMode :: Lens' MediaLiveChannelHlsGroupSettings (Maybe (Val Text))
mlchgsSegmentationMode = lens _mediaLiveChannelHlsGroupSettingsSegmentationMode (\s a -> s { _mediaLiveChannelHlsGroupSettingsSegmentationMode = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsgroupsettings.html#cfn-medialive-channel-hlsgroupsettings-segmentspersubdirectory
mlchgsSegmentsPerSubdirectory :: Lens' MediaLiveChannelHlsGroupSettings (Maybe (Val Integer))
mlchgsSegmentsPerSubdirectory = lens _mediaLiveChannelHlsGroupSettingsSegmentsPerSubdirectory (\s a -> s { _mediaLiveChannelHlsGroupSettingsSegmentsPerSubdirectory = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsgroupsettings.html#cfn-medialive-channel-hlsgroupsettings-streaminfresolution
mlchgsStreamInfResolution :: Lens' MediaLiveChannelHlsGroupSettings (Maybe (Val Text))
mlchgsStreamInfResolution = lens _mediaLiveChannelHlsGroupSettingsStreamInfResolution (\s a -> s { _mediaLiveChannelHlsGroupSettingsStreamInfResolution = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsgroupsettings.html#cfn-medialive-channel-hlsgroupsettings-timedmetadataid3frame
mlchgsTimedMetadataId3Frame :: Lens' MediaLiveChannelHlsGroupSettings (Maybe (Val Text))
mlchgsTimedMetadataId3Frame = lens _mediaLiveChannelHlsGroupSettingsTimedMetadataId3Frame (\s a -> s { _mediaLiveChannelHlsGroupSettingsTimedMetadataId3Frame = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsgroupsettings.html#cfn-medialive-channel-hlsgroupsettings-timedmetadataid3period
mlchgsTimedMetadataId3Period :: Lens' MediaLiveChannelHlsGroupSettings (Maybe (Val Integer))
mlchgsTimedMetadataId3Period = lens _mediaLiveChannelHlsGroupSettingsTimedMetadataId3Period (\s a -> s { _mediaLiveChannelHlsGroupSettingsTimedMetadataId3Period = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsgroupsettings.html#cfn-medialive-channel-hlsgroupsettings-timestampdeltamilliseconds
mlchgsTimestampDeltaMilliseconds :: Lens' MediaLiveChannelHlsGroupSettings (Maybe (Val Integer))
mlchgsTimestampDeltaMilliseconds = lens _mediaLiveChannelHlsGroupSettingsTimestampDeltaMilliseconds (\s a -> s { _mediaLiveChannelHlsGroupSettingsTimestampDeltaMilliseconds = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsgroupsettings.html#cfn-medialive-channel-hlsgroupsettings-tsfilemode
mlchgsTsFileMode :: Lens' MediaLiveChannelHlsGroupSettings (Maybe (Val Text))
mlchgsTsFileMode = lens _mediaLiveChannelHlsGroupSettingsTsFileMode (\s a -> s { _mediaLiveChannelHlsGroupSettingsTsFileMode = a })
