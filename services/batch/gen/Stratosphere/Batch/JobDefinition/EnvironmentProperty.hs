module Stratosphere.Batch.JobDefinition.EnvironmentProperty (
        EnvironmentProperty(..), mkEnvironmentProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EnvironmentProperty
  = EnvironmentProperty {name :: (Prelude.Maybe (Value Prelude.Text)),
                         value :: (Prelude.Maybe (Value Prelude.Text))}
mkEnvironmentProperty :: EnvironmentProperty
mkEnvironmentProperty
  = EnvironmentProperty
      {name = Prelude.Nothing, value = Prelude.Nothing}
instance ToResourceProperties EnvironmentProperty where
  toResourceProperties EnvironmentProperty {..}
    = ResourceProperties
        {awsType = "AWS::Batch::JobDefinition.Environment",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "Value" Prelude.<$> value])}
instance JSON.ToJSON EnvironmentProperty where
  toJSON EnvironmentProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "Value" Prelude.<$> value]))
instance Property "Name" EnvironmentProperty where
  type PropertyType "Name" EnvironmentProperty = Value Prelude.Text
  set newValue EnvironmentProperty {..}
    = EnvironmentProperty {name = Prelude.pure newValue, ..}
instance Property "Value" EnvironmentProperty where
  type PropertyType "Value" EnvironmentProperty = Value Prelude.Text
  set newValue EnvironmentProperty {..}
    = EnvironmentProperty {value = Prelude.pure newValue, ..}