module Stratosphere.Events.Endpoint.SecondaryProperty (
        SecondaryProperty(..), mkSecondaryProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SecondaryProperty
  = SecondaryProperty {route :: (Value Prelude.Text)}
mkSecondaryProperty :: Value Prelude.Text -> SecondaryProperty
mkSecondaryProperty route = SecondaryProperty {route = route}
instance ToResourceProperties SecondaryProperty where
  toResourceProperties SecondaryProperty {..}
    = ResourceProperties
        {awsType = "AWS::Events::Endpoint.Secondary",
         supportsTags = Prelude.False, properties = ["Route" JSON..= route]}
instance JSON.ToJSON SecondaryProperty where
  toJSON SecondaryProperty {..} = JSON.object ["Route" JSON..= route]
instance Property "Route" SecondaryProperty where
  type PropertyType "Route" SecondaryProperty = Value Prelude.Text
  set newValue SecondaryProperty {}
    = SecondaryProperty {route = newValue, ..}