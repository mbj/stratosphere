module Stratosphere.MediaLive.Channel.H264SettingsProperty (
        module Exports, H264SettingsProperty(..), mkH264SettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.H264ColorSpaceSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.H264FilterSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.TimecodeBurninSettingsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data H264SettingsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h264settings.html>
    H264SettingsProperty {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h264settings.html#cfn-medialive-channel-h264settings-adaptivequantization>
                          adaptiveQuantization :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h264settings.html#cfn-medialive-channel-h264settings-afdsignaling>
                          afdSignaling :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h264settings.html#cfn-medialive-channel-h264settings-bitrate>
                          bitrate :: (Prelude.Maybe (Value Prelude.Integer)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h264settings.html#cfn-medialive-channel-h264settings-buffillpct>
                          bufFillPct :: (Prelude.Maybe (Value Prelude.Integer)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h264settings.html#cfn-medialive-channel-h264settings-bufsize>
                          bufSize :: (Prelude.Maybe (Value Prelude.Integer)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h264settings.html#cfn-medialive-channel-h264settings-colormetadata>
                          colorMetadata :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h264settings.html#cfn-medialive-channel-h264settings-colorspacesettings>
                          colorSpaceSettings :: (Prelude.Maybe H264ColorSpaceSettingsProperty),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h264settings.html#cfn-medialive-channel-h264settings-entropyencoding>
                          entropyEncoding :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h264settings.html#cfn-medialive-channel-h264settings-filtersettings>
                          filterSettings :: (Prelude.Maybe H264FilterSettingsProperty),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h264settings.html#cfn-medialive-channel-h264settings-fixedafd>
                          fixedAfd :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h264settings.html#cfn-medialive-channel-h264settings-flickeraq>
                          flickerAq :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h264settings.html#cfn-medialive-channel-h264settings-forcefieldpictures>
                          forceFieldPictures :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h264settings.html#cfn-medialive-channel-h264settings-frameratecontrol>
                          framerateControl :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h264settings.html#cfn-medialive-channel-h264settings-frameratedenominator>
                          framerateDenominator :: (Prelude.Maybe (Value Prelude.Integer)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h264settings.html#cfn-medialive-channel-h264settings-frameratenumerator>
                          framerateNumerator :: (Prelude.Maybe (Value Prelude.Integer)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h264settings.html#cfn-medialive-channel-h264settings-gopbreference>
                          gopBReference :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h264settings.html#cfn-medialive-channel-h264settings-gopclosedcadence>
                          gopClosedCadence :: (Prelude.Maybe (Value Prelude.Integer)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h264settings.html#cfn-medialive-channel-h264settings-gopnumbframes>
                          gopNumBFrames :: (Prelude.Maybe (Value Prelude.Integer)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h264settings.html#cfn-medialive-channel-h264settings-gopsize>
                          gopSize :: (Prelude.Maybe (Value Prelude.Double)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h264settings.html#cfn-medialive-channel-h264settings-gopsizeunits>
                          gopSizeUnits :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h264settings.html#cfn-medialive-channel-h264settings-level>
                          level :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h264settings.html#cfn-medialive-channel-h264settings-lookaheadratecontrol>
                          lookAheadRateControl :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h264settings.html#cfn-medialive-channel-h264settings-maxbitrate>
                          maxBitrate :: (Prelude.Maybe (Value Prelude.Integer)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h264settings.html#cfn-medialive-channel-h264settings-miniinterval>
                          minIInterval :: (Prelude.Maybe (Value Prelude.Integer)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h264settings.html#cfn-medialive-channel-h264settings-minqp>
                          minQp :: (Prelude.Maybe (Value Prelude.Integer)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h264settings.html#cfn-medialive-channel-h264settings-numrefframes>
                          numRefFrames :: (Prelude.Maybe (Value Prelude.Integer)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h264settings.html#cfn-medialive-channel-h264settings-parcontrol>
                          parControl :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h264settings.html#cfn-medialive-channel-h264settings-pardenominator>
                          parDenominator :: (Prelude.Maybe (Value Prelude.Integer)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h264settings.html#cfn-medialive-channel-h264settings-parnumerator>
                          parNumerator :: (Prelude.Maybe (Value Prelude.Integer)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h264settings.html#cfn-medialive-channel-h264settings-profile>
                          profile :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h264settings.html#cfn-medialive-channel-h264settings-qualitylevel>
                          qualityLevel :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h264settings.html#cfn-medialive-channel-h264settings-qvbrqualitylevel>
                          qvbrQualityLevel :: (Prelude.Maybe (Value Prelude.Integer)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h264settings.html#cfn-medialive-channel-h264settings-ratecontrolmode>
                          rateControlMode :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h264settings.html#cfn-medialive-channel-h264settings-scantype>
                          scanType :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h264settings.html#cfn-medialive-channel-h264settings-scenechangedetect>
                          sceneChangeDetect :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h264settings.html#cfn-medialive-channel-h264settings-slices>
                          slices :: (Prelude.Maybe (Value Prelude.Integer)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h264settings.html#cfn-medialive-channel-h264settings-softness>
                          softness :: (Prelude.Maybe (Value Prelude.Integer)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h264settings.html#cfn-medialive-channel-h264settings-spatialaq>
                          spatialAq :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h264settings.html#cfn-medialive-channel-h264settings-subgoplength>
                          subgopLength :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h264settings.html#cfn-medialive-channel-h264settings-syntax>
                          syntax :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h264settings.html#cfn-medialive-channel-h264settings-temporalaq>
                          temporalAq :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h264settings.html#cfn-medialive-channel-h264settings-timecodeburninsettings>
                          timecodeBurninSettings :: (Prelude.Maybe TimecodeBurninSettingsProperty),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h264settings.html#cfn-medialive-channel-h264settings-timecodeinsertion>
                          timecodeInsertion :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkH264SettingsProperty :: H264SettingsProperty
mkH264SettingsProperty
  = H264SettingsProperty
      {haddock_workaround_ = (), adaptiveQuantization = Prelude.Nothing,
       afdSignaling = Prelude.Nothing, bitrate = Prelude.Nothing,
       bufFillPct = Prelude.Nothing, bufSize = Prelude.Nothing,
       colorMetadata = Prelude.Nothing,
       colorSpaceSettings = Prelude.Nothing,
       entropyEncoding = Prelude.Nothing,
       filterSettings = Prelude.Nothing, fixedAfd = Prelude.Nothing,
       flickerAq = Prelude.Nothing, forceFieldPictures = Prelude.Nothing,
       framerateControl = Prelude.Nothing,
       framerateDenominator = Prelude.Nothing,
       framerateNumerator = Prelude.Nothing,
       gopBReference = Prelude.Nothing,
       gopClosedCadence = Prelude.Nothing,
       gopNumBFrames = Prelude.Nothing, gopSize = Prelude.Nothing,
       gopSizeUnits = Prelude.Nothing, level = Prelude.Nothing,
       lookAheadRateControl = Prelude.Nothing,
       maxBitrate = Prelude.Nothing, minIInterval = Prelude.Nothing,
       minQp = Prelude.Nothing, numRefFrames = Prelude.Nothing,
       parControl = Prelude.Nothing, parDenominator = Prelude.Nothing,
       parNumerator = Prelude.Nothing, profile = Prelude.Nothing,
       qualityLevel = Prelude.Nothing, qvbrQualityLevel = Prelude.Nothing,
       rateControlMode = Prelude.Nothing, scanType = Prelude.Nothing,
       sceneChangeDetect = Prelude.Nothing, slices = Prelude.Nothing,
       softness = Prelude.Nothing, spatialAq = Prelude.Nothing,
       subgopLength = Prelude.Nothing, syntax = Prelude.Nothing,
       temporalAq = Prelude.Nothing,
       timecodeBurninSettings = Prelude.Nothing,
       timecodeInsertion = Prelude.Nothing}
instance ToResourceProperties H264SettingsProperty where
  toResourceProperties H264SettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.H264Settings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AdaptiveQuantization" Prelude.<$> adaptiveQuantization,
                            (JSON..=) "AfdSignaling" Prelude.<$> afdSignaling,
                            (JSON..=) "Bitrate" Prelude.<$> bitrate,
                            (JSON..=) "BufFillPct" Prelude.<$> bufFillPct,
                            (JSON..=) "BufSize" Prelude.<$> bufSize,
                            (JSON..=) "ColorMetadata" Prelude.<$> colorMetadata,
                            (JSON..=) "ColorSpaceSettings" Prelude.<$> colorSpaceSettings,
                            (JSON..=) "EntropyEncoding" Prelude.<$> entropyEncoding,
                            (JSON..=) "FilterSettings" Prelude.<$> filterSettings,
                            (JSON..=) "FixedAfd" Prelude.<$> fixedAfd,
                            (JSON..=) "FlickerAq" Prelude.<$> flickerAq,
                            (JSON..=) "ForceFieldPictures" Prelude.<$> forceFieldPictures,
                            (JSON..=) "FramerateControl" Prelude.<$> framerateControl,
                            (JSON..=) "FramerateDenominator" Prelude.<$> framerateDenominator,
                            (JSON..=) "FramerateNumerator" Prelude.<$> framerateNumerator,
                            (JSON..=) "GopBReference" Prelude.<$> gopBReference,
                            (JSON..=) "GopClosedCadence" Prelude.<$> gopClosedCadence,
                            (JSON..=) "GopNumBFrames" Prelude.<$> gopNumBFrames,
                            (JSON..=) "GopSize" Prelude.<$> gopSize,
                            (JSON..=) "GopSizeUnits" Prelude.<$> gopSizeUnits,
                            (JSON..=) "Level" Prelude.<$> level,
                            (JSON..=) "LookAheadRateControl" Prelude.<$> lookAheadRateControl,
                            (JSON..=) "MaxBitrate" Prelude.<$> maxBitrate,
                            (JSON..=) "MinIInterval" Prelude.<$> minIInterval,
                            (JSON..=) "MinQp" Prelude.<$> minQp,
                            (JSON..=) "NumRefFrames" Prelude.<$> numRefFrames,
                            (JSON..=) "ParControl" Prelude.<$> parControl,
                            (JSON..=) "ParDenominator" Prelude.<$> parDenominator,
                            (JSON..=) "ParNumerator" Prelude.<$> parNumerator,
                            (JSON..=) "Profile" Prelude.<$> profile,
                            (JSON..=) "QualityLevel" Prelude.<$> qualityLevel,
                            (JSON..=) "QvbrQualityLevel" Prelude.<$> qvbrQualityLevel,
                            (JSON..=) "RateControlMode" Prelude.<$> rateControlMode,
                            (JSON..=) "ScanType" Prelude.<$> scanType,
                            (JSON..=) "SceneChangeDetect" Prelude.<$> sceneChangeDetect,
                            (JSON..=) "Slices" Prelude.<$> slices,
                            (JSON..=) "Softness" Prelude.<$> softness,
                            (JSON..=) "SpatialAq" Prelude.<$> spatialAq,
                            (JSON..=) "SubgopLength" Prelude.<$> subgopLength,
                            (JSON..=) "Syntax" Prelude.<$> syntax,
                            (JSON..=) "TemporalAq" Prelude.<$> temporalAq,
                            (JSON..=) "TimecodeBurninSettings"
                              Prelude.<$> timecodeBurninSettings,
                            (JSON..=) "TimecodeInsertion" Prelude.<$> timecodeInsertion])}
instance JSON.ToJSON H264SettingsProperty where
  toJSON H264SettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AdaptiveQuantization" Prelude.<$> adaptiveQuantization,
               (JSON..=) "AfdSignaling" Prelude.<$> afdSignaling,
               (JSON..=) "Bitrate" Prelude.<$> bitrate,
               (JSON..=) "BufFillPct" Prelude.<$> bufFillPct,
               (JSON..=) "BufSize" Prelude.<$> bufSize,
               (JSON..=) "ColorMetadata" Prelude.<$> colorMetadata,
               (JSON..=) "ColorSpaceSettings" Prelude.<$> colorSpaceSettings,
               (JSON..=) "EntropyEncoding" Prelude.<$> entropyEncoding,
               (JSON..=) "FilterSettings" Prelude.<$> filterSettings,
               (JSON..=) "FixedAfd" Prelude.<$> fixedAfd,
               (JSON..=) "FlickerAq" Prelude.<$> flickerAq,
               (JSON..=) "ForceFieldPictures" Prelude.<$> forceFieldPictures,
               (JSON..=) "FramerateControl" Prelude.<$> framerateControl,
               (JSON..=) "FramerateDenominator" Prelude.<$> framerateDenominator,
               (JSON..=) "FramerateNumerator" Prelude.<$> framerateNumerator,
               (JSON..=) "GopBReference" Prelude.<$> gopBReference,
               (JSON..=) "GopClosedCadence" Prelude.<$> gopClosedCadence,
               (JSON..=) "GopNumBFrames" Prelude.<$> gopNumBFrames,
               (JSON..=) "GopSize" Prelude.<$> gopSize,
               (JSON..=) "GopSizeUnits" Prelude.<$> gopSizeUnits,
               (JSON..=) "Level" Prelude.<$> level,
               (JSON..=) "LookAheadRateControl" Prelude.<$> lookAheadRateControl,
               (JSON..=) "MaxBitrate" Prelude.<$> maxBitrate,
               (JSON..=) "MinIInterval" Prelude.<$> minIInterval,
               (JSON..=) "MinQp" Prelude.<$> minQp,
               (JSON..=) "NumRefFrames" Prelude.<$> numRefFrames,
               (JSON..=) "ParControl" Prelude.<$> parControl,
               (JSON..=) "ParDenominator" Prelude.<$> parDenominator,
               (JSON..=) "ParNumerator" Prelude.<$> parNumerator,
               (JSON..=) "Profile" Prelude.<$> profile,
               (JSON..=) "QualityLevel" Prelude.<$> qualityLevel,
               (JSON..=) "QvbrQualityLevel" Prelude.<$> qvbrQualityLevel,
               (JSON..=) "RateControlMode" Prelude.<$> rateControlMode,
               (JSON..=) "ScanType" Prelude.<$> scanType,
               (JSON..=) "SceneChangeDetect" Prelude.<$> sceneChangeDetect,
               (JSON..=) "Slices" Prelude.<$> slices,
               (JSON..=) "Softness" Prelude.<$> softness,
               (JSON..=) "SpatialAq" Prelude.<$> spatialAq,
               (JSON..=) "SubgopLength" Prelude.<$> subgopLength,
               (JSON..=) "Syntax" Prelude.<$> syntax,
               (JSON..=) "TemporalAq" Prelude.<$> temporalAq,
               (JSON..=) "TimecodeBurninSettings"
                 Prelude.<$> timecodeBurninSettings,
               (JSON..=) "TimecodeInsertion" Prelude.<$> timecodeInsertion]))
instance Property "AdaptiveQuantization" H264SettingsProperty where
  type PropertyType "AdaptiveQuantization" H264SettingsProperty = Value Prelude.Text
  set newValue H264SettingsProperty {..}
    = H264SettingsProperty
        {adaptiveQuantization = Prelude.pure newValue, ..}
instance Property "AfdSignaling" H264SettingsProperty where
  type PropertyType "AfdSignaling" H264SettingsProperty = Value Prelude.Text
  set newValue H264SettingsProperty {..}
    = H264SettingsProperty {afdSignaling = Prelude.pure newValue, ..}
instance Property "Bitrate" H264SettingsProperty where
  type PropertyType "Bitrate" H264SettingsProperty = Value Prelude.Integer
  set newValue H264SettingsProperty {..}
    = H264SettingsProperty {bitrate = Prelude.pure newValue, ..}
instance Property "BufFillPct" H264SettingsProperty where
  type PropertyType "BufFillPct" H264SettingsProperty = Value Prelude.Integer
  set newValue H264SettingsProperty {..}
    = H264SettingsProperty {bufFillPct = Prelude.pure newValue, ..}
instance Property "BufSize" H264SettingsProperty where
  type PropertyType "BufSize" H264SettingsProperty = Value Prelude.Integer
  set newValue H264SettingsProperty {..}
    = H264SettingsProperty {bufSize = Prelude.pure newValue, ..}
instance Property "ColorMetadata" H264SettingsProperty where
  type PropertyType "ColorMetadata" H264SettingsProperty = Value Prelude.Text
  set newValue H264SettingsProperty {..}
    = H264SettingsProperty {colorMetadata = Prelude.pure newValue, ..}
instance Property "ColorSpaceSettings" H264SettingsProperty where
  type PropertyType "ColorSpaceSettings" H264SettingsProperty = H264ColorSpaceSettingsProperty
  set newValue H264SettingsProperty {..}
    = H264SettingsProperty
        {colorSpaceSettings = Prelude.pure newValue, ..}
instance Property "EntropyEncoding" H264SettingsProperty where
  type PropertyType "EntropyEncoding" H264SettingsProperty = Value Prelude.Text
  set newValue H264SettingsProperty {..}
    = H264SettingsProperty
        {entropyEncoding = Prelude.pure newValue, ..}
instance Property "FilterSettings" H264SettingsProperty where
  type PropertyType "FilterSettings" H264SettingsProperty = H264FilterSettingsProperty
  set newValue H264SettingsProperty {..}
    = H264SettingsProperty {filterSettings = Prelude.pure newValue, ..}
instance Property "FixedAfd" H264SettingsProperty where
  type PropertyType "FixedAfd" H264SettingsProperty = Value Prelude.Text
  set newValue H264SettingsProperty {..}
    = H264SettingsProperty {fixedAfd = Prelude.pure newValue, ..}
instance Property "FlickerAq" H264SettingsProperty where
  type PropertyType "FlickerAq" H264SettingsProperty = Value Prelude.Text
  set newValue H264SettingsProperty {..}
    = H264SettingsProperty {flickerAq = Prelude.pure newValue, ..}
instance Property "ForceFieldPictures" H264SettingsProperty where
  type PropertyType "ForceFieldPictures" H264SettingsProperty = Value Prelude.Text
  set newValue H264SettingsProperty {..}
    = H264SettingsProperty
        {forceFieldPictures = Prelude.pure newValue, ..}
instance Property "FramerateControl" H264SettingsProperty where
  type PropertyType "FramerateControl" H264SettingsProperty = Value Prelude.Text
  set newValue H264SettingsProperty {..}
    = H264SettingsProperty
        {framerateControl = Prelude.pure newValue, ..}
instance Property "FramerateDenominator" H264SettingsProperty where
  type PropertyType "FramerateDenominator" H264SettingsProperty = Value Prelude.Integer
  set newValue H264SettingsProperty {..}
    = H264SettingsProperty
        {framerateDenominator = Prelude.pure newValue, ..}
instance Property "FramerateNumerator" H264SettingsProperty where
  type PropertyType "FramerateNumerator" H264SettingsProperty = Value Prelude.Integer
  set newValue H264SettingsProperty {..}
    = H264SettingsProperty
        {framerateNumerator = Prelude.pure newValue, ..}
instance Property "GopBReference" H264SettingsProperty where
  type PropertyType "GopBReference" H264SettingsProperty = Value Prelude.Text
  set newValue H264SettingsProperty {..}
    = H264SettingsProperty {gopBReference = Prelude.pure newValue, ..}
instance Property "GopClosedCadence" H264SettingsProperty where
  type PropertyType "GopClosedCadence" H264SettingsProperty = Value Prelude.Integer
  set newValue H264SettingsProperty {..}
    = H264SettingsProperty
        {gopClosedCadence = Prelude.pure newValue, ..}
instance Property "GopNumBFrames" H264SettingsProperty where
  type PropertyType "GopNumBFrames" H264SettingsProperty = Value Prelude.Integer
  set newValue H264SettingsProperty {..}
    = H264SettingsProperty {gopNumBFrames = Prelude.pure newValue, ..}
instance Property "GopSize" H264SettingsProperty where
  type PropertyType "GopSize" H264SettingsProperty = Value Prelude.Double
  set newValue H264SettingsProperty {..}
    = H264SettingsProperty {gopSize = Prelude.pure newValue, ..}
instance Property "GopSizeUnits" H264SettingsProperty where
  type PropertyType "GopSizeUnits" H264SettingsProperty = Value Prelude.Text
  set newValue H264SettingsProperty {..}
    = H264SettingsProperty {gopSizeUnits = Prelude.pure newValue, ..}
instance Property "Level" H264SettingsProperty where
  type PropertyType "Level" H264SettingsProperty = Value Prelude.Text
  set newValue H264SettingsProperty {..}
    = H264SettingsProperty {level = Prelude.pure newValue, ..}
instance Property "LookAheadRateControl" H264SettingsProperty where
  type PropertyType "LookAheadRateControl" H264SettingsProperty = Value Prelude.Text
  set newValue H264SettingsProperty {..}
    = H264SettingsProperty
        {lookAheadRateControl = Prelude.pure newValue, ..}
instance Property "MaxBitrate" H264SettingsProperty where
  type PropertyType "MaxBitrate" H264SettingsProperty = Value Prelude.Integer
  set newValue H264SettingsProperty {..}
    = H264SettingsProperty {maxBitrate = Prelude.pure newValue, ..}
instance Property "MinIInterval" H264SettingsProperty where
  type PropertyType "MinIInterval" H264SettingsProperty = Value Prelude.Integer
  set newValue H264SettingsProperty {..}
    = H264SettingsProperty {minIInterval = Prelude.pure newValue, ..}
instance Property "MinQp" H264SettingsProperty where
  type PropertyType "MinQp" H264SettingsProperty = Value Prelude.Integer
  set newValue H264SettingsProperty {..}
    = H264SettingsProperty {minQp = Prelude.pure newValue, ..}
instance Property "NumRefFrames" H264SettingsProperty where
  type PropertyType "NumRefFrames" H264SettingsProperty = Value Prelude.Integer
  set newValue H264SettingsProperty {..}
    = H264SettingsProperty {numRefFrames = Prelude.pure newValue, ..}
instance Property "ParControl" H264SettingsProperty where
  type PropertyType "ParControl" H264SettingsProperty = Value Prelude.Text
  set newValue H264SettingsProperty {..}
    = H264SettingsProperty {parControl = Prelude.pure newValue, ..}
instance Property "ParDenominator" H264SettingsProperty where
  type PropertyType "ParDenominator" H264SettingsProperty = Value Prelude.Integer
  set newValue H264SettingsProperty {..}
    = H264SettingsProperty {parDenominator = Prelude.pure newValue, ..}
instance Property "ParNumerator" H264SettingsProperty where
  type PropertyType "ParNumerator" H264SettingsProperty = Value Prelude.Integer
  set newValue H264SettingsProperty {..}
    = H264SettingsProperty {parNumerator = Prelude.pure newValue, ..}
instance Property "Profile" H264SettingsProperty where
  type PropertyType "Profile" H264SettingsProperty = Value Prelude.Text
  set newValue H264SettingsProperty {..}
    = H264SettingsProperty {profile = Prelude.pure newValue, ..}
instance Property "QualityLevel" H264SettingsProperty where
  type PropertyType "QualityLevel" H264SettingsProperty = Value Prelude.Text
  set newValue H264SettingsProperty {..}
    = H264SettingsProperty {qualityLevel = Prelude.pure newValue, ..}
instance Property "QvbrQualityLevel" H264SettingsProperty where
  type PropertyType "QvbrQualityLevel" H264SettingsProperty = Value Prelude.Integer
  set newValue H264SettingsProperty {..}
    = H264SettingsProperty
        {qvbrQualityLevel = Prelude.pure newValue, ..}
instance Property "RateControlMode" H264SettingsProperty where
  type PropertyType "RateControlMode" H264SettingsProperty = Value Prelude.Text
  set newValue H264SettingsProperty {..}
    = H264SettingsProperty
        {rateControlMode = Prelude.pure newValue, ..}
instance Property "ScanType" H264SettingsProperty where
  type PropertyType "ScanType" H264SettingsProperty = Value Prelude.Text
  set newValue H264SettingsProperty {..}
    = H264SettingsProperty {scanType = Prelude.pure newValue, ..}
instance Property "SceneChangeDetect" H264SettingsProperty where
  type PropertyType "SceneChangeDetect" H264SettingsProperty = Value Prelude.Text
  set newValue H264SettingsProperty {..}
    = H264SettingsProperty
        {sceneChangeDetect = Prelude.pure newValue, ..}
instance Property "Slices" H264SettingsProperty where
  type PropertyType "Slices" H264SettingsProperty = Value Prelude.Integer
  set newValue H264SettingsProperty {..}
    = H264SettingsProperty {slices = Prelude.pure newValue, ..}
instance Property "Softness" H264SettingsProperty where
  type PropertyType "Softness" H264SettingsProperty = Value Prelude.Integer
  set newValue H264SettingsProperty {..}
    = H264SettingsProperty {softness = Prelude.pure newValue, ..}
instance Property "SpatialAq" H264SettingsProperty where
  type PropertyType "SpatialAq" H264SettingsProperty = Value Prelude.Text
  set newValue H264SettingsProperty {..}
    = H264SettingsProperty {spatialAq = Prelude.pure newValue, ..}
instance Property "SubgopLength" H264SettingsProperty where
  type PropertyType "SubgopLength" H264SettingsProperty = Value Prelude.Text
  set newValue H264SettingsProperty {..}
    = H264SettingsProperty {subgopLength = Prelude.pure newValue, ..}
instance Property "Syntax" H264SettingsProperty where
  type PropertyType "Syntax" H264SettingsProperty = Value Prelude.Text
  set newValue H264SettingsProperty {..}
    = H264SettingsProperty {syntax = Prelude.pure newValue, ..}
instance Property "TemporalAq" H264SettingsProperty where
  type PropertyType "TemporalAq" H264SettingsProperty = Value Prelude.Text
  set newValue H264SettingsProperty {..}
    = H264SettingsProperty {temporalAq = Prelude.pure newValue, ..}
instance Property "TimecodeBurninSettings" H264SettingsProperty where
  type PropertyType "TimecodeBurninSettings" H264SettingsProperty = TimecodeBurninSettingsProperty
  set newValue H264SettingsProperty {..}
    = H264SettingsProperty
        {timecodeBurninSettings = Prelude.pure newValue, ..}
instance Property "TimecodeInsertion" H264SettingsProperty where
  type PropertyType "TimecodeInsertion" H264SettingsProperty = Value Prelude.Text
  set newValue H264SettingsProperty {..}
    = H264SettingsProperty
        {timecodeInsertion = Prelude.pure newValue, ..}