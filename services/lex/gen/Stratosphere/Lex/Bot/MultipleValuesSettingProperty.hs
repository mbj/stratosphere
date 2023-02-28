module Stratosphere.Lex.Bot.MultipleValuesSettingProperty (
        MultipleValuesSettingProperty(..), mkMultipleValuesSettingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MultipleValuesSettingProperty
  = MultipleValuesSettingProperty {allowMultipleValues :: (Prelude.Maybe (Value Prelude.Bool))}
mkMultipleValuesSettingProperty :: MultipleValuesSettingProperty
mkMultipleValuesSettingProperty
  = MultipleValuesSettingProperty
      {allowMultipleValues = Prelude.Nothing}
instance ToResourceProperties MultipleValuesSettingProperty where
  toResourceProperties MultipleValuesSettingProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lex::Bot.MultipleValuesSetting",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AllowMultipleValues" Prelude.<$> allowMultipleValues])}
instance JSON.ToJSON MultipleValuesSettingProperty where
  toJSON MultipleValuesSettingProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AllowMultipleValues" Prelude.<$> allowMultipleValues]))
instance Property "AllowMultipleValues" MultipleValuesSettingProperty where
  type PropertyType "AllowMultipleValues" MultipleValuesSettingProperty = Value Prelude.Bool
  set newValue MultipleValuesSettingProperty {}
    = MultipleValuesSettingProperty
        {allowMultipleValues = Prelude.pure newValue, ..}