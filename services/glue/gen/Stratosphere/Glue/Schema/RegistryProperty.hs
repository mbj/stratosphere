module Stratosphere.Glue.Schema.RegistryProperty (
        RegistryProperty(..), mkRegistryProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RegistryProperty
  = RegistryProperty {arn :: (Prelude.Maybe (Value Prelude.Text)),
                      name :: (Prelude.Maybe (Value Prelude.Text))}
mkRegistryProperty :: RegistryProperty
mkRegistryProperty
  = RegistryProperty {arn = Prelude.Nothing, name = Prelude.Nothing}
instance ToResourceProperties RegistryProperty where
  toResourceProperties RegistryProperty {..}
    = ResourceProperties
        {awsType = "AWS::Glue::Schema.Registry",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Arn" Prelude.<$> arn,
                            (JSON..=) "Name" Prelude.<$> name])}
instance JSON.ToJSON RegistryProperty where
  toJSON RegistryProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Arn" Prelude.<$> arn,
               (JSON..=) "Name" Prelude.<$> name]))
instance Property "Arn" RegistryProperty where
  type PropertyType "Arn" RegistryProperty = Value Prelude.Text
  set newValue RegistryProperty {..}
    = RegistryProperty {arn = Prelude.pure newValue, ..}
instance Property "Name" RegistryProperty where
  type PropertyType "Name" RegistryProperty = Value Prelude.Text
  set newValue RegistryProperty {..}
    = RegistryProperty {name = Prelude.pure newValue, ..}