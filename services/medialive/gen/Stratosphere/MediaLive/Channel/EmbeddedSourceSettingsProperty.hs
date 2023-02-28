module Stratosphere.MediaLive.Channel.EmbeddedSourceSettingsProperty (
        EmbeddedSourceSettingsProperty(..),
        mkEmbeddedSourceSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EmbeddedSourceSettingsProperty
  = EmbeddedSourceSettingsProperty {convert608To708 :: (Prelude.Maybe (Value Prelude.Text)),
                                    scte20Detection :: (Prelude.Maybe (Value Prelude.Text)),
                                    source608ChannelNumber :: (Prelude.Maybe (Value Prelude.Integer)),
                                    source608TrackNumber :: (Prelude.Maybe (Value Prelude.Integer))}
mkEmbeddedSourceSettingsProperty :: EmbeddedSourceSettingsProperty
mkEmbeddedSourceSettingsProperty
  = EmbeddedSourceSettingsProperty
      {convert608To708 = Prelude.Nothing,
       scte20Detection = Prelude.Nothing,
       source608ChannelNumber = Prelude.Nothing,
       source608TrackNumber = Prelude.Nothing}
instance ToResourceProperties EmbeddedSourceSettingsProperty where
  toResourceProperties EmbeddedSourceSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.EmbeddedSourceSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Convert608To708" Prelude.<$> convert608To708,
                            (JSON..=) "Scte20Detection" Prelude.<$> scte20Detection,
                            (JSON..=) "Source608ChannelNumber"
                              Prelude.<$> source608ChannelNumber,
                            (JSON..=) "Source608TrackNumber"
                              Prelude.<$> source608TrackNumber])}
instance JSON.ToJSON EmbeddedSourceSettingsProperty where
  toJSON EmbeddedSourceSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Convert608To708" Prelude.<$> convert608To708,
               (JSON..=) "Scte20Detection" Prelude.<$> scte20Detection,
               (JSON..=) "Source608ChannelNumber"
                 Prelude.<$> source608ChannelNumber,
               (JSON..=) "Source608TrackNumber"
                 Prelude.<$> source608TrackNumber]))
instance Property "Convert608To708" EmbeddedSourceSettingsProperty where
  type PropertyType "Convert608To708" EmbeddedSourceSettingsProperty = Value Prelude.Text
  set newValue EmbeddedSourceSettingsProperty {..}
    = EmbeddedSourceSettingsProperty
        {convert608To708 = Prelude.pure newValue, ..}
instance Property "Scte20Detection" EmbeddedSourceSettingsProperty where
  type PropertyType "Scte20Detection" EmbeddedSourceSettingsProperty = Value Prelude.Text
  set newValue EmbeddedSourceSettingsProperty {..}
    = EmbeddedSourceSettingsProperty
        {scte20Detection = Prelude.pure newValue, ..}
instance Property "Source608ChannelNumber" EmbeddedSourceSettingsProperty where
  type PropertyType "Source608ChannelNumber" EmbeddedSourceSettingsProperty = Value Prelude.Integer
  set newValue EmbeddedSourceSettingsProperty {..}
    = EmbeddedSourceSettingsProperty
        {source608ChannelNumber = Prelude.pure newValue, ..}
instance Property "Source608TrackNumber" EmbeddedSourceSettingsProperty where
  type PropertyType "Source608TrackNumber" EmbeddedSourceSettingsProperty = Value Prelude.Integer
  set newValue EmbeddedSourceSettingsProperty {..}
    = EmbeddedSourceSettingsProperty
        {source608TrackNumber = Prelude.pure newValue, ..}