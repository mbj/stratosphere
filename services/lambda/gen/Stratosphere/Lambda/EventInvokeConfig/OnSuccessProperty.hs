module Stratosphere.Lambda.EventInvokeConfig.OnSuccessProperty (
        OnSuccessProperty(..), mkOnSuccessProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OnSuccessProperty
  = OnSuccessProperty {destination :: (Value Prelude.Text)}
mkOnSuccessProperty :: Value Prelude.Text -> OnSuccessProperty
mkOnSuccessProperty destination
  = OnSuccessProperty {destination = destination}
instance ToResourceProperties OnSuccessProperty where
  toResourceProperties OnSuccessProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lambda::EventInvokeConfig.OnSuccess",
         supportsTags = Prelude.False,
         properties = ["Destination" JSON..= destination]}
instance JSON.ToJSON OnSuccessProperty where
  toJSON OnSuccessProperty {..}
    = JSON.object ["Destination" JSON..= destination]
instance Property "Destination" OnSuccessProperty where
  type PropertyType "Destination" OnSuccessProperty = Value Prelude.Text
  set newValue OnSuccessProperty {}
    = OnSuccessProperty {destination = newValue, ..}