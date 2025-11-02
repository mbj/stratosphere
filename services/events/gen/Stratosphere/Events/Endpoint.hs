module Stratosphere.Events.Endpoint (
        module Exports, Endpoint(..), mkEndpoint
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Events.Endpoint.EndpointEventBusProperty as Exports
import {-# SOURCE #-} Stratosphere.Events.Endpoint.ReplicationConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.Events.Endpoint.RoutingConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Endpoint
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-events-endpoint.html>
    Endpoint {haddock_workaround_ :: (),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-events-endpoint.html#cfn-events-endpoint-description>
              description :: (Prelude.Maybe (Value Prelude.Text)),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-events-endpoint.html#cfn-events-endpoint-eventbuses>
              eventBuses :: [EndpointEventBusProperty],
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-events-endpoint.html#cfn-events-endpoint-name>
              name :: (Prelude.Maybe (Value Prelude.Text)),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-events-endpoint.html#cfn-events-endpoint-replicationconfig>
              replicationConfig :: (Prelude.Maybe ReplicationConfigProperty),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-events-endpoint.html#cfn-events-endpoint-rolearn>
              roleArn :: (Prelude.Maybe (Value Prelude.Text)),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-events-endpoint.html#cfn-events-endpoint-routingconfig>
              routingConfig :: RoutingConfigProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEndpoint ::
  [EndpointEventBusProperty] -> RoutingConfigProperty -> Endpoint
mkEndpoint eventBuses routingConfig
  = Endpoint
      {haddock_workaround_ = (), eventBuses = eventBuses,
       routingConfig = routingConfig, description = Prelude.Nothing,
       name = Prelude.Nothing, replicationConfig = Prelude.Nothing,
       roleArn = Prelude.Nothing}
instance ToResourceProperties Endpoint where
  toResourceProperties Endpoint {..}
    = ResourceProperties
        {awsType = "AWS::Events::Endpoint", supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["EventBuses" JSON..= eventBuses,
                            "RoutingConfig" JSON..= routingConfig]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Name" Prelude.<$> name,
                               (JSON..=) "ReplicationConfig" Prelude.<$> replicationConfig,
                               (JSON..=) "RoleArn" Prelude.<$> roleArn]))}
instance JSON.ToJSON Endpoint where
  toJSON Endpoint {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["EventBuses" JSON..= eventBuses,
               "RoutingConfig" JSON..= routingConfig]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Name" Prelude.<$> name,
                  (JSON..=) "ReplicationConfig" Prelude.<$> replicationConfig,
                  (JSON..=) "RoleArn" Prelude.<$> roleArn])))
instance Property "Description" Endpoint where
  type PropertyType "Description" Endpoint = Value Prelude.Text
  set newValue Endpoint {..}
    = Endpoint {description = Prelude.pure newValue, ..}
instance Property "EventBuses" Endpoint where
  type PropertyType "EventBuses" Endpoint = [EndpointEventBusProperty]
  set newValue Endpoint {..} = Endpoint {eventBuses = newValue, ..}
instance Property "Name" Endpoint where
  type PropertyType "Name" Endpoint = Value Prelude.Text
  set newValue Endpoint {..}
    = Endpoint {name = Prelude.pure newValue, ..}
instance Property "ReplicationConfig" Endpoint where
  type PropertyType "ReplicationConfig" Endpoint = ReplicationConfigProperty
  set newValue Endpoint {..}
    = Endpoint {replicationConfig = Prelude.pure newValue, ..}
instance Property "RoleArn" Endpoint where
  type PropertyType "RoleArn" Endpoint = Value Prelude.Text
  set newValue Endpoint {..}
    = Endpoint {roleArn = Prelude.pure newValue, ..}
instance Property "RoutingConfig" Endpoint where
  type PropertyType "RoutingConfig" Endpoint = RoutingConfigProperty
  set newValue Endpoint {..}
    = Endpoint {routingConfig = newValue, ..}