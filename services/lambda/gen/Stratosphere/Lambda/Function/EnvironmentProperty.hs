module Stratosphere.Lambda.Function.EnvironmentProperty (
        EnvironmentProperty(..), mkEnvironmentProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EnvironmentProperty
  = EnvironmentProperty {variables :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text)))}
mkEnvironmentProperty :: EnvironmentProperty
mkEnvironmentProperty
  = EnvironmentProperty {variables = Prelude.Nothing}
instance ToResourceProperties EnvironmentProperty where
  toResourceProperties EnvironmentProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lambda::Function.Environment",
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Variables" Prelude.<$> variables])}
instance JSON.ToJSON EnvironmentProperty where
  toJSON EnvironmentProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Variables" Prelude.<$> variables]))
instance Property "Variables" EnvironmentProperty where
  type PropertyType "Variables" EnvironmentProperty = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue EnvironmentProperty {}
    = EnvironmentProperty {variables = Prelude.pure newValue, ..}