module Stratosphere.MediaLive.Channel.H265SettingsProperty (
        module Exports, H265SettingsProperty(..), mkH265SettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.H265ColorSpaceSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.H265FilterSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.TimecodeBurninSettingsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data H265SettingsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h265settings.html>
    H265SettingsProperty {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h265settings.html#cfn-medialive-channel-h265settings-adaptivequantization>
                          adaptiveQuantization :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h265settings.html#cfn-medialive-channel-h265settings-afdsignaling>
                          afdSignaling :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h265settings.html#cfn-medialive-channel-h265settings-alternativetransferfunction>
                          alternativeTransferFunction :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h265settings.html#cfn-medialive-channel-h265settings-bitrate>
                          bitrate :: (Prelude.Maybe (Value Prelude.Integer)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h265settings.html#cfn-medialive-channel-h265settings-bufsize>
                          bufSize :: (Prelude.Maybe (Value Prelude.Integer)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h265settings.html#cfn-medialive-channel-h265settings-colormetadata>
                          colorMetadata :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h265settings.html#cfn-medialive-channel-h265settings-colorspacesettings>
                          colorSpaceSettings :: (Prelude.Maybe H265ColorSpaceSettingsProperty),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h265settings.html#cfn-medialive-channel-h265settings-deblocking>
                          deblocking :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h265settings.html#cfn-medialive-channel-h265settings-filtersettings>
                          filterSettings :: (Prelude.Maybe H265FilterSettingsProperty),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h265settings.html#cfn-medialive-channel-h265settings-fixedafd>
                          fixedAfd :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h265settings.html#cfn-medialive-channel-h265settings-flickeraq>
                          flickerAq :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h265settings.html#cfn-medialive-channel-h265settings-frameratedenominator>
                          framerateDenominator :: (Prelude.Maybe (Value Prelude.Integer)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h265settings.html#cfn-medialive-channel-h265settings-frameratenumerator>
                          framerateNumerator :: (Prelude.Maybe (Value Prelude.Integer)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h265settings.html#cfn-medialive-channel-h265settings-gopbreference>
                          gopBReference :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h265settings.html#cfn-medialive-channel-h265settings-gopclosedcadence>
                          gopClosedCadence :: (Prelude.Maybe (Value Prelude.Integer)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h265settings.html#cfn-medialive-channel-h265settings-gopnumbframes>
                          gopNumBFrames :: (Prelude.Maybe (Value Prelude.Integer)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h265settings.html#cfn-medialive-channel-h265settings-gopsize>
                          gopSize :: (Prelude.Maybe (Value Prelude.Double)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h265settings.html#cfn-medialive-channel-h265settings-gopsizeunits>
                          gopSizeUnits :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h265settings.html#cfn-medialive-channel-h265settings-level>
                          level :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h265settings.html#cfn-medialive-channel-h265settings-lookaheadratecontrol>
                          lookAheadRateControl :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h265settings.html#cfn-medialive-channel-h265settings-maxbitrate>
                          maxBitrate :: (Prelude.Maybe (Value Prelude.Integer)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h265settings.html#cfn-medialive-channel-h265settings-minbitrate>
                          minBitrate :: (Prelude.Maybe (Value Prelude.Integer)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h265settings.html#cfn-medialive-channel-h265settings-miniinterval>
                          minIInterval :: (Prelude.Maybe (Value Prelude.Integer)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h265settings.html#cfn-medialive-channel-h265settings-minqp>
                          minQp :: (Prelude.Maybe (Value Prelude.Integer)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h265settings.html#cfn-medialive-channel-h265settings-mvoverpictureboundaries>
                          mvOverPictureBoundaries :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h265settings.html#cfn-medialive-channel-h265settings-mvtemporalpredictor>
                          mvTemporalPredictor :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h265settings.html#cfn-medialive-channel-h265settings-pardenominator>
                          parDenominator :: (Prelude.Maybe (Value Prelude.Integer)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h265settings.html#cfn-medialive-channel-h265settings-parnumerator>
                          parNumerator :: (Prelude.Maybe (Value Prelude.Integer)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h265settings.html#cfn-medialive-channel-h265settings-profile>
                          profile :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h265settings.html#cfn-medialive-channel-h265settings-qvbrqualitylevel>
                          qvbrQualityLevel :: (Prelude.Maybe (Value Prelude.Integer)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h265settings.html#cfn-medialive-channel-h265settings-ratecontrolmode>
                          rateControlMode :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h265settings.html#cfn-medialive-channel-h265settings-scantype>
                          scanType :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h265settings.html#cfn-medialive-channel-h265settings-scenechangedetect>
                          sceneChangeDetect :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h265settings.html#cfn-medialive-channel-h265settings-slices>
                          slices :: (Prelude.Maybe (Value Prelude.Integer)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h265settings.html#cfn-medialive-channel-h265settings-subgoplength>
                          subgopLength :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h265settings.html#cfn-medialive-channel-h265settings-tier>
                          tier :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h265settings.html#cfn-medialive-channel-h265settings-tileheight>
                          tileHeight :: (Prelude.Maybe (Value Prelude.Integer)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h265settings.html#cfn-medialive-channel-h265settings-tilepadding>
                          tilePadding :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h265settings.html#cfn-medialive-channel-h265settings-tilewidth>
                          tileWidth :: (Prelude.Maybe (Value Prelude.Integer)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h265settings.html#cfn-medialive-channel-h265settings-timecodeburninsettings>
                          timecodeBurninSettings :: (Prelude.Maybe TimecodeBurninSettingsProperty),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h265settings.html#cfn-medialive-channel-h265settings-timecodeinsertion>
                          timecodeInsertion :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h265settings.html#cfn-medialive-channel-h265settings-treeblocksize>
                          treeblockSize :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkH265SettingsProperty :: H265SettingsProperty
mkH265SettingsProperty
  = H265SettingsProperty
      {haddock_workaround_ = (), adaptiveQuantization = Prelude.Nothing,
       afdSignaling = Prelude.Nothing,
       alternativeTransferFunction = Prelude.Nothing,
       bitrate = Prelude.Nothing, bufSize = Prelude.Nothing,
       colorMetadata = Prelude.Nothing,
       colorSpaceSettings = Prelude.Nothing, deblocking = Prelude.Nothing,
       filterSettings = Prelude.Nothing, fixedAfd = Prelude.Nothing,
       flickerAq = Prelude.Nothing,
       framerateDenominator = Prelude.Nothing,
       framerateNumerator = Prelude.Nothing,
       gopBReference = Prelude.Nothing,
       gopClosedCadence = Prelude.Nothing,
       gopNumBFrames = Prelude.Nothing, gopSize = Prelude.Nothing,
       gopSizeUnits = Prelude.Nothing, level = Prelude.Nothing,
       lookAheadRateControl = Prelude.Nothing,
       maxBitrate = Prelude.Nothing, minBitrate = Prelude.Nothing,
       minIInterval = Prelude.Nothing, minQp = Prelude.Nothing,
       mvOverPictureBoundaries = Prelude.Nothing,
       mvTemporalPredictor = Prelude.Nothing,
       parDenominator = Prelude.Nothing, parNumerator = Prelude.Nothing,
       profile = Prelude.Nothing, qvbrQualityLevel = Prelude.Nothing,
       rateControlMode = Prelude.Nothing, scanType = Prelude.Nothing,
       sceneChangeDetect = Prelude.Nothing, slices = Prelude.Nothing,
       subgopLength = Prelude.Nothing, tier = Prelude.Nothing,
       tileHeight = Prelude.Nothing, tilePadding = Prelude.Nothing,
       tileWidth = Prelude.Nothing,
       timecodeBurninSettings = Prelude.Nothing,
       timecodeInsertion = Prelude.Nothing,
       treeblockSize = Prelude.Nothing}
instance ToResourceProperties H265SettingsProperty where
  toResourceProperties H265SettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.H265Settings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AdaptiveQuantization" Prelude.<$> adaptiveQuantization,
                            (JSON..=) "AfdSignaling" Prelude.<$> afdSignaling,
                            (JSON..=) "AlternativeTransferFunction"
                              Prelude.<$> alternativeTransferFunction,
                            (JSON..=) "Bitrate" Prelude.<$> bitrate,
                            (JSON..=) "BufSize" Prelude.<$> bufSize,
                            (JSON..=) "ColorMetadata" Prelude.<$> colorMetadata,
                            (JSON..=) "ColorSpaceSettings" Prelude.<$> colorSpaceSettings,
                            (JSON..=) "Deblocking" Prelude.<$> deblocking,
                            (JSON..=) "FilterSettings" Prelude.<$> filterSettings,
                            (JSON..=) "FixedAfd" Prelude.<$> fixedAfd,
                            (JSON..=) "FlickerAq" Prelude.<$> flickerAq,
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
                            (JSON..=) "MinBitrate" Prelude.<$> minBitrate,
                            (JSON..=) "MinIInterval" Prelude.<$> minIInterval,
                            (JSON..=) "MinQp" Prelude.<$> minQp,
                            (JSON..=) "MvOverPictureBoundaries"
                              Prelude.<$> mvOverPictureBoundaries,
                            (JSON..=) "MvTemporalPredictor" Prelude.<$> mvTemporalPredictor,
                            (JSON..=) "ParDenominator" Prelude.<$> parDenominator,
                            (JSON..=) "ParNumerator" Prelude.<$> parNumerator,
                            (JSON..=) "Profile" Prelude.<$> profile,
                            (JSON..=) "QvbrQualityLevel" Prelude.<$> qvbrQualityLevel,
                            (JSON..=) "RateControlMode" Prelude.<$> rateControlMode,
                            (JSON..=) "ScanType" Prelude.<$> scanType,
                            (JSON..=) "SceneChangeDetect" Prelude.<$> sceneChangeDetect,
                            (JSON..=) "Slices" Prelude.<$> slices,
                            (JSON..=) "SubgopLength" Prelude.<$> subgopLength,
                            (JSON..=) "Tier" Prelude.<$> tier,
                            (JSON..=) "TileHeight" Prelude.<$> tileHeight,
                            (JSON..=) "TilePadding" Prelude.<$> tilePadding,
                            (JSON..=) "TileWidth" Prelude.<$> tileWidth,
                            (JSON..=) "TimecodeBurninSettings"
                              Prelude.<$> timecodeBurninSettings,
                            (JSON..=) "TimecodeInsertion" Prelude.<$> timecodeInsertion,
                            (JSON..=) "TreeblockSize" Prelude.<$> treeblockSize])}
instance JSON.ToJSON H265SettingsProperty where
  toJSON H265SettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AdaptiveQuantization" Prelude.<$> adaptiveQuantization,
               (JSON..=) "AfdSignaling" Prelude.<$> afdSignaling,
               (JSON..=) "AlternativeTransferFunction"
                 Prelude.<$> alternativeTransferFunction,
               (JSON..=) "Bitrate" Prelude.<$> bitrate,
               (JSON..=) "BufSize" Prelude.<$> bufSize,
               (JSON..=) "ColorMetadata" Prelude.<$> colorMetadata,
               (JSON..=) "ColorSpaceSettings" Prelude.<$> colorSpaceSettings,
               (JSON..=) "Deblocking" Prelude.<$> deblocking,
               (JSON..=) "FilterSettings" Prelude.<$> filterSettings,
               (JSON..=) "FixedAfd" Prelude.<$> fixedAfd,
               (JSON..=) "FlickerAq" Prelude.<$> flickerAq,
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
               (JSON..=) "MinBitrate" Prelude.<$> minBitrate,
               (JSON..=) "MinIInterval" Prelude.<$> minIInterval,
               (JSON..=) "MinQp" Prelude.<$> minQp,
               (JSON..=) "MvOverPictureBoundaries"
                 Prelude.<$> mvOverPictureBoundaries,
               (JSON..=) "MvTemporalPredictor" Prelude.<$> mvTemporalPredictor,
               (JSON..=) "ParDenominator" Prelude.<$> parDenominator,
               (JSON..=) "ParNumerator" Prelude.<$> parNumerator,
               (JSON..=) "Profile" Prelude.<$> profile,
               (JSON..=) "QvbrQualityLevel" Prelude.<$> qvbrQualityLevel,
               (JSON..=) "RateControlMode" Prelude.<$> rateControlMode,
               (JSON..=) "ScanType" Prelude.<$> scanType,
               (JSON..=) "SceneChangeDetect" Prelude.<$> sceneChangeDetect,
               (JSON..=) "Slices" Prelude.<$> slices,
               (JSON..=) "SubgopLength" Prelude.<$> subgopLength,
               (JSON..=) "Tier" Prelude.<$> tier,
               (JSON..=) "TileHeight" Prelude.<$> tileHeight,
               (JSON..=) "TilePadding" Prelude.<$> tilePadding,
               (JSON..=) "TileWidth" Prelude.<$> tileWidth,
               (JSON..=) "TimecodeBurninSettings"
                 Prelude.<$> timecodeBurninSettings,
               (JSON..=) "TimecodeInsertion" Prelude.<$> timecodeInsertion,
               (JSON..=) "TreeblockSize" Prelude.<$> treeblockSize]))
instance Property "AdaptiveQuantization" H265SettingsProperty where
  type PropertyType "AdaptiveQuantization" H265SettingsProperty = Value Prelude.Text
  set newValue H265SettingsProperty {..}
    = H265SettingsProperty
        {adaptiveQuantization = Prelude.pure newValue, ..}
instance Property "AfdSignaling" H265SettingsProperty where
  type PropertyType "AfdSignaling" H265SettingsProperty = Value Prelude.Text
  set newValue H265SettingsProperty {..}
    = H265SettingsProperty {afdSignaling = Prelude.pure newValue, ..}
instance Property "AlternativeTransferFunction" H265SettingsProperty where
  type PropertyType "AlternativeTransferFunction" H265SettingsProperty = Value Prelude.Text
  set newValue H265SettingsProperty {..}
    = H265SettingsProperty
        {alternativeTransferFunction = Prelude.pure newValue, ..}
instance Property "Bitrate" H265SettingsProperty where
  type PropertyType "Bitrate" H265SettingsProperty = Value Prelude.Integer
  set newValue H265SettingsProperty {..}
    = H265SettingsProperty {bitrate = Prelude.pure newValue, ..}
instance Property "BufSize" H265SettingsProperty where
  type PropertyType "BufSize" H265SettingsProperty = Value Prelude.Integer
  set newValue H265SettingsProperty {..}
    = H265SettingsProperty {bufSize = Prelude.pure newValue, ..}
instance Property "ColorMetadata" H265SettingsProperty where
  type PropertyType "ColorMetadata" H265SettingsProperty = Value Prelude.Text
  set newValue H265SettingsProperty {..}
    = H265SettingsProperty {colorMetadata = Prelude.pure newValue, ..}
instance Property "ColorSpaceSettings" H265SettingsProperty where
  type PropertyType "ColorSpaceSettings" H265SettingsProperty = H265ColorSpaceSettingsProperty
  set newValue H265SettingsProperty {..}
    = H265SettingsProperty
        {colorSpaceSettings = Prelude.pure newValue, ..}
instance Property "Deblocking" H265SettingsProperty where
  type PropertyType "Deblocking" H265SettingsProperty = Value Prelude.Text
  set newValue H265SettingsProperty {..}
    = H265SettingsProperty {deblocking = Prelude.pure newValue, ..}
instance Property "FilterSettings" H265SettingsProperty where
  type PropertyType "FilterSettings" H265SettingsProperty = H265FilterSettingsProperty
  set newValue H265SettingsProperty {..}
    = H265SettingsProperty {filterSettings = Prelude.pure newValue, ..}
instance Property "FixedAfd" H265SettingsProperty where
  type PropertyType "FixedAfd" H265SettingsProperty = Value Prelude.Text
  set newValue H265SettingsProperty {..}
    = H265SettingsProperty {fixedAfd = Prelude.pure newValue, ..}
instance Property "FlickerAq" H265SettingsProperty where
  type PropertyType "FlickerAq" H265SettingsProperty = Value Prelude.Text
  set newValue H265SettingsProperty {..}
    = H265SettingsProperty {flickerAq = Prelude.pure newValue, ..}
instance Property "FramerateDenominator" H265SettingsProperty where
  type PropertyType "FramerateDenominator" H265SettingsProperty = Value Prelude.Integer
  set newValue H265SettingsProperty {..}
    = H265SettingsProperty
        {framerateDenominator = Prelude.pure newValue, ..}
instance Property "FramerateNumerator" H265SettingsProperty where
  type PropertyType "FramerateNumerator" H265SettingsProperty = Value Prelude.Integer
  set newValue H265SettingsProperty {..}
    = H265SettingsProperty
        {framerateNumerator = Prelude.pure newValue, ..}
instance Property "GopBReference" H265SettingsProperty where
  type PropertyType "GopBReference" H265SettingsProperty = Value Prelude.Text
  set newValue H265SettingsProperty {..}
    = H265SettingsProperty {gopBReference = Prelude.pure newValue, ..}
instance Property "GopClosedCadence" H265SettingsProperty where
  type PropertyType "GopClosedCadence" H265SettingsProperty = Value Prelude.Integer
  set newValue H265SettingsProperty {..}
    = H265SettingsProperty
        {gopClosedCadence = Prelude.pure newValue, ..}
instance Property "GopNumBFrames" H265SettingsProperty where
  type PropertyType "GopNumBFrames" H265SettingsProperty = Value Prelude.Integer
  set newValue H265SettingsProperty {..}
    = H265SettingsProperty {gopNumBFrames = Prelude.pure newValue, ..}
instance Property "GopSize" H265SettingsProperty where
  type PropertyType "GopSize" H265SettingsProperty = Value Prelude.Double
  set newValue H265SettingsProperty {..}
    = H265SettingsProperty {gopSize = Prelude.pure newValue, ..}
instance Property "GopSizeUnits" H265SettingsProperty where
  type PropertyType "GopSizeUnits" H265SettingsProperty = Value Prelude.Text
  set newValue H265SettingsProperty {..}
    = H265SettingsProperty {gopSizeUnits = Prelude.pure newValue, ..}
instance Property "Level" H265SettingsProperty where
  type PropertyType "Level" H265SettingsProperty = Value Prelude.Text
  set newValue H265SettingsProperty {..}
    = H265SettingsProperty {level = Prelude.pure newValue, ..}
instance Property "LookAheadRateControl" H265SettingsProperty where
  type PropertyType "LookAheadRateControl" H265SettingsProperty = Value Prelude.Text
  set newValue H265SettingsProperty {..}
    = H265SettingsProperty
        {lookAheadRateControl = Prelude.pure newValue, ..}
instance Property "MaxBitrate" H265SettingsProperty where
  type PropertyType "MaxBitrate" H265SettingsProperty = Value Prelude.Integer
  set newValue H265SettingsProperty {..}
    = H265SettingsProperty {maxBitrate = Prelude.pure newValue, ..}
instance Property "MinBitrate" H265SettingsProperty where
  type PropertyType "MinBitrate" H265SettingsProperty = Value Prelude.Integer
  set newValue H265SettingsProperty {..}
    = H265SettingsProperty {minBitrate = Prelude.pure newValue, ..}
instance Property "MinIInterval" H265SettingsProperty where
  type PropertyType "MinIInterval" H265SettingsProperty = Value Prelude.Integer
  set newValue H265SettingsProperty {..}
    = H265SettingsProperty {minIInterval = Prelude.pure newValue, ..}
instance Property "MinQp" H265SettingsProperty where
  type PropertyType "MinQp" H265SettingsProperty = Value Prelude.Integer
  set newValue H265SettingsProperty {..}
    = H265SettingsProperty {minQp = Prelude.pure newValue, ..}
instance Property "MvOverPictureBoundaries" H265SettingsProperty where
  type PropertyType "MvOverPictureBoundaries" H265SettingsProperty = Value Prelude.Text
  set newValue H265SettingsProperty {..}
    = H265SettingsProperty
        {mvOverPictureBoundaries = Prelude.pure newValue, ..}
instance Property "MvTemporalPredictor" H265SettingsProperty where
  type PropertyType "MvTemporalPredictor" H265SettingsProperty = Value Prelude.Text
  set newValue H265SettingsProperty {..}
    = H265SettingsProperty
        {mvTemporalPredictor = Prelude.pure newValue, ..}
instance Property "ParDenominator" H265SettingsProperty where
  type PropertyType "ParDenominator" H265SettingsProperty = Value Prelude.Integer
  set newValue H265SettingsProperty {..}
    = H265SettingsProperty {parDenominator = Prelude.pure newValue, ..}
instance Property "ParNumerator" H265SettingsProperty where
  type PropertyType "ParNumerator" H265SettingsProperty = Value Prelude.Integer
  set newValue H265SettingsProperty {..}
    = H265SettingsProperty {parNumerator = Prelude.pure newValue, ..}
instance Property "Profile" H265SettingsProperty where
  type PropertyType "Profile" H265SettingsProperty = Value Prelude.Text
  set newValue H265SettingsProperty {..}
    = H265SettingsProperty {profile = Prelude.pure newValue, ..}
instance Property "QvbrQualityLevel" H265SettingsProperty where
  type PropertyType "QvbrQualityLevel" H265SettingsProperty = Value Prelude.Integer
  set newValue H265SettingsProperty {..}
    = H265SettingsProperty
        {qvbrQualityLevel = Prelude.pure newValue, ..}
instance Property "RateControlMode" H265SettingsProperty where
  type PropertyType "RateControlMode" H265SettingsProperty = Value Prelude.Text
  set newValue H265SettingsProperty {..}
    = H265SettingsProperty
        {rateControlMode = Prelude.pure newValue, ..}
instance Property "ScanType" H265SettingsProperty where
  type PropertyType "ScanType" H265SettingsProperty = Value Prelude.Text
  set newValue H265SettingsProperty {..}
    = H265SettingsProperty {scanType = Prelude.pure newValue, ..}
instance Property "SceneChangeDetect" H265SettingsProperty where
  type PropertyType "SceneChangeDetect" H265SettingsProperty = Value Prelude.Text
  set newValue H265SettingsProperty {..}
    = H265SettingsProperty
        {sceneChangeDetect = Prelude.pure newValue, ..}
instance Property "Slices" H265SettingsProperty where
  type PropertyType "Slices" H265SettingsProperty = Value Prelude.Integer
  set newValue H265SettingsProperty {..}
    = H265SettingsProperty {slices = Prelude.pure newValue, ..}
instance Property "SubgopLength" H265SettingsProperty where
  type PropertyType "SubgopLength" H265SettingsProperty = Value Prelude.Text
  set newValue H265SettingsProperty {..}
    = H265SettingsProperty {subgopLength = Prelude.pure newValue, ..}
instance Property "Tier" H265SettingsProperty where
  type PropertyType "Tier" H265SettingsProperty = Value Prelude.Text
  set newValue H265SettingsProperty {..}
    = H265SettingsProperty {tier = Prelude.pure newValue, ..}
instance Property "TileHeight" H265SettingsProperty where
  type PropertyType "TileHeight" H265SettingsProperty = Value Prelude.Integer
  set newValue H265SettingsProperty {..}
    = H265SettingsProperty {tileHeight = Prelude.pure newValue, ..}
instance Property "TilePadding" H265SettingsProperty where
  type PropertyType "TilePadding" H265SettingsProperty = Value Prelude.Text
  set newValue H265SettingsProperty {..}
    = H265SettingsProperty {tilePadding = Prelude.pure newValue, ..}
instance Property "TileWidth" H265SettingsProperty where
  type PropertyType "TileWidth" H265SettingsProperty = Value Prelude.Integer
  set newValue H265SettingsProperty {..}
    = H265SettingsProperty {tileWidth = Prelude.pure newValue, ..}
instance Property "TimecodeBurninSettings" H265SettingsProperty where
  type PropertyType "TimecodeBurninSettings" H265SettingsProperty = TimecodeBurninSettingsProperty
  set newValue H265SettingsProperty {..}
    = H265SettingsProperty
        {timecodeBurninSettings = Prelude.pure newValue, ..}
instance Property "TimecodeInsertion" H265SettingsProperty where
  type PropertyType "TimecodeInsertion" H265SettingsProperty = Value Prelude.Text
  set newValue H265SettingsProperty {..}
    = H265SettingsProperty
        {timecodeInsertion = Prelude.pure newValue, ..}
instance Property "TreeblockSize" H265SettingsProperty where
  type PropertyType "TreeblockSize" H265SettingsProperty = Value Prelude.Text
  set newValue H265SettingsProperty {..}
    = H265SettingsProperty {treeblockSize = Prelude.pure newValue, ..}