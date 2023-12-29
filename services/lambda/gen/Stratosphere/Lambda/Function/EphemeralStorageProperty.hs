module Stratosphere.Lambda.Function.EphemeralStorageProperty (
        EphemeralStorageProperty(..), mkEphemeralStorageProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EphemeralStorageProperty
  = EphemeralStorageProperty {size :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEphemeralStorageProperty ::
  Value Prelude.Integer -> EphemeralStorageProperty
mkEphemeralStorageProperty size
  = EphemeralStorageProperty {size = size}
instance ToResourceProperties EphemeralStorageProperty where
  toResourceProperties EphemeralStorageProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lambda::Function.EphemeralStorage",
         supportsTags = Prelude.False, properties = ["Size" JSON..= size]}
instance JSON.ToJSON EphemeralStorageProperty where
  toJSON EphemeralStorageProperty {..}
    = JSON.object ["Size" JSON..= size]
instance Property "Size" EphemeralStorageProperty where
  type PropertyType "Size" EphemeralStorageProperty = Value Prelude.Integer
  set newValue EphemeralStorageProperty {}
    = EphemeralStorageProperty {size = newValue, ..}