module Stratosphere.MediaLive.Channel.Mpeg2SettingsProperty (
        module Exports, Mpeg2SettingsProperty(..), mkMpeg2SettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.Mpeg2FilterSettingsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Mpeg2SettingsProperty
  = Mpeg2SettingsProperty {adaptiveQuantization :: (Prelude.Maybe (Value Prelude.Text)),
                           afdSignaling :: (Prelude.Maybe (Value Prelude.Text)),
                           colorMetadata :: (Prelude.Maybe (Value Prelude.Text)),
                           colorSpace :: (Prelude.Maybe (Value Prelude.Text)),
                           displayAspectRatio :: (Prelude.Maybe (Value Prelude.Text)),
                           filterSettings :: (Prelude.Maybe Mpeg2FilterSettingsProperty),
                           fixedAfd :: (Prelude.Maybe (Value Prelude.Text)),
                           framerateDenominator :: (Prelude.Maybe (Value Prelude.Integer)),
                           framerateNumerator :: (Prelude.Maybe (Value Prelude.Integer)),
                           gopClosedCadence :: (Prelude.Maybe (Value Prelude.Integer)),
                           gopNumBFrames :: (Prelude.Maybe (Value Prelude.Integer)),
                           gopSize :: (Prelude.Maybe (Value Prelude.Double)),
                           gopSizeUnits :: (Prelude.Maybe (Value Prelude.Text)),
                           scanType :: (Prelude.Maybe (Value Prelude.Text)),
                           subgopLength :: (Prelude.Maybe (Value Prelude.Text)),
                           timecodeInsertion :: (Prelude.Maybe (Value Prelude.Text))}
mkMpeg2SettingsProperty :: Mpeg2SettingsProperty
mkMpeg2SettingsProperty
  = Mpeg2SettingsProperty
      {adaptiveQuantization = Prelude.Nothing,
       afdSignaling = Prelude.Nothing, colorMetadata = Prelude.Nothing,
       colorSpace = Prelude.Nothing, displayAspectRatio = Prelude.Nothing,
       filterSettings = Prelude.Nothing, fixedAfd = Prelude.Nothing,
       framerateDenominator = Prelude.Nothing,
       framerateNumerator = Prelude.Nothing,
       gopClosedCadence = Prelude.Nothing,
       gopNumBFrames = Prelude.Nothing, gopSize = Prelude.Nothing,
       gopSizeUnits = Prelude.Nothing, scanType = Prelude.Nothing,
       subgopLength = Prelude.Nothing,
       timecodeInsertion = Prelude.Nothing}
instance ToResourceProperties Mpeg2SettingsProperty where
  toResourceProperties Mpeg2SettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.Mpeg2Settings",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AdaptiveQuantization" Prelude.<$> adaptiveQuantization,
                            (JSON..=) "AfdSignaling" Prelude.<$> afdSignaling,
                            (JSON..=) "ColorMetadata" Prelude.<$> colorMetadata,
                            (JSON..=) "ColorSpace" Prelude.<$> colorSpace,
                            (JSON..=) "DisplayAspectRatio" Prelude.<$> displayAspectRatio,
                            (JSON..=) "FilterSettings" Prelude.<$> filterSettings,
                            (JSON..=) "FixedAfd" Prelude.<$> fixedAfd,
                            (JSON..=) "FramerateDenominator" Prelude.<$> framerateDenominator,
                            (JSON..=) "FramerateNumerator" Prelude.<$> framerateNumerator,
                            (JSON..=) "GopClosedCadence" Prelude.<$> gopClosedCadence,
                            (JSON..=) "GopNumBFrames" Prelude.<$> gopNumBFrames,
                            (JSON..=) "GopSize" Prelude.<$> gopSize,
                            (JSON..=) "GopSizeUnits" Prelude.<$> gopSizeUnits,
                            (JSON..=) "ScanType" Prelude.<$> scanType,
                            (JSON..=) "SubgopLength" Prelude.<$> subgopLength,
                            (JSON..=) "TimecodeInsertion" Prelude.<$> timecodeInsertion])}
instance JSON.ToJSON Mpeg2SettingsProperty where
  toJSON Mpeg2SettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AdaptiveQuantization" Prelude.<$> adaptiveQuantization,
               (JSON..=) "AfdSignaling" Prelude.<$> afdSignaling,
               (JSON..=) "ColorMetadata" Prelude.<$> colorMetadata,
               (JSON..=) "ColorSpace" Prelude.<$> colorSpace,
               (JSON..=) "DisplayAspectRatio" Prelude.<$> displayAspectRatio,
               (JSON..=) "FilterSettings" Prelude.<$> filterSettings,
               (JSON..=) "FixedAfd" Prelude.<$> fixedAfd,
               (JSON..=) "FramerateDenominator" Prelude.<$> framerateDenominator,
               (JSON..=) "FramerateNumerator" Prelude.<$> framerateNumerator,
               (JSON..=) "GopClosedCadence" Prelude.<$> gopClosedCadence,
               (JSON..=) "GopNumBFrames" Prelude.<$> gopNumBFrames,
               (JSON..=) "GopSize" Prelude.<$> gopSize,
               (JSON..=) "GopSizeUnits" Prelude.<$> gopSizeUnits,
               (JSON..=) "ScanType" Prelude.<$> scanType,
               (JSON..=) "SubgopLength" Prelude.<$> subgopLength,
               (JSON..=) "TimecodeInsertion" Prelude.<$> timecodeInsertion]))
instance Property "AdaptiveQuantization" Mpeg2SettingsProperty where
  type PropertyType "AdaptiveQuantization" Mpeg2SettingsProperty = Value Prelude.Text
  set newValue Mpeg2SettingsProperty {..}
    = Mpeg2SettingsProperty
        {adaptiveQuantization = Prelude.pure newValue, ..}
instance Property "AfdSignaling" Mpeg2SettingsProperty where
  type PropertyType "AfdSignaling" Mpeg2SettingsProperty = Value Prelude.Text
  set newValue Mpeg2SettingsProperty {..}
    = Mpeg2SettingsProperty {afdSignaling = Prelude.pure newValue, ..}
instance Property "ColorMetadata" Mpeg2SettingsProperty where
  type PropertyType "ColorMetadata" Mpeg2SettingsProperty = Value Prelude.Text
  set newValue Mpeg2SettingsProperty {..}
    = Mpeg2SettingsProperty {colorMetadata = Prelude.pure newValue, ..}
instance Property "ColorSpace" Mpeg2SettingsProperty where
  type PropertyType "ColorSpace" Mpeg2SettingsProperty = Value Prelude.Text
  set newValue Mpeg2SettingsProperty {..}
    = Mpeg2SettingsProperty {colorSpace = Prelude.pure newValue, ..}
instance Property "DisplayAspectRatio" Mpeg2SettingsProperty where
  type PropertyType "DisplayAspectRatio" Mpeg2SettingsProperty = Value Prelude.Text
  set newValue Mpeg2SettingsProperty {..}
    = Mpeg2SettingsProperty
        {displayAspectRatio = Prelude.pure newValue, ..}
instance Property "FilterSettings" Mpeg2SettingsProperty where
  type PropertyType "FilterSettings" Mpeg2SettingsProperty = Mpeg2FilterSettingsProperty
  set newValue Mpeg2SettingsProperty {..}
    = Mpeg2SettingsProperty
        {filterSettings = Prelude.pure newValue, ..}
instance Property "FixedAfd" Mpeg2SettingsProperty where
  type PropertyType "FixedAfd" Mpeg2SettingsProperty = Value Prelude.Text
  set newValue Mpeg2SettingsProperty {..}
    = Mpeg2SettingsProperty {fixedAfd = Prelude.pure newValue, ..}
instance Property "FramerateDenominator" Mpeg2SettingsProperty where
  type PropertyType "FramerateDenominator" Mpeg2SettingsProperty = Value Prelude.Integer
  set newValue Mpeg2SettingsProperty {..}
    = Mpeg2SettingsProperty
        {framerateDenominator = Prelude.pure newValue, ..}
instance Property "FramerateNumerator" Mpeg2SettingsProperty where
  type PropertyType "FramerateNumerator" Mpeg2SettingsProperty = Value Prelude.Integer
  set newValue Mpeg2SettingsProperty {..}
    = Mpeg2SettingsProperty
        {framerateNumerator = Prelude.pure newValue, ..}
instance Property "GopClosedCadence" Mpeg2SettingsProperty where
  type PropertyType "GopClosedCadence" Mpeg2SettingsProperty = Value Prelude.Integer
  set newValue Mpeg2SettingsProperty {..}
    = Mpeg2SettingsProperty
        {gopClosedCadence = Prelude.pure newValue, ..}
instance Property "GopNumBFrames" Mpeg2SettingsProperty where
  type PropertyType "GopNumBFrames" Mpeg2SettingsProperty = Value Prelude.Integer
  set newValue Mpeg2SettingsProperty {..}
    = Mpeg2SettingsProperty {gopNumBFrames = Prelude.pure newValue, ..}
instance Property "GopSize" Mpeg2SettingsProperty where
  type PropertyType "GopSize" Mpeg2SettingsProperty = Value Prelude.Double
  set newValue Mpeg2SettingsProperty {..}
    = Mpeg2SettingsProperty {gopSize = Prelude.pure newValue, ..}
instance Property "GopSizeUnits" Mpeg2SettingsProperty where
  type PropertyType "GopSizeUnits" Mpeg2SettingsProperty = Value Prelude.Text
  set newValue Mpeg2SettingsProperty {..}
    = Mpeg2SettingsProperty {gopSizeUnits = Prelude.pure newValue, ..}
instance Property "ScanType" Mpeg2SettingsProperty where
  type PropertyType "ScanType" Mpeg2SettingsProperty = Value Prelude.Text
  set newValue Mpeg2SettingsProperty {..}
    = Mpeg2SettingsProperty {scanType = Prelude.pure newValue, ..}
instance Property "SubgopLength" Mpeg2SettingsProperty where
  type PropertyType "SubgopLength" Mpeg2SettingsProperty = Value Prelude.Text
  set newValue Mpeg2SettingsProperty {..}
    = Mpeg2SettingsProperty {subgopLength = Prelude.pure newValue, ..}
instance Property "TimecodeInsertion" Mpeg2SettingsProperty where
  type PropertyType "TimecodeInsertion" Mpeg2SettingsProperty = Value Prelude.Text
  set newValue Mpeg2SettingsProperty {..}
    = Mpeg2SettingsProperty
        {timecodeInsertion = Prelude.pure newValue, ..}