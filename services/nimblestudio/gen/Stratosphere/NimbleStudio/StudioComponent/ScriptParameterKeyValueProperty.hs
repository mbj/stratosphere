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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-nimblestudio-studiocomponent-scriptparameterkeyvalue.html>
    ScriptParameterKeyValueProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-nimblestudio-studiocomponent-scriptparameterkeyvalue.html#cfn-nimblestudio-studiocomponent-scriptparameterkeyvalue-key>
                                     key :: (Prelude.Maybe (Value Prelude.Text)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-nimblestudio-studiocomponent-scriptparameterkeyvalue.html#cfn-nimblestudio-studiocomponent-scriptparameterkeyvalue-value>
                                     value :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkScriptParameterKeyValueProperty ::
  ScriptParameterKeyValueProperty
mkScriptParameterKeyValueProperty
  = ScriptParameterKeyValueProperty
      {haddock_workaround_ = (), key = Prelude.Nothing,
       value = Prelude.Nothing}
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