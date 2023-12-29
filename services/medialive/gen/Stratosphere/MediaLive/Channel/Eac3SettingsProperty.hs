module Stratosphere.MediaLive.Channel.Eac3SettingsProperty (
        Eac3SettingsProperty(..), mkEac3SettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Eac3SettingsProperty
  = Eac3SettingsProperty {attenuationControl :: (Prelude.Maybe (Value Prelude.Text)),
                          bitrate :: (Prelude.Maybe (Value Prelude.Double)),
                          bitstreamMode :: (Prelude.Maybe (Value Prelude.Text)),
                          codingMode :: (Prelude.Maybe (Value Prelude.Text)),
                          dcFilter :: (Prelude.Maybe (Value Prelude.Text)),
                          dialnorm :: (Prelude.Maybe (Value Prelude.Integer)),
                          drcLine :: (Prelude.Maybe (Value Prelude.Text)),
                          drcRf :: (Prelude.Maybe (Value Prelude.Text)),
                          lfeControl :: (Prelude.Maybe (Value Prelude.Text)),
                          lfeFilter :: (Prelude.Maybe (Value Prelude.Text)),
                          loRoCenterMixLevel :: (Prelude.Maybe (Value Prelude.Double)),
                          loRoSurroundMixLevel :: (Prelude.Maybe (Value Prelude.Double)),
                          ltRtCenterMixLevel :: (Prelude.Maybe (Value Prelude.Double)),
                          ltRtSurroundMixLevel :: (Prelude.Maybe (Value Prelude.Double)),
                          metadataControl :: (Prelude.Maybe (Value Prelude.Text)),
                          passthroughControl :: (Prelude.Maybe (Value Prelude.Text)),
                          phaseControl :: (Prelude.Maybe (Value Prelude.Text)),
                          stereoDownmix :: (Prelude.Maybe (Value Prelude.Text)),
                          surroundExMode :: (Prelude.Maybe (Value Prelude.Text)),
                          surroundMode :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEac3SettingsProperty :: Eac3SettingsProperty
mkEac3SettingsProperty
  = Eac3SettingsProperty
      {attenuationControl = Prelude.Nothing, bitrate = Prelude.Nothing,
       bitstreamMode = Prelude.Nothing, codingMode = Prelude.Nothing,
       dcFilter = Prelude.Nothing, dialnorm = Prelude.Nothing,
       drcLine = Prelude.Nothing, drcRf = Prelude.Nothing,
       lfeControl = Prelude.Nothing, lfeFilter = Prelude.Nothing,
       loRoCenterMixLevel = Prelude.Nothing,
       loRoSurroundMixLevel = Prelude.Nothing,
       ltRtCenterMixLevel = Prelude.Nothing,
       ltRtSurroundMixLevel = Prelude.Nothing,
       metadataControl = Prelude.Nothing,
       passthroughControl = Prelude.Nothing,
       phaseControl = Prelude.Nothing, stereoDownmix = Prelude.Nothing,
       surroundExMode = Prelude.Nothing, surroundMode = Prelude.Nothing}
instance ToResourceProperties Eac3SettingsProperty where
  toResourceProperties Eac3SettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.Eac3Settings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AttenuationControl" Prelude.<$> attenuationControl,
                            (JSON..=) "Bitrate" Prelude.<$> bitrate,
                            (JSON..=) "BitstreamMode" Prelude.<$> bitstreamMode,
                            (JSON..=) "CodingMode" Prelude.<$> codingMode,
                            (JSON..=) "DcFilter" Prelude.<$> dcFilter,
                            (JSON..=) "Dialnorm" Prelude.<$> dialnorm,
                            (JSON..=) "DrcLine" Prelude.<$> drcLine,
                            (JSON..=) "DrcRf" Prelude.<$> drcRf,
                            (JSON..=) "LfeControl" Prelude.<$> lfeControl,
                            (JSON..=) "LfeFilter" Prelude.<$> lfeFilter,
                            (JSON..=) "LoRoCenterMixLevel" Prelude.<$> loRoCenterMixLevel,
                            (JSON..=) "LoRoSurroundMixLevel" Prelude.<$> loRoSurroundMixLevel,
                            (JSON..=) "LtRtCenterMixLevel" Prelude.<$> ltRtCenterMixLevel,
                            (JSON..=) "LtRtSurroundMixLevel" Prelude.<$> ltRtSurroundMixLevel,
                            (JSON..=) "MetadataControl" Prelude.<$> metadataControl,
                            (JSON..=) "PassthroughControl" Prelude.<$> passthroughControl,
                            (JSON..=) "PhaseControl" Prelude.<$> phaseControl,
                            (JSON..=) "StereoDownmix" Prelude.<$> stereoDownmix,
                            (JSON..=) "SurroundExMode" Prelude.<$> surroundExMode,
                            (JSON..=) "SurroundMode" Prelude.<$> surroundMode])}
instance JSON.ToJSON Eac3SettingsProperty where
  toJSON Eac3SettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AttenuationControl" Prelude.<$> attenuationControl,
               (JSON..=) "Bitrate" Prelude.<$> bitrate,
               (JSON..=) "BitstreamMode" Prelude.<$> bitstreamMode,
               (JSON..=) "CodingMode" Prelude.<$> codingMode,
               (JSON..=) "DcFilter" Prelude.<$> dcFilter,
               (JSON..=) "Dialnorm" Prelude.<$> dialnorm,
               (JSON..=) "DrcLine" Prelude.<$> drcLine,
               (JSON..=) "DrcRf" Prelude.<$> drcRf,
               (JSON..=) "LfeControl" Prelude.<$> lfeControl,
               (JSON..=) "LfeFilter" Prelude.<$> lfeFilter,
               (JSON..=) "LoRoCenterMixLevel" Prelude.<$> loRoCenterMixLevel,
               (JSON..=) "LoRoSurroundMixLevel" Prelude.<$> loRoSurroundMixLevel,
               (JSON..=) "LtRtCenterMixLevel" Prelude.<$> ltRtCenterMixLevel,
               (JSON..=) "LtRtSurroundMixLevel" Prelude.<$> ltRtSurroundMixLevel,
               (JSON..=) "MetadataControl" Prelude.<$> metadataControl,
               (JSON..=) "PassthroughControl" Prelude.<$> passthroughControl,
               (JSON..=) "PhaseControl" Prelude.<$> phaseControl,
               (JSON..=) "StereoDownmix" Prelude.<$> stereoDownmix,
               (JSON..=) "SurroundExMode" Prelude.<$> surroundExMode,
               (JSON..=) "SurroundMode" Prelude.<$> surroundMode]))
instance Property "AttenuationControl" Eac3SettingsProperty where
  type PropertyType "AttenuationControl" Eac3SettingsProperty = Value Prelude.Text
  set newValue Eac3SettingsProperty {..}
    = Eac3SettingsProperty
        {attenuationControl = Prelude.pure newValue, ..}
instance Property "Bitrate" Eac3SettingsProperty where
  type PropertyType "Bitrate" Eac3SettingsProperty = Value Prelude.Double
  set newValue Eac3SettingsProperty {..}
    = Eac3SettingsProperty {bitrate = Prelude.pure newValue, ..}
instance Property "BitstreamMode" Eac3SettingsProperty where
  type PropertyType "BitstreamMode" Eac3SettingsProperty = Value Prelude.Text
  set newValue Eac3SettingsProperty {..}
    = Eac3SettingsProperty {bitstreamMode = Prelude.pure newValue, ..}
instance Property "CodingMode" Eac3SettingsProperty where
  type PropertyType "CodingMode" Eac3SettingsProperty = Value Prelude.Text
  set newValue Eac3SettingsProperty {..}
    = Eac3SettingsProperty {codingMode = Prelude.pure newValue, ..}
instance Property "DcFilter" Eac3SettingsProperty where
  type PropertyType "DcFilter" Eac3SettingsProperty = Value Prelude.Text
  set newValue Eac3SettingsProperty {..}
    = Eac3SettingsProperty {dcFilter = Prelude.pure newValue, ..}
instance Property "Dialnorm" Eac3SettingsProperty where
  type PropertyType "Dialnorm" Eac3SettingsProperty = Value Prelude.Integer
  set newValue Eac3SettingsProperty {..}
    = Eac3SettingsProperty {dialnorm = Prelude.pure newValue, ..}
instance Property "DrcLine" Eac3SettingsProperty where
  type PropertyType "DrcLine" Eac3SettingsProperty = Value Prelude.Text
  set newValue Eac3SettingsProperty {..}
    = Eac3SettingsProperty {drcLine = Prelude.pure newValue, ..}
instance Property "DrcRf" Eac3SettingsProperty where
  type PropertyType "DrcRf" Eac3SettingsProperty = Value Prelude.Text
  set newValue Eac3SettingsProperty {..}
    = Eac3SettingsProperty {drcRf = Prelude.pure newValue, ..}
instance Property "LfeControl" Eac3SettingsProperty where
  type PropertyType "LfeControl" Eac3SettingsProperty = Value Prelude.Text
  set newValue Eac3SettingsProperty {..}
    = Eac3SettingsProperty {lfeControl = Prelude.pure newValue, ..}
instance Property "LfeFilter" Eac3SettingsProperty where
  type PropertyType "LfeFilter" Eac3SettingsProperty = Value Prelude.Text
  set newValue Eac3SettingsProperty {..}
    = Eac3SettingsProperty {lfeFilter = Prelude.pure newValue, ..}
instance Property "LoRoCenterMixLevel" Eac3SettingsProperty where
  type PropertyType "LoRoCenterMixLevel" Eac3SettingsProperty = Value Prelude.Double
  set newValue Eac3SettingsProperty {..}
    = Eac3SettingsProperty
        {loRoCenterMixLevel = Prelude.pure newValue, ..}
instance Property "LoRoSurroundMixLevel" Eac3SettingsProperty where
  type PropertyType "LoRoSurroundMixLevel" Eac3SettingsProperty = Value Prelude.Double
  set newValue Eac3SettingsProperty {..}
    = Eac3SettingsProperty
        {loRoSurroundMixLevel = Prelude.pure newValue, ..}
instance Property "LtRtCenterMixLevel" Eac3SettingsProperty where
  type PropertyType "LtRtCenterMixLevel" Eac3SettingsProperty = Value Prelude.Double
  set newValue Eac3SettingsProperty {..}
    = Eac3SettingsProperty
        {ltRtCenterMixLevel = Prelude.pure newValue, ..}
instance Property "LtRtSurroundMixLevel" Eac3SettingsProperty where
  type PropertyType "LtRtSurroundMixLevel" Eac3SettingsProperty = Value Prelude.Double
  set newValue Eac3SettingsProperty {..}
    = Eac3SettingsProperty
        {ltRtSurroundMixLevel = Prelude.pure newValue, ..}
instance Property "MetadataControl" Eac3SettingsProperty where
  type PropertyType "MetadataControl" Eac3SettingsProperty = Value Prelude.Text
  set newValue Eac3SettingsProperty {..}
    = Eac3SettingsProperty
        {metadataControl = Prelude.pure newValue, ..}
instance Property "PassthroughControl" Eac3SettingsProperty where
  type PropertyType "PassthroughControl" Eac3SettingsProperty = Value Prelude.Text
  set newValue Eac3SettingsProperty {..}
    = Eac3SettingsProperty
        {passthroughControl = Prelude.pure newValue, ..}
instance Property "PhaseControl" Eac3SettingsProperty where
  type PropertyType "PhaseControl" Eac3SettingsProperty = Value Prelude.Text
  set newValue Eac3SettingsProperty {..}
    = Eac3SettingsProperty {phaseControl = Prelude.pure newValue, ..}
instance Property "StereoDownmix" Eac3SettingsProperty where
  type PropertyType "StereoDownmix" Eac3SettingsProperty = Value Prelude.Text
  set newValue Eac3SettingsProperty {..}
    = Eac3SettingsProperty {stereoDownmix = Prelude.pure newValue, ..}
instance Property "SurroundExMode" Eac3SettingsProperty where
  type PropertyType "SurroundExMode" Eac3SettingsProperty = Value Prelude.Text
  set newValue Eac3SettingsProperty {..}
    = Eac3SettingsProperty {surroundExMode = Prelude.pure newValue, ..}
instance Property "SurroundMode" Eac3SettingsProperty where
  type PropertyType "SurroundMode" Eac3SettingsProperty = Value Prelude.Text
  set newValue Eac3SettingsProperty {..}
    = Eac3SettingsProperty {surroundMode = Prelude.pure newValue, ..}