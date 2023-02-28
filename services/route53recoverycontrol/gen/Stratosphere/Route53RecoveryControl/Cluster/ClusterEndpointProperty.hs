module Stratosphere.Route53RecoveryControl.Cluster.ClusterEndpointProperty (
        ClusterEndpointProperty(..), mkClusterEndpointProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ClusterEndpointProperty
  = ClusterEndpointProperty {endpoint :: (Prelude.Maybe (Value Prelude.Text)),
                             region :: (Prelude.Maybe (Value Prelude.Text))}
mkClusterEndpointProperty :: ClusterEndpointProperty
mkClusterEndpointProperty
  = ClusterEndpointProperty
      {endpoint = Prelude.Nothing, region = Prelude.Nothing}
instance ToResourceProperties ClusterEndpointProperty where
  toResourceProperties ClusterEndpointProperty {..}
    = ResourceProperties
        {awsType = "AWS::Route53RecoveryControl::Cluster.ClusterEndpoint",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Endpoint" Prelude.<$> endpoint,
                            (JSON..=) "Region" Prelude.<$> region])}
instance JSON.ToJSON ClusterEndpointProperty where
  toJSON ClusterEndpointProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Endpoint" Prelude.<$> endpoint,
               (JSON..=) "Region" Prelude.<$> region]))
instance Property "Endpoint" ClusterEndpointProperty where
  type PropertyType "Endpoint" ClusterEndpointProperty = Value Prelude.Text
  set newValue ClusterEndpointProperty {..}
    = ClusterEndpointProperty {endpoint = Prelude.pure newValue, ..}
instance Property "Region" ClusterEndpointProperty where
  type PropertyType "Region" ClusterEndpointProperty = Value Prelude.Text
  set newValue ClusterEndpointProperty {..}
    = ClusterEndpointProperty {region = Prelude.pure newValue, ..}