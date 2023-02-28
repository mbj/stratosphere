module Stratosphere.RDS.OptionGroup.OptionSettingProperty (
        OptionSettingProperty(..), mkOptionSettingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OptionSettingProperty
  = OptionSettingProperty {name :: (Prelude.Maybe (Value Prelude.Text)),
                           value :: (Prelude.Maybe (Value Prelude.Text))}
mkOptionSettingProperty :: OptionSettingProperty
mkOptionSettingProperty
  = OptionSettingProperty
      {name = Prelude.Nothing, value = Prelude.Nothing}
instance ToResourceProperties OptionSettingProperty where
  toResourceProperties OptionSettingProperty {..}
    = ResourceProperties
        {awsType = "AWS::RDS::OptionGroup.OptionSetting",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "Value" Prelude.<$> value])}
instance JSON.ToJSON OptionSettingProperty where
  toJSON OptionSettingProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "Value" Prelude.<$> value]))
instance Property "Name" OptionSettingProperty where
  type PropertyType "Name" OptionSettingProperty = Value Prelude.Text
  set newValue OptionSettingProperty {..}
    = OptionSettingProperty {name = Prelude.pure newValue, ..}
instance Property "Value" OptionSettingProperty where
  type PropertyType "Value" OptionSettingProperty = Value Prelude.Text
  set newValue OptionSettingProperty {..}
    = OptionSettingProperty {value = Prelude.pure newValue, ..}