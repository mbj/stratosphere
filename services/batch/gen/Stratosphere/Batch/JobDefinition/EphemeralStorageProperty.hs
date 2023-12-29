module Stratosphere.Batch.JobDefinition.EphemeralStorageProperty (
        EphemeralStorageProperty(..), mkEphemeralStorageProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EphemeralStorageProperty
  = EphemeralStorageProperty {sizeInGiB :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEphemeralStorageProperty ::
  Value Prelude.Integer -> EphemeralStorageProperty
mkEphemeralStorageProperty sizeInGiB
  = EphemeralStorageProperty {sizeInGiB = sizeInGiB}
instance ToResourceProperties EphemeralStorageProperty where
  toResourceProperties EphemeralStorageProperty {..}
    = ResourceProperties
        {awsType = "AWS::Batch::JobDefinition.EphemeralStorage",
         supportsTags = Prelude.False,
         properties = ["SizeInGiB" JSON..= sizeInGiB]}
instance JSON.ToJSON EphemeralStorageProperty where
  toJSON EphemeralStorageProperty {..}
    = JSON.object ["SizeInGiB" JSON..= sizeInGiB]
instance Property "SizeInGiB" EphemeralStorageProperty where
  type PropertyType "SizeInGiB" EphemeralStorageProperty = Value Prelude.Integer
  set newValue EphemeralStorageProperty {}
    = EphemeralStorageProperty {sizeInGiB = newValue, ..}