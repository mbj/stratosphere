module Stratosphere.MediaLive.Channel.H265SettingsProperty (
        module Exports, H265SettingsProperty(..), mkH265SettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.H265ColorSpaceSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.H265FilterSettingsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data H265SettingsProperty
  = H265SettingsProperty {adaptiveQuantization :: (Prelude.Maybe (Value Prelude.Text)),
                          afdSignaling :: (Prelude.Maybe (Value Prelude.Text)),
                          alternativeTransferFunction :: (Prelude.Maybe (Value Prelude.Text)),
                          bitrate :: (Prelude.Maybe (Value Prelude.Integer)),
                          bufSize :: (Prelude.Maybe (Value Prelude.Integer)),
                          colorMetadata :: (Prelude.Maybe (Value Prelude.Text)),
                          colorSpaceSettings :: (Prelude.Maybe H265ColorSpaceSettingsProperty),
                          filterSettings :: (Prelude.Maybe H265FilterSettingsProperty),
                          fixedAfd :: (Prelude.Maybe (Value Prelude.Text)),
                          flickerAq :: (Prelude.Maybe (Value Prelude.Text)),
                          framerateDenominator :: (Prelude.Maybe (Value Prelude.Integer)),
                          framerateNumerator :: (Prelude.Maybe (Value Prelude.Integer)),
                          gopClosedCadence :: (Prelude.Maybe (Value Prelude.Integer)),
                          gopSize :: (Prelude.Maybe (Value Prelude.Double)),
                          gopSizeUnits :: (Prelude.Maybe (Value Prelude.Text)),
                          level :: (Prelude.Maybe (Value Prelude.Text)),
                          lookAheadRateControl :: (Prelude.Maybe (Value Prelude.Text)),
                          maxBitrate :: (Prelude.Maybe (Value Prelude.Integer)),
                          minIInterval :: (Prelude.Maybe (Value Prelude.Integer)),
                          parDenominator :: (Prelude.Maybe (Value Prelude.Integer)),
                          parNumerator :: (Prelude.Maybe (Value Prelude.Integer)),
                          profile :: (Prelude.Maybe (Value Prelude.Text)),
                          qvbrQualityLevel :: (Prelude.Maybe (Value Prelude.Integer)),
                          rateControlMode :: (Prelude.Maybe (Value Prelude.Text)),
                          scanType :: (Prelude.Maybe (Value Prelude.Text)),
                          sceneChangeDetect :: (Prelude.Maybe (Value Prelude.Text)),
                          slices :: (Prelude.Maybe (Value Prelude.Integer)),
                          tier :: (Prelude.Maybe (Value Prelude.Text)),
                          timecodeInsertion :: (Prelude.Maybe (Value Prelude.Text))}
mkH265SettingsProperty :: H265SettingsProperty
mkH265SettingsProperty
  = H265SettingsProperty
      {adaptiveQuantization = Prelude.Nothing,
       afdSignaling = Prelude.Nothing,
       alternativeTransferFunction = Prelude.Nothing,
       bitrate = Prelude.Nothing, bufSize = Prelude.Nothing,
       colorMetadata = Prelude.Nothing,
       colorSpaceSettings = Prelude.Nothing,
       filterSettings = Prelude.Nothing, fixedAfd = Prelude.Nothing,
       flickerAq = Prelude.Nothing,
       framerateDenominator = Prelude.Nothing,
       framerateNumerator = Prelude.Nothing,
       gopClosedCadence = Prelude.Nothing, gopSize = Prelude.Nothing,
       gopSizeUnits = Prelude.Nothing, level = Prelude.Nothing,
       lookAheadRateControl = Prelude.Nothing,
       maxBitrate = Prelude.Nothing, minIInterval = Prelude.Nothing,
       parDenominator = Prelude.Nothing, parNumerator = Prelude.Nothing,
       profile = Prelude.Nothing, qvbrQualityLevel = Prelude.Nothing,
       rateControlMode = Prelude.Nothing, scanType = Prelude.Nothing,
       sceneChangeDetect = Prelude.Nothing, slices = Prelude.Nothing,
       tier = Prelude.Nothing, timecodeInsertion = Prelude.Nothing}
instance ToResourceProperties H265SettingsProperty where
  toResourceProperties H265SettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.H265Settings",
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
                            (JSON..=) "FilterSettings" Prelude.<$> filterSettings,
                            (JSON..=) "FixedAfd" Prelude.<$> fixedAfd,
                            (JSON..=) "FlickerAq" Prelude.<$> flickerAq,
                            (JSON..=) "FramerateDenominator" Prelude.<$> framerateDenominator,
                            (JSON..=) "FramerateNumerator" Prelude.<$> framerateNumerator,
                            (JSON..=) "GopClosedCadence" Prelude.<$> gopClosedCadence,
                            (JSON..=) "GopSize" Prelude.<$> gopSize,
                            (JSON..=) "GopSizeUnits" Prelude.<$> gopSizeUnits,
                            (JSON..=) "Level" Prelude.<$> level,
                            (JSON..=) "LookAheadRateControl" Prelude.<$> lookAheadRateControl,
                            (JSON..=) "MaxBitrate" Prelude.<$> maxBitrate,
                            (JSON..=) "MinIInterval" Prelude.<$> minIInterval,
                            (JSON..=) "ParDenominator" Prelude.<$> parDenominator,
                            (JSON..=) "ParNumerator" Prelude.<$> parNumerator,
                            (JSON..=) "Profile" Prelude.<$> profile,
                            (JSON..=) "QvbrQualityLevel" Prelude.<$> qvbrQualityLevel,
                            (JSON..=) "RateControlMode" Prelude.<$> rateControlMode,
                            (JSON..=) "ScanType" Prelude.<$> scanType,
                            (JSON..=) "SceneChangeDetect" Prelude.<$> sceneChangeDetect,
                            (JSON..=) "Slices" Prelude.<$> slices,
                            (JSON..=) "Tier" Prelude.<$> tier,
                            (JSON..=) "TimecodeInsertion" Prelude.<$> timecodeInsertion])}
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
               (JSON..=) "FilterSettings" Prelude.<$> filterSettings,
               (JSON..=) "FixedAfd" Prelude.<$> fixedAfd,
               (JSON..=) "FlickerAq" Prelude.<$> flickerAq,
               (JSON..=) "FramerateDenominator" Prelude.<$> framerateDenominator,
               (JSON..=) "FramerateNumerator" Prelude.<$> framerateNumerator,
               (JSON..=) "GopClosedCadence" Prelude.<$> gopClosedCadence,
               (JSON..=) "GopSize" Prelude.<$> gopSize,
               (JSON..=) "GopSizeUnits" Prelude.<$> gopSizeUnits,
               (JSON..=) "Level" Prelude.<$> level,
               (JSON..=) "LookAheadRateControl" Prelude.<$> lookAheadRateControl,
               (JSON..=) "MaxBitrate" Prelude.<$> maxBitrate,
               (JSON..=) "MinIInterval" Prelude.<$> minIInterval,
               (JSON..=) "ParDenominator" Prelude.<$> parDenominator,
               (JSON..=) "ParNumerator" Prelude.<$> parNumerator,
               (JSON..=) "Profile" Prelude.<$> profile,
               (JSON..=) "QvbrQualityLevel" Prelude.<$> qvbrQualityLevel,
               (JSON..=) "RateControlMode" Prelude.<$> rateControlMode,
               (JSON..=) "ScanType" Prelude.<$> scanType,
               (JSON..=) "SceneChangeDetect" Prelude.<$> sceneChangeDetect,
               (JSON..=) "Slices" Prelude.<$> slices,
               (JSON..=) "Tier" Prelude.<$> tier,
               (JSON..=) "TimecodeInsertion" Prelude.<$> timecodeInsertion]))
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
instance Property "GopClosedCadence" H265SettingsProperty where
  type PropertyType "GopClosedCadence" H265SettingsProperty = Value Prelude.Integer
  set newValue H265SettingsProperty {..}
    = H265SettingsProperty
        {gopClosedCadence = Prelude.pure newValue, ..}
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
instance Property "MinIInterval" H265SettingsProperty where
  type PropertyType "MinIInterval" H265SettingsProperty = Value Prelude.Integer
  set newValue H265SettingsProperty {..}
    = H265SettingsProperty {minIInterval = Prelude.pure newValue, ..}
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
instance Property "Tier" H265SettingsProperty where
  type PropertyType "Tier" H265SettingsProperty = Value Prelude.Text
  set newValue H265SettingsProperty {..}
    = H265SettingsProperty {tier = Prelude.pure newValue, ..}
instance Property "TimecodeInsertion" H265SettingsProperty where
  type PropertyType "TimecodeInsertion" H265SettingsProperty = Value Prelude.Text
  set newValue H265SettingsProperty {..}
    = H265SettingsProperty
        {timecodeInsertion = Prelude.pure newValue, ..}