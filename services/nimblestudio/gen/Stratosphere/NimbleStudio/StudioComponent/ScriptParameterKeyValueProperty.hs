module Stratosphere.NimbleStudio.StudioComponent.ScriptParameterKeyValueProperty (
        ScriptParameterKeyValueProperty(..),
        mkScriptParameterKeyValueProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ScriptParameterKeyValueProperty
  = ScriptParameterKeyValueProperty {key :: (Prelude.Maybe (Value Prelude.Text)),
                                     value :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkScriptParameterKeyValueProperty ::
  ScriptParameterKeyValueProperty
mkScriptParameterKeyValueProperty
  = ScriptParameterKeyValueProperty
      {key = Prelude.Nothing, value = Prelude.Nothing}
instance ToResourceProperties ScriptParameterKeyValueProperty where
  toResourceProperties ScriptParameterKeyValueProperty {..}
    = ResourceProperties
        {awsType = "AWS::NimbleStudio::StudioComponent.ScriptParameterKeyValue",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Key" Prelude.<$> key,
                            (JSON..=) "Value" Prelude.<$> value])}
instance JSON.ToJSON ScriptParameterKeyValueProperty where
  toJSON ScriptParameterKeyValueProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Key" Prelude.<$> key,
               (JSON..=) "Value" Prelude.<$> value]))
instance Property "Key" ScriptParameterKeyValueProperty where
  type PropertyType "Key" ScriptParameterKeyValueProperty = Value Prelude.Text
  set newValue ScriptParameterKeyValueProperty {..}
    = ScriptParameterKeyValueProperty {key = Prelude.pure newValue, ..}
instance Property "Value" ScriptParameterKeyValueProperty where
  type PropertyType "Value" ScriptParameterKeyValueProperty = Value Prelude.Text
  set newValue ScriptParameterKeyValueProperty {..}
    = ScriptParameterKeyValueProperty
        {value = Prelude.pure newValue, ..}