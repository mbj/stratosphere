module Stratosphere.Lambda.EventInvokeConfig.OnFailureProperty (
        OnFailureProperty(..), mkOnFailureProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OnFailureProperty
  = OnFailureProperty {destination :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOnFailureProperty :: Value Prelude.Text -> OnFailureProperty
mkOnFailureProperty destination
  = OnFailureProperty {destination = destination}
instance ToResourceProperties OnFailureProperty where
  toResourceProperties OnFailureProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lambda::EventInvokeConfig.OnFailure",
         supportsTags = Prelude.False,
         properties = ["Destination" JSON..= destination]}
instance JSON.ToJSON OnFailureProperty where
  toJSON OnFailureProperty {..}
    = JSON.object ["Destination" JSON..= destination]
instance Property "Destination" OnFailureProperty where
  type PropertyType "Destination" OnFailureProperty = Value Prelude.Text
  set newValue OnFailureProperty {}
    = OnFailureProperty {destination = newValue, ..}