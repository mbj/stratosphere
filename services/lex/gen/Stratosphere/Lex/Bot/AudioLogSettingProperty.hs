module Stratosphere.Lex.Bot.AudioLogSettingProperty (
        module Exports, AudioLogSettingProperty(..),
        mkAudioLogSettingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Lex.Bot.AudioLogDestinationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AudioLogSettingProperty
  = AudioLogSettingProperty {destination :: AudioLogDestinationProperty,
                             enabled :: (Value Prelude.Bool)}
mkAudioLogSettingProperty ::
  AudioLogDestinationProperty
  -> Value Prelude.Bool -> AudioLogSettingProperty
mkAudioLogSettingProperty destination enabled
  = AudioLogSettingProperty
      {destination = destination, enabled = enabled}
instance ToResourceProperties AudioLogSettingProperty where
  toResourceProperties AudioLogSettingProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lex::Bot.AudioLogSetting",
         properties = ["Destination" JSON..= destination,
                       "Enabled" JSON..= enabled]}
instance JSON.ToJSON AudioLogSettingProperty where
  toJSON AudioLogSettingProperty {..}
    = JSON.object
        ["Destination" JSON..= destination, "Enabled" JSON..= enabled]
instance Property "Destination" AudioLogSettingProperty where
  type PropertyType "Destination" AudioLogSettingProperty = AudioLogDestinationProperty
  set newValue AudioLogSettingProperty {..}
    = AudioLogSettingProperty {destination = newValue, ..}
instance Property "Enabled" AudioLogSettingProperty where
  type PropertyType "Enabled" AudioLogSettingProperty = Value Prelude.Bool
  set newValue AudioLogSettingProperty {..}
    = AudioLogSettingProperty {enabled = newValue, ..}