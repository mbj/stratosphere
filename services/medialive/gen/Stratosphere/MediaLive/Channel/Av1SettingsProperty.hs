module Stratosphere.MediaLive.Channel.Av1SettingsProperty (
        module Exports, Av1SettingsProperty(..), mkAv1SettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.Av1ColorSpaceSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.TimecodeBurninSettingsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Av1SettingsProperty
  = Av1SettingsProperty {afdSignaling :: (Prelude.Maybe (Value Prelude.Text)),
                         bufSize :: (Prelude.Maybe (Value Prelude.Integer)),
                         colorSpaceSettings :: (Prelude.Maybe Av1ColorSpaceSettingsProperty),
                         fixedAfd :: (Prelude.Maybe (Value Prelude.Text)),
                         framerateDenominator :: (Prelude.Maybe (Value Prelude.Integer)),
                         framerateNumerator :: (Prelude.Maybe (Value Prelude.Integer)),
                         gopSize :: (Prelude.Maybe (Value Prelude.Double)),
                         gopSizeUnits :: (Prelude.Maybe (Value Prelude.Text)),
                         level :: (Prelude.Maybe (Value Prelude.Text)),
                         lookAheadRateControl :: (Prelude.Maybe (Value Prelude.Text)),
                         maxBitrate :: (Prelude.Maybe (Value Prelude.Integer)),
                         minIInterval :: (Prelude.Maybe (Value Prelude.Integer)),
                         parDenominator :: (Prelude.Maybe (Value Prelude.Integer)),
                         parNumerator :: (Prelude.Maybe (Value Prelude.Integer)),
                         qvbrQualityLevel :: (Prelude.Maybe (Value Prelude.Integer)),
                         sceneChangeDetect :: (Prelude.Maybe (Value Prelude.Text)),
                         timecodeBurninSettings :: (Prelude.Maybe TimecodeBurninSettingsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAv1SettingsProperty :: Av1SettingsProperty
mkAv1SettingsProperty
  = Av1SettingsProperty
      {afdSignaling = Prelude.Nothing, bufSize = Prelude.Nothing,
       colorSpaceSettings = Prelude.Nothing, fixedAfd = Prelude.Nothing,
       framerateDenominator = Prelude.Nothing,
       framerateNumerator = Prelude.Nothing, gopSize = Prelude.Nothing,
       gopSizeUnits = Prelude.Nothing, level = Prelude.Nothing,
       lookAheadRateControl = Prelude.Nothing,
       maxBitrate = Prelude.Nothing, minIInterval = Prelude.Nothing,
       parDenominator = Prelude.Nothing, parNumerator = Prelude.Nothing,
       qvbrQualityLevel = Prelude.Nothing,
       sceneChangeDetect = Prelude.Nothing,
       timecodeBurninSettings = Prelude.Nothing}
instance ToResourceProperties Av1SettingsProperty where
  toResourceProperties Av1SettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.Av1Settings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AfdSignaling" Prelude.<$> afdSignaling,
                            (JSON..=) "BufSize" Prelude.<$> bufSize,
                            (JSON..=) "ColorSpaceSettings" Prelude.<$> colorSpaceSettings,
                            (JSON..=) "FixedAfd" Prelude.<$> fixedAfd,
                            (JSON..=) "FramerateDenominator" Prelude.<$> framerateDenominator,
                            (JSON..=) "FramerateNumerator" Prelude.<$> framerateNumerator,
                            (JSON..=) "GopSize" Prelude.<$> gopSize,
                            (JSON..=) "GopSizeUnits" Prelude.<$> gopSizeUnits,
                            (JSON..=) "Level" Prelude.<$> level,
                            (JSON..=) "LookAheadRateControl" Prelude.<$> lookAheadRateControl,
                            (JSON..=) "MaxBitrate" Prelude.<$> maxBitrate,
                            (JSON..=) "MinIInterval" Prelude.<$> minIInterval,
                            (JSON..=) "ParDenominator" Prelude.<$> parDenominator,
                            (JSON..=) "ParNumerator" Prelude.<$> parNumerator,
                            (JSON..=) "QvbrQualityLevel" Prelude.<$> qvbrQualityLevel,
                            (JSON..=) "SceneChangeDetect" Prelude.<$> sceneChangeDetect,
                            (JSON..=) "TimecodeBurninSettings"
                              Prelude.<$> timecodeBurninSettings])}
instance JSON.ToJSON Av1SettingsProperty where
  toJSON Av1SettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AfdSignaling" Prelude.<$> afdSignaling,
               (JSON..=) "BufSize" Prelude.<$> bufSize,
               (JSON..=) "ColorSpaceSettings" Prelude.<$> colorSpaceSettings,
               (JSON..=) "FixedAfd" Prelude.<$> fixedAfd,
               (JSON..=) "FramerateDenominator" Prelude.<$> framerateDenominator,
               (JSON..=) "FramerateNumerator" Prelude.<$> framerateNumerator,
               (JSON..=) "GopSize" Prelude.<$> gopSize,
               (JSON..=) "GopSizeUnits" Prelude.<$> gopSizeUnits,
               (JSON..=) "Level" Prelude.<$> level,
               (JSON..=) "LookAheadRateControl" Prelude.<$> lookAheadRateControl,
               (JSON..=) "MaxBitrate" Prelude.<$> maxBitrate,
               (JSON..=) "MinIInterval" Prelude.<$> minIInterval,
               (JSON..=) "ParDenominator" Prelude.<$> parDenominator,
               (JSON..=) "ParNumerator" Prelude.<$> parNumerator,
               (JSON..=) "QvbrQualityLevel" Prelude.<$> qvbrQualityLevel,
               (JSON..=) "SceneChangeDetect" Prelude.<$> sceneChangeDetect,
               (JSON..=) "TimecodeBurninSettings"
                 Prelude.<$> timecodeBurninSettings]))
instance Property "AfdSignaling" Av1SettingsProperty where
  type PropertyType "AfdSignaling" Av1SettingsProperty = Value Prelude.Text
  set newValue Av1SettingsProperty {..}
    = Av1SettingsProperty {afdSignaling = Prelude.pure newValue, ..}
instance Property "BufSize" Av1SettingsProperty where
  type PropertyType "BufSize" Av1SettingsProperty = Value Prelude.Integer
  set newValue Av1SettingsProperty {..}
    = Av1SettingsProperty {bufSize = Prelude.pure newValue, ..}
instance Property "ColorSpaceSettings" Av1SettingsProperty where
  type PropertyType "ColorSpaceSettings" Av1SettingsProperty = Av1ColorSpaceSettingsProperty
  set newValue Av1SettingsProperty {..}
    = Av1SettingsProperty
        {colorSpaceSettings = Prelude.pure newValue, ..}
instance Property "FixedAfd" Av1SettingsProperty where
  type PropertyType "FixedAfd" Av1SettingsProperty = Value Prelude.Text
  set newValue Av1SettingsProperty {..}
    = Av1SettingsProperty {fixedAfd = Prelude.pure newValue, ..}
instance Property "FramerateDenominator" Av1SettingsProperty where
  type PropertyType "FramerateDenominator" Av1SettingsProperty = Value Prelude.Integer
  set newValue Av1SettingsProperty {..}
    = Av1SettingsProperty
        {framerateDenominator = Prelude.pure newValue, ..}
instance Property "FramerateNumerator" Av1SettingsProperty where
  type PropertyType "FramerateNumerator" Av1SettingsProperty = Value Prelude.Integer
  set newValue Av1SettingsProperty {..}
    = Av1SettingsProperty
        {framerateNumerator = Prelude.pure newValue, ..}
instance Property "GopSize" Av1SettingsProperty where
  type PropertyType "GopSize" Av1SettingsProperty = Value Prelude.Double
  set newValue Av1SettingsProperty {..}
    = Av1SettingsProperty {gopSize = Prelude.pure newValue, ..}
instance Property "GopSizeUnits" Av1SettingsProperty where
  type PropertyType "GopSizeUnits" Av1SettingsProperty = Value Prelude.Text
  set newValue Av1SettingsProperty {..}
    = Av1SettingsProperty {gopSizeUnits = Prelude.pure newValue, ..}
instance Property "Level" Av1SettingsProperty where
  type PropertyType "Level" Av1SettingsProperty = Value Prelude.Text
  set newValue Av1SettingsProperty {..}
    = Av1SettingsProperty {level = Prelude.pure newValue, ..}
instance Property "LookAheadRateControl" Av1SettingsProperty where
  type PropertyType "LookAheadRateControl" Av1SettingsProperty = Value Prelude.Text
  set newValue Av1SettingsProperty {..}
    = Av1SettingsProperty
        {lookAheadRateControl = Prelude.pure newValue, ..}
instance Property "MaxBitrate" Av1SettingsProperty where
  type PropertyType "MaxBitrate" Av1SettingsProperty = Value Prelude.Integer
  set newValue Av1SettingsProperty {..}
    = Av1SettingsProperty {maxBitrate = Prelude.pure newValue, ..}
instance Property "MinIInterval" Av1SettingsProperty where
  type PropertyType "MinIInterval" Av1SettingsProperty = Value Prelude.Integer
  set newValue Av1SettingsProperty {..}
    = Av1SettingsProperty {minIInterval = Prelude.pure newValue, ..}
instance Property "ParDenominator" Av1SettingsProperty where
  type PropertyType "ParDenominator" Av1SettingsProperty = Value Prelude.Integer
  set newValue Av1SettingsProperty {..}
    = Av1SettingsProperty {parDenominator = Prelude.pure newValue, ..}
instance Property "ParNumerator" Av1SettingsProperty where
  type PropertyType "ParNumerator" Av1SettingsProperty = Value Prelude.Integer
  set newValue Av1SettingsProperty {..}
    = Av1SettingsProperty {parNumerator = Prelude.pure newValue, ..}
instance Property "QvbrQualityLevel" Av1SettingsProperty where
  type PropertyType "QvbrQualityLevel" Av1SettingsProperty = Value Prelude.Integer
  set newValue Av1SettingsProperty {..}
    = Av1SettingsProperty
        {qvbrQualityLevel = Prelude.pure newValue, ..}
instance Property "SceneChangeDetect" Av1SettingsProperty where
  type PropertyType "SceneChangeDetect" Av1SettingsProperty = Value Prelude.Text
  set newValue Av1SettingsProperty {..}
    = Av1SettingsProperty
        {sceneChangeDetect = Prelude.pure newValue, ..}
instance Property "TimecodeBurninSettings" Av1SettingsProperty where
  type PropertyType "TimecodeBurninSettings" Av1SettingsProperty = TimecodeBurninSettingsProperty
  set newValue Av1SettingsProperty {..}
    = Av1SettingsProperty
        {timecodeBurninSettings = Prelude.pure newValue, ..}