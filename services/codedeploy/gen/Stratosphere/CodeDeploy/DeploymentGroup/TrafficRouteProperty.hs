module Stratosphere.CodeDeploy.DeploymentGroup.TrafficRouteProperty (
        TrafficRouteProperty(..), mkTrafficRouteProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TrafficRouteProperty
  = TrafficRouteProperty {listenerArns :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTrafficRouteProperty :: TrafficRouteProperty
mkTrafficRouteProperty
  = TrafficRouteProperty {listenerArns = Prelude.Nothing}
instance ToResourceProperties TrafficRouteProperty where
  toResourceProperties TrafficRouteProperty {..}
    = ResourceProperties
        {awsType = "AWS::CodeDeploy::DeploymentGroup.TrafficRoute",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ListenerArns" Prelude.<$> listenerArns])}
instance JSON.ToJSON TrafficRouteProperty where
  toJSON TrafficRouteProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ListenerArns" Prelude.<$> listenerArns]))
instance Property "ListenerArns" TrafficRouteProperty where
  type PropertyType "ListenerArns" TrafficRouteProperty = ValueList Prelude.Text
  set newValue TrafficRouteProperty {}
    = TrafficRouteProperty {listenerArns = Prelude.pure newValue, ..}