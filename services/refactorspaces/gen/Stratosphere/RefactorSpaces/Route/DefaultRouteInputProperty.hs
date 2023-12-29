module Stratosphere.RefactorSpaces.Route.DefaultRouteInputProperty (
        DefaultRouteInputProperty(..), mkDefaultRouteInputProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DefaultRouteInputProperty
  = DefaultRouteInputProperty {activationState :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDefaultRouteInputProperty ::
  Value Prelude.Text -> DefaultRouteInputProperty
mkDefaultRouteInputProperty activationState
  = DefaultRouteInputProperty {activationState = activationState}
instance ToResourceProperties DefaultRouteInputProperty where
  toResourceProperties DefaultRouteInputProperty {..}
    = ResourceProperties
        {awsType = "AWS::RefactorSpaces::Route.DefaultRouteInput",
         supportsTags = Prelude.False,
         properties = ["ActivationState" JSON..= activationState]}
instance JSON.ToJSON DefaultRouteInputProperty where
  toJSON DefaultRouteInputProperty {..}
    = JSON.object ["ActivationState" JSON..= activationState]
instance Property "ActivationState" DefaultRouteInputProperty where
  type PropertyType "ActivationState" DefaultRouteInputProperty = Value Prelude.Text
  set newValue DefaultRouteInputProperty {}
    = DefaultRouteInputProperty {activationState = newValue, ..}