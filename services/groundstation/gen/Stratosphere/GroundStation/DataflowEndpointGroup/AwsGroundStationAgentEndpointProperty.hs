module Stratosphere.GroundStation.DataflowEndpointGroup.AwsGroundStationAgentEndpointProperty (
        module Exports, AwsGroundStationAgentEndpointProperty(..),
        mkAwsGroundStationAgentEndpointProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.GroundStation.DataflowEndpointGroup.ConnectionDetailsProperty as Exports
import {-# SOURCE #-} Stratosphere.GroundStation.DataflowEndpointGroup.RangedConnectionDetailsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AwsGroundStationAgentEndpointProperty
  = AwsGroundStationAgentEndpointProperty {agentStatus :: (Prelude.Maybe (Value Prelude.Text)),
                                           auditResults :: (Prelude.Maybe (Value Prelude.Text)),
                                           egressAddress :: (Prelude.Maybe ConnectionDetailsProperty),
                                           ingressAddress :: (Prelude.Maybe RangedConnectionDetailsProperty),
                                           name :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAwsGroundStationAgentEndpointProperty ::
  AwsGroundStationAgentEndpointProperty
mkAwsGroundStationAgentEndpointProperty
  = AwsGroundStationAgentEndpointProperty
      {agentStatus = Prelude.Nothing, auditResults = Prelude.Nothing,
       egressAddress = Prelude.Nothing, ingressAddress = Prelude.Nothing,
       name = Prelude.Nothing}
instance ToResourceProperties AwsGroundStationAgentEndpointProperty where
  toResourceProperties AwsGroundStationAgentEndpointProperty {..}
    = ResourceProperties
        {awsType = "AWS::GroundStation::DataflowEndpointGroup.AwsGroundStationAgentEndpoint",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AgentStatus" Prelude.<$> agentStatus,
                            (JSON..=) "AuditResults" Prelude.<$> auditResults,
                            (JSON..=) "EgressAddress" Prelude.<$> egressAddress,
                            (JSON..=) "IngressAddress" Prelude.<$> ingressAddress,
                            (JSON..=) "Name" Prelude.<$> name])}
instance JSON.ToJSON AwsGroundStationAgentEndpointProperty where
  toJSON AwsGroundStationAgentEndpointProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AgentStatus" Prelude.<$> agentStatus,
               (JSON..=) "AuditResults" Prelude.<$> auditResults,
               (JSON..=) "EgressAddress" Prelude.<$> egressAddress,
               (JSON..=) "IngressAddress" Prelude.<$> ingressAddress,
               (JSON..=) "Name" Prelude.<$> name]))
instance Property "AgentStatus" AwsGroundStationAgentEndpointProperty where
  type PropertyType "AgentStatus" AwsGroundStationAgentEndpointProperty = Value Prelude.Text
  set newValue AwsGroundStationAgentEndpointProperty {..}
    = AwsGroundStationAgentEndpointProperty
        {agentStatus = Prelude.pure newValue, ..}
instance Property "AuditResults" AwsGroundStationAgentEndpointProperty where
  type PropertyType "AuditResults" AwsGroundStationAgentEndpointProperty = Value Prelude.Text
  set newValue AwsGroundStationAgentEndpointProperty {..}
    = AwsGroundStationAgentEndpointProperty
        {auditResults = Prelude.pure newValue, ..}
instance Property "EgressAddress" AwsGroundStationAgentEndpointProperty where
  type PropertyType "EgressAddress" AwsGroundStationAgentEndpointProperty = ConnectionDetailsProperty
  set newValue AwsGroundStationAgentEndpointProperty {..}
    = AwsGroundStationAgentEndpointProperty
        {egressAddress = Prelude.pure newValue, ..}
instance Property "IngressAddress" AwsGroundStationAgentEndpointProperty where
  type PropertyType "IngressAddress" AwsGroundStationAgentEndpointProperty = RangedConnectionDetailsProperty
  set newValue AwsGroundStationAgentEndpointProperty {..}
    = AwsGroundStationAgentEndpointProperty
        {ingressAddress = Prelude.pure newValue, ..}
instance Property "Name" AwsGroundStationAgentEndpointProperty where
  type PropertyType "Name" AwsGroundStationAgentEndpointProperty = Value Prelude.Text
  set newValue AwsGroundStationAgentEndpointProperty {..}
    = AwsGroundStationAgentEndpointProperty
        {name = Prelude.pure newValue, ..}