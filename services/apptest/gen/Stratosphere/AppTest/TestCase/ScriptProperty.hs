module Stratosphere.AppTest.TestCase.ScriptProperty (
        ScriptProperty(..), mkScriptProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ScriptProperty
  = ScriptProperty {scriptLocation :: (Value Prelude.Text),
                    type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkScriptProperty ::
  Value Prelude.Text -> Value Prelude.Text -> ScriptProperty
mkScriptProperty scriptLocation type'
  = ScriptProperty {scriptLocation = scriptLocation, type' = type'}
instance ToResourceProperties ScriptProperty where
  toResourceProperties ScriptProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppTest::TestCase.Script",
         supportsTags = Prelude.False,
         properties = ["ScriptLocation" JSON..= scriptLocation,
                       "Type" JSON..= type']}
instance JSON.ToJSON ScriptProperty where
  toJSON ScriptProperty {..}
    = JSON.object
        ["ScriptLocation" JSON..= scriptLocation, "Type" JSON..= type']
instance Property "ScriptLocation" ScriptProperty where
  type PropertyType "ScriptLocation" ScriptProperty = Value Prelude.Text
  set newValue ScriptProperty {..}
    = ScriptProperty {scriptLocation = newValue, ..}
instance Property "Type" ScriptProperty where
  type PropertyType "Type" ScriptProperty = Value Prelude.Text
  set newValue ScriptProperty {..}
    = ScriptProperty {type' = newValue, ..}