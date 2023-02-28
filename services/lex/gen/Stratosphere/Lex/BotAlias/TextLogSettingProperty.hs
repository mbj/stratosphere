module Stratosphere.Lex.BotAlias.TextLogSettingProperty (
        module Exports, TextLogSettingProperty(..),
        mkTextLogSettingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Lex.BotAlias.TextLogDestinationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TextLogSettingProperty
  = TextLogSettingProperty {destination :: TextLogDestinationProperty,
                            enabled :: (Value Prelude.Bool)}
mkTextLogSettingProperty ::
  TextLogDestinationProperty
  -> Value Prelude.Bool -> TextLogSettingProperty
mkTextLogSettingProperty destination enabled
  = TextLogSettingProperty
      {destination = destination, enabled = enabled}
instance ToResourceProperties TextLogSettingProperty where
  toResourceProperties TextLogSettingProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lex::BotAlias.TextLogSetting",
         supportsTags = Prelude.False,
         properties = ["Destination" JSON..= destination,
                       "Enabled" JSON..= enabled]}
instance JSON.ToJSON TextLogSettingProperty where
  toJSON TextLogSettingProperty {..}
    = JSON.object
        ["Destination" JSON..= destination, "Enabled" JSON..= enabled]
instance Property "Destination" TextLogSettingProperty where
  type PropertyType "Destination" TextLogSettingProperty = TextLogDestinationProperty
  set newValue TextLogSettingProperty {..}
    = TextLogSettingProperty {destination = newValue, ..}
instance Property "Enabled" TextLogSettingProperty where
  type PropertyType "Enabled" TextLogSettingProperty = Value Prelude.Bool
  set newValue TextLogSettingProperty {..}
    = TextLogSettingProperty {enabled = newValue, ..}