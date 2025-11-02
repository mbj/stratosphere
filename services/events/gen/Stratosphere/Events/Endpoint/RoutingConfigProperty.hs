module Stratosphere.Events.Endpoint.RoutingConfigProperty (
        module Exports, RoutingConfigProperty(..), mkRoutingConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Events.Endpoint.FailoverConfigProperty as Exports
import Stratosphere.ResourceProperties
data RoutingConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-endpoint-routingconfig.html>
    RoutingConfigProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-endpoint-routingconfig.html#cfn-events-endpoint-routingconfig-failoverconfig>
                           failoverConfig :: FailoverConfigProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRoutingConfigProperty ::
  FailoverConfigProperty -> RoutingConfigProperty
mkRoutingConfigProperty failoverConfig
  = RoutingConfigProperty
      {haddock_workaround_ = (), failoverConfig = failoverConfig}
instance ToResourceProperties RoutingConfigProperty where
  toResourceProperties RoutingConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Events::Endpoint.RoutingConfig",
         supportsTags = Prelude.False,
         properties = ["FailoverConfig" JSON..= failoverConfig]}
instance JSON.ToJSON RoutingConfigProperty where
  toJSON RoutingConfigProperty {..}
    = JSON.object ["FailoverConfig" JSON..= failoverConfig]
instance Property "FailoverConfig" RoutingConfigProperty where
  type PropertyType "FailoverConfig" RoutingConfigProperty = FailoverConfigProperty
  set newValue RoutingConfigProperty {..}
    = RoutingConfigProperty {failoverConfig = newValue, ..}