module Stratosphere.MediaLive.Channel.HlsGroupSettingsProperty (
        module Exports, HlsGroupSettingsProperty(..),
        mkHlsGroupSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.CaptionLanguageMappingProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.HlsCdnSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.KeyProviderSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.OutputLocationRefProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data HlsGroupSettingsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsgroupsettings.html>
    HlsGroupSettingsProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsgroupsettings.html#cfn-medialive-channel-hlsgroupsettings-admarkers>
                              adMarkers :: (Prelude.Maybe (ValueList Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsgroupsettings.html#cfn-medialive-channel-hlsgroupsettings-baseurlcontent>
                              baseUrlContent :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsgroupsettings.html#cfn-medialive-channel-hlsgroupsettings-baseurlcontent1>
                              baseUrlContent1 :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsgroupsettings.html#cfn-medialive-channel-hlsgroupsettings-baseurlmanifest>
                              baseUrlManifest :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsgroupsettings.html#cfn-medialive-channel-hlsgroupsettings-baseurlmanifest1>
                              baseUrlManifest1 :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsgroupsettings.html#cfn-medialive-channel-hlsgroupsettings-captionlanguagemappings>
                              captionLanguageMappings :: (Prelude.Maybe [CaptionLanguageMappingProperty]),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsgroupsettings.html#cfn-medialive-channel-hlsgroupsettings-captionlanguagesetting>
                              captionLanguageSetting :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsgroupsettings.html#cfn-medialive-channel-hlsgroupsettings-clientcache>
                              clientCache :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsgroupsettings.html#cfn-medialive-channel-hlsgroupsettings-codecspecification>
                              codecSpecification :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsgroupsettings.html#cfn-medialive-channel-hlsgroupsettings-constantiv>
                              constantIv :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsgroupsettings.html#cfn-medialive-channel-hlsgroupsettings-destination>
                              destination :: (Prelude.Maybe OutputLocationRefProperty),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsgroupsettings.html#cfn-medialive-channel-hlsgroupsettings-directorystructure>
                              directoryStructure :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsgroupsettings.html#cfn-medialive-channel-hlsgroupsettings-discontinuitytags>
                              discontinuityTags :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsgroupsettings.html#cfn-medialive-channel-hlsgroupsettings-encryptiontype>
                              encryptionType :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsgroupsettings.html#cfn-medialive-channel-hlsgroupsettings-hlscdnsettings>
                              hlsCdnSettings :: (Prelude.Maybe HlsCdnSettingsProperty),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsgroupsettings.html#cfn-medialive-channel-hlsgroupsettings-hlsid3segmenttagging>
                              hlsId3SegmentTagging :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsgroupsettings.html#cfn-medialive-channel-hlsgroupsettings-iframeonlyplaylists>
                              iFrameOnlyPlaylists :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsgroupsettings.html#cfn-medialive-channel-hlsgroupsettings-incompletesegmentbehavior>
                              incompleteSegmentBehavior :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsgroupsettings.html#cfn-medialive-channel-hlsgroupsettings-indexnsegments>
                              indexNSegments :: (Prelude.Maybe (Value Prelude.Integer)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsgroupsettings.html#cfn-medialive-channel-hlsgroupsettings-inputlossaction>
                              inputLossAction :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsgroupsettings.html#cfn-medialive-channel-hlsgroupsettings-ivinmanifest>
                              ivInManifest :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsgroupsettings.html#cfn-medialive-channel-hlsgroupsettings-ivsource>
                              ivSource :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsgroupsettings.html#cfn-medialive-channel-hlsgroupsettings-keepsegments>
                              keepSegments :: (Prelude.Maybe (Value Prelude.Integer)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsgroupsettings.html#cfn-medialive-channel-hlsgroupsettings-keyformat>
                              keyFormat :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsgroupsettings.html#cfn-medialive-channel-hlsgroupsettings-keyformatversions>
                              keyFormatVersions :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsgroupsettings.html#cfn-medialive-channel-hlsgroupsettings-keyprovidersettings>
                              keyProviderSettings :: (Prelude.Maybe KeyProviderSettingsProperty),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsgroupsettings.html#cfn-medialive-channel-hlsgroupsettings-manifestcompression>
                              manifestCompression :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsgroupsettings.html#cfn-medialive-channel-hlsgroupsettings-manifestdurationformat>
                              manifestDurationFormat :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsgroupsettings.html#cfn-medialive-channel-hlsgroupsettings-minsegmentlength>
                              minSegmentLength :: (Prelude.Maybe (Value Prelude.Integer)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsgroupsettings.html#cfn-medialive-channel-hlsgroupsettings-mode>
                              mode :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsgroupsettings.html#cfn-medialive-channel-hlsgroupsettings-outputselection>
                              outputSelection :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsgroupsettings.html#cfn-medialive-channel-hlsgroupsettings-programdatetime>
                              programDateTime :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsgroupsettings.html#cfn-medialive-channel-hlsgroupsettings-programdatetimeclock>
                              programDateTimeClock :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsgroupsettings.html#cfn-medialive-channel-hlsgroupsettings-programdatetimeperiod>
                              programDateTimePeriod :: (Prelude.Maybe (Value Prelude.Integer)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsgroupsettings.html#cfn-medialive-channel-hlsgroupsettings-redundantmanifest>
                              redundantManifest :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsgroupsettings.html#cfn-medialive-channel-hlsgroupsettings-segmentlength>
                              segmentLength :: (Prelude.Maybe (Value Prelude.Integer)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsgroupsettings.html#cfn-medialive-channel-hlsgroupsettings-segmentationmode>
                              segmentationMode :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsgroupsettings.html#cfn-medialive-channel-hlsgroupsettings-segmentspersubdirectory>
                              segmentsPerSubdirectory :: (Prelude.Maybe (Value Prelude.Integer)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsgroupsettings.html#cfn-medialive-channel-hlsgroupsettings-streaminfresolution>
                              streamInfResolution :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsgroupsettings.html#cfn-medialive-channel-hlsgroupsettings-timedmetadataid3frame>
                              timedMetadataId3Frame :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsgroupsettings.html#cfn-medialive-channel-hlsgroupsettings-timedmetadataid3period>
                              timedMetadataId3Period :: (Prelude.Maybe (Value Prelude.Integer)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsgroupsettings.html#cfn-medialive-channel-hlsgroupsettings-timestampdeltamilliseconds>
                              timestampDeltaMilliseconds :: (Prelude.Maybe (Value Prelude.Integer)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsgroupsettings.html#cfn-medialive-channel-hlsgroupsettings-tsfilemode>
                              tsFileMode :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkHlsGroupSettingsProperty :: HlsGroupSettingsProperty
mkHlsGroupSettingsProperty
  = HlsGroupSettingsProperty
      {haddock_workaround_ = (), adMarkers = Prelude.Nothing,
       baseUrlContent = Prelude.Nothing,
       baseUrlContent1 = Prelude.Nothing,
       baseUrlManifest = Prelude.Nothing,
       baseUrlManifest1 = Prelude.Nothing,
       captionLanguageMappings = Prelude.Nothing,
       captionLanguageSetting = Prelude.Nothing,
       clientCache = Prelude.Nothing,
       codecSpecification = Prelude.Nothing, constantIv = Prelude.Nothing,
       destination = Prelude.Nothing,
       directoryStructure = Prelude.Nothing,
       discontinuityTags = Prelude.Nothing,
       encryptionType = Prelude.Nothing, hlsCdnSettings = Prelude.Nothing,
       hlsId3SegmentTagging = Prelude.Nothing,
       iFrameOnlyPlaylists = Prelude.Nothing,
       incompleteSegmentBehavior = Prelude.Nothing,
       indexNSegments = Prelude.Nothing,
       inputLossAction = Prelude.Nothing, ivInManifest = Prelude.Nothing,
       ivSource = Prelude.Nothing, keepSegments = Prelude.Nothing,
       keyFormat = Prelude.Nothing, keyFormatVersions = Prelude.Nothing,
       keyProviderSettings = Prelude.Nothing,
       manifestCompression = Prelude.Nothing,
       manifestDurationFormat = Prelude.Nothing,
       minSegmentLength = Prelude.Nothing, mode = Prelude.Nothing,
       outputSelection = Prelude.Nothing,
       programDateTime = Prelude.Nothing,
       programDateTimeClock = Prelude.Nothing,
       programDateTimePeriod = Prelude.Nothing,
       redundantManifest = Prelude.Nothing,
       segmentLength = Prelude.Nothing,
       segmentationMode = Prelude.Nothing,
       segmentsPerSubdirectory = Prelude.Nothing,
       streamInfResolution = Prelude.Nothing,
       timedMetadataId3Frame = Prelude.Nothing,
       timedMetadataId3Period = Prelude.Nothing,
       timestampDeltaMilliseconds = Prelude.Nothing,
       tsFileMode = Prelude.Nothing}
instance ToResourceProperties HlsGroupSettingsProperty where
  toResourceProperties HlsGroupSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.HlsGroupSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AdMarkers" Prelude.<$> adMarkers,
                            (JSON..=) "BaseUrlContent" Prelude.<$> baseUrlContent,
                            (JSON..=) "BaseUrlContent1" Prelude.<$> baseUrlContent1,
                            (JSON..=) "BaseUrlManifest" Prelude.<$> baseUrlManifest,
                            (JSON..=) "BaseUrlManifest1" Prelude.<$> baseUrlManifest1,
                            (JSON..=) "CaptionLanguageMappings"
                              Prelude.<$> captionLanguageMappings,
                            (JSON..=) "CaptionLanguageSetting"
                              Prelude.<$> captionLanguageSetting,
                            (JSON..=) "ClientCache" Prelude.<$> clientCache,
                            (JSON..=) "CodecSpecification" Prelude.<$> codecSpecification,
                            (JSON..=) "ConstantIv" Prelude.<$> constantIv,
                            (JSON..=) "Destination" Prelude.<$> destination,
                            (JSON..=) "DirectoryStructure" Prelude.<$> directoryStructure,
                            (JSON..=) "DiscontinuityTags" Prelude.<$> discontinuityTags,
                            (JSON..=) "EncryptionType" Prelude.<$> encryptionType,
                            (JSON..=) "HlsCdnSettings" Prelude.<$> hlsCdnSettings,
                            (JSON..=) "HlsId3SegmentTagging" Prelude.<$> hlsId3SegmentTagging,
                            (JSON..=) "IFrameOnlyPlaylists" Prelude.<$> iFrameOnlyPlaylists,
                            (JSON..=) "IncompleteSegmentBehavior"
                              Prelude.<$> incompleteSegmentBehavior,
                            (JSON..=) "IndexNSegments" Prelude.<$> indexNSegments,
                            (JSON..=) "InputLossAction" Prelude.<$> inputLossAction,
                            (JSON..=) "IvInManifest" Prelude.<$> ivInManifest,
                            (JSON..=) "IvSource" Prelude.<$> ivSource,
                            (JSON..=) "KeepSegments" Prelude.<$> keepSegments,
                            (JSON..=) "KeyFormat" Prelude.<$> keyFormat,
                            (JSON..=) "KeyFormatVersions" Prelude.<$> keyFormatVersions,
                            (JSON..=) "KeyProviderSettings" Prelude.<$> keyProviderSettings,
                            (JSON..=) "ManifestCompression" Prelude.<$> manifestCompression,
                            (JSON..=) "ManifestDurationFormat"
                              Prelude.<$> manifestDurationFormat,
                            (JSON..=) "MinSegmentLength" Prelude.<$> minSegmentLength,
                            (JSON..=) "Mode" Prelude.<$> mode,
                            (JSON..=) "OutputSelection" Prelude.<$> outputSelection,
                            (JSON..=) "ProgramDateTime" Prelude.<$> programDateTime,
                            (JSON..=) "ProgramDateTimeClock" Prelude.<$> programDateTimeClock,
                            (JSON..=) "ProgramDateTimePeriod"
                              Prelude.<$> programDateTimePeriod,
                            (JSON..=) "RedundantManifest" Prelude.<$> redundantManifest,
                            (JSON..=) "SegmentLength" Prelude.<$> segmentLength,
                            (JSON..=) "SegmentationMode" Prelude.<$> segmentationMode,
                            (JSON..=) "SegmentsPerSubdirectory"
                              Prelude.<$> segmentsPerSubdirectory,
                            (JSON..=) "StreamInfResolution" Prelude.<$> streamInfResolution,
                            (JSON..=) "TimedMetadataId3Frame"
                              Prelude.<$> timedMetadataId3Frame,
                            (JSON..=) "TimedMetadataId3Period"
                              Prelude.<$> timedMetadataId3Period,
                            (JSON..=) "TimestampDeltaMilliseconds"
                              Prelude.<$> timestampDeltaMilliseconds,
                            (JSON..=) "TsFileMode" Prelude.<$> tsFileMode])}
instance JSON.ToJSON HlsGroupSettingsProperty where
  toJSON HlsGroupSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AdMarkers" Prelude.<$> adMarkers,
               (JSON..=) "BaseUrlContent" Prelude.<$> baseUrlContent,
               (JSON..=) "BaseUrlContent1" Prelude.<$> baseUrlContent1,
               (JSON..=) "BaseUrlManifest" Prelude.<$> baseUrlManifest,
               (JSON..=) "BaseUrlManifest1" Prelude.<$> baseUrlManifest1,
               (JSON..=) "CaptionLanguageMappings"
                 Prelude.<$> captionLanguageMappings,
               (JSON..=) "CaptionLanguageSetting"
                 Prelude.<$> captionLanguageSetting,
               (JSON..=) "ClientCache" Prelude.<$> clientCache,
               (JSON..=) "CodecSpecification" Prelude.<$> codecSpecification,
               (JSON..=) "ConstantIv" Prelude.<$> constantIv,
               (JSON..=) "Destination" Prelude.<$> destination,
               (JSON..=) "DirectoryStructure" Prelude.<$> directoryStructure,
               (JSON..=) "DiscontinuityTags" Prelude.<$> discontinuityTags,
               (JSON..=) "EncryptionType" Prelude.<$> encryptionType,
               (JSON..=) "HlsCdnSettings" Prelude.<$> hlsCdnSettings,
               (JSON..=) "HlsId3SegmentTagging" Prelude.<$> hlsId3SegmentTagging,
               (JSON..=) "IFrameOnlyPlaylists" Prelude.<$> iFrameOnlyPlaylists,
               (JSON..=) "IncompleteSegmentBehavior"
                 Prelude.<$> incompleteSegmentBehavior,
               (JSON..=) "IndexNSegments" Prelude.<$> indexNSegments,
               (JSON..=) "InputLossAction" Prelude.<$> inputLossAction,
               (JSON..=) "IvInManifest" Prelude.<$> ivInManifest,
               (JSON..=) "IvSource" Prelude.<$> ivSource,
               (JSON..=) "KeepSegments" Prelude.<$> keepSegments,
               (JSON..=) "KeyFormat" Prelude.<$> keyFormat,
               (JSON..=) "KeyFormatVersions" Prelude.<$> keyFormatVersions,
               (JSON..=) "KeyProviderSettings" Prelude.<$> keyProviderSettings,
               (JSON..=) "ManifestCompression" Prelude.<$> manifestCompression,
               (JSON..=) "ManifestDurationFormat"
                 Prelude.<$> manifestDurationFormat,
               (JSON..=) "MinSegmentLength" Prelude.<$> minSegmentLength,
               (JSON..=) "Mode" Prelude.<$> mode,
               (JSON..=) "OutputSelection" Prelude.<$> outputSelection,
               (JSON..=) "ProgramDateTime" Prelude.<$> programDateTime,
               (JSON..=) "ProgramDateTimeClock" Prelude.<$> programDateTimeClock,
               (JSON..=) "ProgramDateTimePeriod"
                 Prelude.<$> programDateTimePeriod,
               (JSON..=) "RedundantManifest" Prelude.<$> redundantManifest,
               (JSON..=) "SegmentLength" Prelude.<$> segmentLength,
               (JSON..=) "SegmentationMode" Prelude.<$> segmentationMode,
               (JSON..=) "SegmentsPerSubdirectory"
                 Prelude.<$> segmentsPerSubdirectory,
               (JSON..=) "StreamInfResolution" Prelude.<$> streamInfResolution,
               (JSON..=) "TimedMetadataId3Frame"
                 Prelude.<$> timedMetadataId3Frame,
               (JSON..=) "TimedMetadataId3Period"
                 Prelude.<$> timedMetadataId3Period,
               (JSON..=) "TimestampDeltaMilliseconds"
                 Prelude.<$> timestampDeltaMilliseconds,
               (JSON..=) "TsFileMode" Prelude.<$> tsFileMode]))
instance Property "AdMarkers" HlsGroupSettingsProperty where
  type PropertyType "AdMarkers" HlsGroupSettingsProperty = ValueList Prelude.Text
  set newValue HlsGroupSettingsProperty {..}
    = HlsGroupSettingsProperty {adMarkers = Prelude.pure newValue, ..}
instance Property "BaseUrlContent" HlsGroupSettingsProperty where
  type PropertyType "BaseUrlContent" HlsGroupSettingsProperty = Value Prelude.Text
  set newValue HlsGroupSettingsProperty {..}
    = HlsGroupSettingsProperty
        {baseUrlContent = Prelude.pure newValue, ..}
instance Property "BaseUrlContent1" HlsGroupSettingsProperty where
  type PropertyType "BaseUrlContent1" HlsGroupSettingsProperty = Value Prelude.Text
  set newValue HlsGroupSettingsProperty {..}
    = HlsGroupSettingsProperty
        {baseUrlContent1 = Prelude.pure newValue, ..}
instance Property "BaseUrlManifest" HlsGroupSettingsProperty where
  type PropertyType "BaseUrlManifest" HlsGroupSettingsProperty = Value Prelude.Text
  set newValue HlsGroupSettingsProperty {..}
    = HlsGroupSettingsProperty
        {baseUrlManifest = Prelude.pure newValue, ..}
instance Property "BaseUrlManifest1" HlsGroupSettingsProperty where
  type PropertyType "BaseUrlManifest1" HlsGroupSettingsProperty = Value Prelude.Text
  set newValue HlsGroupSettingsProperty {..}
    = HlsGroupSettingsProperty
        {baseUrlManifest1 = Prelude.pure newValue, ..}
instance Property "CaptionLanguageMappings" HlsGroupSettingsProperty where
  type PropertyType "CaptionLanguageMappings" HlsGroupSettingsProperty = [CaptionLanguageMappingProperty]
  set newValue HlsGroupSettingsProperty {..}
    = HlsGroupSettingsProperty
        {captionLanguageMappings = Prelude.pure newValue, ..}
instance Property "CaptionLanguageSetting" HlsGroupSettingsProperty where
  type PropertyType "CaptionLanguageSetting" HlsGroupSettingsProperty = Value Prelude.Text
  set newValue HlsGroupSettingsProperty {..}
    = HlsGroupSettingsProperty
        {captionLanguageSetting = Prelude.pure newValue, ..}
instance Property "ClientCache" HlsGroupSettingsProperty where
  type PropertyType "ClientCache" HlsGroupSettingsProperty = Value Prelude.Text
  set newValue HlsGroupSettingsProperty {..}
    = HlsGroupSettingsProperty
        {clientCache = Prelude.pure newValue, ..}
instance Property "CodecSpecification" HlsGroupSettingsProperty where
  type PropertyType "CodecSpecification" HlsGroupSettingsProperty = Value Prelude.Text
  set newValue HlsGroupSettingsProperty {..}
    = HlsGroupSettingsProperty
        {codecSpecification = Prelude.pure newValue, ..}
instance Property "ConstantIv" HlsGroupSettingsProperty where
  type PropertyType "ConstantIv" HlsGroupSettingsProperty = Value Prelude.Text
  set newValue HlsGroupSettingsProperty {..}
    = HlsGroupSettingsProperty {constantIv = Prelude.pure newValue, ..}
instance Property "Destination" HlsGroupSettingsProperty where
  type PropertyType "Destination" HlsGroupSettingsProperty = OutputLocationRefProperty
  set newValue HlsGroupSettingsProperty {..}
    = HlsGroupSettingsProperty
        {destination = Prelude.pure newValue, ..}
instance Property "DirectoryStructure" HlsGroupSettingsProperty where
  type PropertyType "DirectoryStructure" HlsGroupSettingsProperty = Value Prelude.Text
  set newValue HlsGroupSettingsProperty {..}
    = HlsGroupSettingsProperty
        {directoryStructure = Prelude.pure newValue, ..}
instance Property "DiscontinuityTags" HlsGroupSettingsProperty where
  type PropertyType "DiscontinuityTags" HlsGroupSettingsProperty = Value Prelude.Text
  set newValue HlsGroupSettingsProperty {..}
    = HlsGroupSettingsProperty
        {discontinuityTags = Prelude.pure newValue, ..}
instance Property "EncryptionType" HlsGroupSettingsProperty where
  type PropertyType "EncryptionType" HlsGroupSettingsProperty = Value Prelude.Text
  set newValue HlsGroupSettingsProperty {..}
    = HlsGroupSettingsProperty
        {encryptionType = Prelude.pure newValue, ..}
instance Property "HlsCdnSettings" HlsGroupSettingsProperty where
  type PropertyType "HlsCdnSettings" HlsGroupSettingsProperty = HlsCdnSettingsProperty
  set newValue HlsGroupSettingsProperty {..}
    = HlsGroupSettingsProperty
        {hlsCdnSettings = Prelude.pure newValue, ..}
instance Property "HlsId3SegmentTagging" HlsGroupSettingsProperty where
  type PropertyType "HlsId3SegmentTagging" HlsGroupSettingsProperty = Value Prelude.Text
  set newValue HlsGroupSettingsProperty {..}
    = HlsGroupSettingsProperty
        {hlsId3SegmentTagging = Prelude.pure newValue, ..}
instance Property "IFrameOnlyPlaylists" HlsGroupSettingsProperty where
  type PropertyType "IFrameOnlyPlaylists" HlsGroupSettingsProperty = Value Prelude.Text
  set newValue HlsGroupSettingsProperty {..}
    = HlsGroupSettingsProperty
        {iFrameOnlyPlaylists = Prelude.pure newValue, ..}
instance Property "IncompleteSegmentBehavior" HlsGroupSettingsProperty where
  type PropertyType "IncompleteSegmentBehavior" HlsGroupSettingsProperty = Value Prelude.Text
  set newValue HlsGroupSettingsProperty {..}
    = HlsGroupSettingsProperty
        {incompleteSegmentBehavior = Prelude.pure newValue, ..}
instance Property "IndexNSegments" HlsGroupSettingsProperty where
  type PropertyType "IndexNSegments" HlsGroupSettingsProperty = Value Prelude.Integer
  set newValue HlsGroupSettingsProperty {..}
    = HlsGroupSettingsProperty
        {indexNSegments = Prelude.pure newValue, ..}
instance Property "InputLossAction" HlsGroupSettingsProperty where
  type PropertyType "InputLossAction" HlsGroupSettingsProperty = Value Prelude.Text
  set newValue HlsGroupSettingsProperty {..}
    = HlsGroupSettingsProperty
        {inputLossAction = Prelude.pure newValue, ..}
instance Property "IvInManifest" HlsGroupSettingsProperty where
  type PropertyType "IvInManifest" HlsGroupSettingsProperty = Value Prelude.Text
  set newValue HlsGroupSettingsProperty {..}
    = HlsGroupSettingsProperty
        {ivInManifest = Prelude.pure newValue, ..}
instance Property "IvSource" HlsGroupSettingsProperty where
  type PropertyType "IvSource" HlsGroupSettingsProperty = Value Prelude.Text
  set newValue HlsGroupSettingsProperty {..}
    = HlsGroupSettingsProperty {ivSource = Prelude.pure newValue, ..}
instance Property "KeepSegments" HlsGroupSettingsProperty where
  type PropertyType "KeepSegments" HlsGroupSettingsProperty = Value Prelude.Integer
  set newValue HlsGroupSettingsProperty {..}
    = HlsGroupSettingsProperty
        {keepSegments = Prelude.pure newValue, ..}
instance Property "KeyFormat" HlsGroupSettingsProperty where
  type PropertyType "KeyFormat" HlsGroupSettingsProperty = Value Prelude.Text
  set newValue HlsGroupSettingsProperty {..}
    = HlsGroupSettingsProperty {keyFormat = Prelude.pure newValue, ..}
instance Property "KeyFormatVersions" HlsGroupSettingsProperty where
  type PropertyType "KeyFormatVersions" HlsGroupSettingsProperty = Value Prelude.Text
  set newValue HlsGroupSettingsProperty {..}
    = HlsGroupSettingsProperty
        {keyFormatVersions = Prelude.pure newValue, ..}
instance Property "KeyProviderSettings" HlsGroupSettingsProperty where
  type PropertyType "KeyProviderSettings" HlsGroupSettingsProperty = KeyProviderSettingsProperty
  set newValue HlsGroupSettingsProperty {..}
    = HlsGroupSettingsProperty
        {keyProviderSettings = Prelude.pure newValue, ..}
instance Property "ManifestCompression" HlsGroupSettingsProperty where
  type PropertyType "ManifestCompression" HlsGroupSettingsProperty = Value Prelude.Text
  set newValue HlsGroupSettingsProperty {..}
    = HlsGroupSettingsProperty
        {manifestCompression = Prelude.pure newValue, ..}
instance Property "ManifestDurationFormat" HlsGroupSettingsProperty where
  type PropertyType "ManifestDurationFormat" HlsGroupSettingsProperty = Value Prelude.Text
  set newValue HlsGroupSettingsProperty {..}
    = HlsGroupSettingsProperty
        {manifestDurationFormat = Prelude.pure newValue, ..}
instance Property "MinSegmentLength" HlsGroupSettingsProperty where
  type PropertyType "MinSegmentLength" HlsGroupSettingsProperty = Value Prelude.Integer
  set newValue HlsGroupSettingsProperty {..}
    = HlsGroupSettingsProperty
        {minSegmentLength = Prelude.pure newValue, ..}
instance Property "Mode" HlsGroupSettingsProperty where
  type PropertyType "Mode" HlsGroupSettingsProperty = Value Prelude.Text
  set newValue HlsGroupSettingsProperty {..}
    = HlsGroupSettingsProperty {mode = Prelude.pure newValue, ..}
instance Property "OutputSelection" HlsGroupSettingsProperty where
  type PropertyType "OutputSelection" HlsGroupSettingsProperty = Value Prelude.Text
  set newValue HlsGroupSettingsProperty {..}
    = HlsGroupSettingsProperty
        {outputSelection = Prelude.pure newValue, ..}
instance Property "ProgramDateTime" HlsGroupSettingsProperty where
  type PropertyType "ProgramDateTime" HlsGroupSettingsProperty = Value Prelude.Text
  set newValue HlsGroupSettingsProperty {..}
    = HlsGroupSettingsProperty
        {programDateTime = Prelude.pure newValue, ..}
instance Property "ProgramDateTimeClock" HlsGroupSettingsProperty where
  type PropertyType "ProgramDateTimeClock" HlsGroupSettingsProperty = Value Prelude.Text
  set newValue HlsGroupSettingsProperty {..}
    = HlsGroupSettingsProperty
        {programDateTimeClock = Prelude.pure newValue, ..}
instance Property "ProgramDateTimePeriod" HlsGroupSettingsProperty where
  type PropertyType "ProgramDateTimePeriod" HlsGroupSettingsProperty = Value Prelude.Integer
  set newValue HlsGroupSettingsProperty {..}
    = HlsGroupSettingsProperty
        {programDateTimePeriod = Prelude.pure newValue, ..}
instance Property "RedundantManifest" HlsGroupSettingsProperty where
  type PropertyType "RedundantManifest" HlsGroupSettingsProperty = Value Prelude.Text
  set newValue HlsGroupSettingsProperty {..}
    = HlsGroupSettingsProperty
        {redundantManifest = Prelude.pure newValue, ..}
instance Property "SegmentLength" HlsGroupSettingsProperty where
  type PropertyType "SegmentLength" HlsGroupSettingsProperty = Value Prelude.Integer
  set newValue HlsGroupSettingsProperty {..}
    = HlsGroupSettingsProperty
        {segmentLength = Prelude.pure newValue, ..}
instance Property "SegmentationMode" HlsGroupSettingsProperty where
  type PropertyType "SegmentationMode" HlsGroupSettingsProperty = Value Prelude.Text
  set newValue HlsGroupSettingsProperty {..}
    = HlsGroupSettingsProperty
        {segmentationMode = Prelude.pure newValue, ..}
instance Property "SegmentsPerSubdirectory" HlsGroupSettingsProperty where
  type PropertyType "SegmentsPerSubdirectory" HlsGroupSettingsProperty = Value Prelude.Integer
  set newValue HlsGroupSettingsProperty {..}
    = HlsGroupSettingsProperty
        {segmentsPerSubdirectory = Prelude.pure newValue, ..}
instance Property "StreamInfResolution" HlsGroupSettingsProperty where
  type PropertyType "StreamInfResolution" HlsGroupSettingsProperty = Value Prelude.Text
  set newValue HlsGroupSettingsProperty {..}
    = HlsGroupSettingsProperty
        {streamInfResolution = Prelude.pure newValue, ..}
instance Property "TimedMetadataId3Frame" HlsGroupSettingsProperty where
  type PropertyType "TimedMetadataId3Frame" HlsGroupSettingsProperty = Value Prelude.Text
  set newValue HlsGroupSettingsProperty {..}
    = HlsGroupSettingsProperty
        {timedMetadataId3Frame = Prelude.pure newValue, ..}
instance Property "TimedMetadataId3Period" HlsGroupSettingsProperty where
  type PropertyType "TimedMetadataId3Period" HlsGroupSettingsProperty = Value Prelude.Integer
  set newValue HlsGroupSettingsProperty {..}
    = HlsGroupSettingsProperty
        {timedMetadataId3Period = Prelude.pure newValue, ..}
instance Property "TimestampDeltaMilliseconds" HlsGroupSettingsProperty where
  type PropertyType "TimestampDeltaMilliseconds" HlsGroupSettingsProperty = Value Prelude.Integer
  set newValue HlsGroupSettingsProperty {..}
    = HlsGroupSettingsProperty
        {timestampDeltaMilliseconds = Prelude.pure newValue, ..}
instance Property "TsFileMode" HlsGroupSettingsProperty where
  type PropertyType "TsFileMode" HlsGroupSettingsProperty = Value Prelude.Text
  set newValue HlsGroupSettingsProperty {..}
    = HlsGroupSettingsProperty {tsFileMode = Prelude.pure newValue, ..}