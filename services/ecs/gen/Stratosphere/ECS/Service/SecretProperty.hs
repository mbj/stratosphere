module Stratosphere.ECS.Service.SecretProperty (
        SecretProperty(..), mkSecretProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SecretProperty
  = SecretProperty {name :: (Value Prelude.Text),
                    valueFrom :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSecretProperty ::
  Value Prelude.Text -> Value Prelude.Text -> SecretProperty
mkSecretProperty name valueFrom
  = SecretProperty {name = name, valueFrom = valueFrom}
instance ToResourceProperties SecretProperty where
  toResourceProperties SecretProperty {..}
    = ResourceProperties
        {awsType = "AWS::ECS::Service.Secret",
         supportsTags = Prelude.False,
         properties = ["Name" JSON..= name, "ValueFrom" JSON..= valueFrom]}
instance JSON.ToJSON SecretProperty where
  toJSON SecretProperty {..}
    = JSON.object ["Name" JSON..= name, "ValueFrom" JSON..= valueFrom]
instance Property "Name" SecretProperty where
  type PropertyType "Name" SecretProperty = Value Prelude.Text
  set newValue SecretProperty {..}
    = SecretProperty {name = newValue, ..}
instance Property "ValueFrom" SecretProperty where
  type PropertyType "ValueFrom" SecretProperty = Value Prelude.Text
  set newValue SecretProperty {..}
    = SecretProperty {valueFrom = newValue, ..}