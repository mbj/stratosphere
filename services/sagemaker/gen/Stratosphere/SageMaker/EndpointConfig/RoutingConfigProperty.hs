module Stratosphere.SageMaker.EndpointConfig.RoutingConfigProperty (
        RoutingConfigProperty(..), mkRoutingConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RoutingConfigProperty
  = RoutingConfigProperty {routingStrategy :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRoutingConfigProperty :: RoutingConfigProperty
mkRoutingConfigProperty
  = RoutingConfigProperty {routingStrategy = Prelude.Nothing}
instance ToResourceProperties RoutingConfigProperty where
  toResourceProperties RoutingConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::EndpointConfig.RoutingConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "RoutingStrategy" Prelude.<$> routingStrategy])}
instance JSON.ToJSON RoutingConfigProperty where
  toJSON RoutingConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "RoutingStrategy" Prelude.<$> routingStrategy]))
instance Property "RoutingStrategy" RoutingConfigProperty where
  type PropertyType "RoutingStrategy" RoutingConfigProperty = Value Prelude.Text
  set newValue RoutingConfigProperty {}
    = RoutingConfigProperty
        {routingStrategy = Prelude.pure newValue, ..}