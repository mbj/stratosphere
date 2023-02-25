module Stratosphere.Pipes.Pipe.EcsEphemeralStorageProperty (
        EcsEphemeralStorageProperty(..), mkEcsEphemeralStorageProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EcsEphemeralStorageProperty
  = EcsEphemeralStorageProperty {sizeInGiB :: (Value Prelude.Integer)}
mkEcsEphemeralStorageProperty ::
  Value Prelude.Integer -> EcsEphemeralStorageProperty
mkEcsEphemeralStorageProperty sizeInGiB
  = EcsEphemeralStorageProperty {sizeInGiB = sizeInGiB}
instance ToResourceProperties EcsEphemeralStorageProperty where
  toResourceProperties EcsEphemeralStorageProperty {..}
    = ResourceProperties
        {awsType = "AWS::Pipes::Pipe.EcsEphemeralStorage",
         properties = ["SizeInGiB" JSON..= sizeInGiB]}
instance JSON.ToJSON EcsEphemeralStorageProperty where
  toJSON EcsEphemeralStorageProperty {..}
    = JSON.object ["SizeInGiB" JSON..= sizeInGiB]
instance Property "SizeInGiB" EcsEphemeralStorageProperty where
  type PropertyType "SizeInGiB" EcsEphemeralStorageProperty = Value Prelude.Integer
  set newValue EcsEphemeralStorageProperty {}
    = EcsEphemeralStorageProperty {sizeInGiB = newValue, ..}