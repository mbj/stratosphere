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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-cluster-clusterorchestratoreksconfig.html>
    ClusterOrchestratorEksConfigProperty {haddock_workaround_ :: (),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-cluster-clusterorchestratoreksconfig.html#cfn-sagemaker-cluster-clusterorchestratoreksconfig-clusterarn>
                                          clusterArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkClusterOrchestratorEksConfigProperty ::
  Value Prelude.Text -> ClusterOrchestratorEksConfigProperty
mkClusterOrchestratorEksConfigProperty clusterArn
  = ClusterOrchestratorEksConfigProperty
      {haddock_workaround_ = (), clusterArn = clusterArn}
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
  set newValue ClusterOrchestratorEksConfigProperty {..}
    = ClusterOrchestratorEksConfigProperty {clusterArn = newValue, ..}