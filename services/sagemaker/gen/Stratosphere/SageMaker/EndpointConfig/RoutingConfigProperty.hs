module Stratosphere.SageMaker.EndpointConfig.RoutingConfigProperty (
        RoutingConfigProperty(..), mkRoutingConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RoutingConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-endpointconfig-productionvariant-routingconfig.html>
    RoutingConfigProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-endpointconfig-productionvariant-routingconfig.html#cfn-sagemaker-endpointconfig-productionvariant-routingconfig-routingstrategy>
                           routingStrategy :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRoutingConfigProperty :: RoutingConfigProperty
mkRoutingConfigProperty
  = RoutingConfigProperty
      {haddock_workaround_ = (), routingStrategy = Prelude.Nothing}
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
  set newValue RoutingConfigProperty {..}
    = RoutingConfigProperty
        {routingStrategy = Prelude.pure newValue, ..}