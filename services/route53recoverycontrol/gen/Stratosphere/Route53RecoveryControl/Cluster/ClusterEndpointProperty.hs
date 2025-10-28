module Stratosphere.Route53RecoveryControl.Cluster.ClusterEndpointProperty (
        ClusterEndpointProperty(..), mkClusterEndpointProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ClusterEndpointProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53recoverycontrol-cluster-clusterendpoint.html>
    ClusterEndpointProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53recoverycontrol-cluster-clusterendpoint.html#cfn-route53recoverycontrol-cluster-clusterendpoint-endpoint>
                             endpoint :: (Prelude.Maybe (Value Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53recoverycontrol-cluster-clusterendpoint.html#cfn-route53recoverycontrol-cluster-clusterendpoint-region>
                             region :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkClusterEndpointProperty :: ClusterEndpointProperty
mkClusterEndpointProperty
  = ClusterEndpointProperty
      {haddock_workaround_ = (), endpoint = Prelude.Nothing,
       region = Prelude.Nothing}
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