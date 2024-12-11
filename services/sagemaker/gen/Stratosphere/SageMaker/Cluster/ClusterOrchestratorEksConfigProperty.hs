module Stratosphere.SageMaker.Cluster.ClusterOrchestratorEksConfigProperty (
        ClusterOrchestratorEksConfigProperty(..),
        mkClusterOrchestratorEksConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ClusterOrchestratorEksConfigProperty
  = ClusterOrchestratorEksConfigProperty {clusterArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkClusterOrchestratorEksConfigProperty ::
  Value Prelude.Text -> ClusterOrchestratorEksConfigProperty
mkClusterOrchestratorEksConfigProperty clusterArn
  = ClusterOrchestratorEksConfigProperty {clusterArn = clusterArn}
instance ToResourceProperties ClusterOrchestratorEksConfigProperty where
  toResourceProperties ClusterOrchestratorEksConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::Cluster.ClusterOrchestratorEksConfig",
         supportsTags = Prelude.False,
         properties = ["ClusterArn" JSON..= clusterArn]}
instance JSON.ToJSON ClusterOrchestratorEksConfigProperty where
  toJSON ClusterOrchestratorEksConfigProperty {..}
    = JSON.object ["ClusterArn" JSON..= clusterArn]
instance Property "ClusterArn" ClusterOrchestratorEksConfigProperty where
  type PropertyType "ClusterArn" ClusterOrchestratorEksConfigProperty = Value Prelude.Text
  set newValue ClusterOrchestratorEksConfigProperty {}
    = ClusterOrchestratorEksConfigProperty {clusterArn = newValue, ..}