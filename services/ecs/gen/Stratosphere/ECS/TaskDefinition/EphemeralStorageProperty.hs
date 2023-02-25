module Stratosphere.ECS.TaskDefinition.EphemeralStorageProperty (
        EphemeralStorageProperty(..), mkEphemeralStorageProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EphemeralStorageProperty
  = EphemeralStorageProperty {sizeInGiB :: (Prelude.Maybe (Value Prelude.Integer))}
mkEphemeralStorageProperty :: EphemeralStorageProperty
mkEphemeralStorageProperty
  = EphemeralStorageProperty {sizeInGiB = Prelude.Nothing}
instance ToResourceProperties EphemeralStorageProperty where
  toResourceProperties EphemeralStorageProperty {..}
    = ResourceProperties
        {awsType = "AWS::ECS::TaskDefinition.EphemeralStorage",
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "SizeInGiB" Prelude.<$> sizeInGiB])}
instance JSON.ToJSON EphemeralStorageProperty where
  toJSON EphemeralStorageProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "SizeInGiB" Prelude.<$> sizeInGiB]))
instance Property "SizeInGiB" EphemeralStorageProperty where
  type PropertyType "SizeInGiB" EphemeralStorageProperty = Value Prelude.Integer
  set newValue EphemeralStorageProperty {}
    = EphemeralStorageProperty {sizeInGiB = Prelude.pure newValue, ..}