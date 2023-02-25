module Stratosphere.Events.Endpoint.RoutingConfigProperty (
        module Exports, RoutingConfigProperty(..), mkRoutingConfigProperty
    ) where
import qualified Data.Aeson as JSON
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Events.Endpoint.FailoverConfigProperty as Exports
import Stratosphere.ResourceProperties
data RoutingConfigProperty
  = RoutingConfigProperty {failoverConfig :: FailoverConfigProperty}
mkRoutingConfigProperty ::
  FailoverConfigProperty -> RoutingConfigProperty
mkRoutingConfigProperty failoverConfig
  = RoutingConfigProperty {failoverConfig = failoverConfig}
instance ToResourceProperties RoutingConfigProperty where
  toResourceProperties RoutingConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Events::Endpoint.RoutingConfig",
         properties = ["FailoverConfig" JSON..= failoverConfig]}
instance JSON.ToJSON RoutingConfigProperty where
  toJSON RoutingConfigProperty {..}
    = JSON.object ["FailoverConfig" JSON..= failoverConfig]
instance Property "FailoverConfig" RoutingConfigProperty where
  type PropertyType "FailoverConfig" RoutingConfigProperty = FailoverConfigProperty
  set newValue RoutingConfigProperty {}
    = RoutingConfigProperty {failoverConfig = newValue, ..}