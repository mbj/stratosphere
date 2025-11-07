module Stratosphere.SageMaker.Cluster.ClusterAutoScalingConfigProperty (
        ClusterAutoScalingConfigProperty(..),
        mkClusterAutoScalingConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ClusterAutoScalingConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-cluster-clusterautoscalingconfig.html>
    ClusterAutoScalingConfigProperty {haddock_workaround_ :: (),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-cluster-clusterautoscalingconfig.html#cfn-sagemaker-cluster-clusterautoscalingconfig-autoscalertype>
                                      autoScalerType :: (Prelude.Maybe (Value Prelude.Text)),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-cluster-clusterautoscalingconfig.html#cfn-sagemaker-cluster-clusterautoscalingconfig-mode>
                                      mode :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkClusterAutoScalingConfigProperty ::
  Value Prelude.Text -> ClusterAutoScalingConfigProperty
mkClusterAutoScalingConfigProperty mode
  = ClusterAutoScalingConfigProperty
      {haddock_workaround_ = (), mode = mode,
       autoScalerType = Prelude.Nothing}
instance ToResourceProperties ClusterAutoScalingConfigProperty where
  toResourceProperties ClusterAutoScalingConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::Cluster.ClusterAutoScalingConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Mode" JSON..= mode]
                           (Prelude.catMaybes
                              [(JSON..=) "AutoScalerType" Prelude.<$> autoScalerType]))}
instance JSON.ToJSON ClusterAutoScalingConfigProperty where
  toJSON ClusterAutoScalingConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Mode" JSON..= mode]
              (Prelude.catMaybes
                 [(JSON..=) "AutoScalerType" Prelude.<$> autoScalerType])))
instance Property "AutoScalerType" ClusterAutoScalingConfigProperty where
  type PropertyType "AutoScalerType" ClusterAutoScalingConfigProperty = Value Prelude.Text
  set newValue ClusterAutoScalingConfigProperty {..}
    = ClusterAutoScalingConfigProperty
        {autoScalerType = Prelude.pure newValue, ..}
instance Property "Mode" ClusterAutoScalingConfigProperty where
  type PropertyType "Mode" ClusterAutoScalingConfigProperty = Value Prelude.Text
  set newValue ClusterAutoScalingConfigProperty {..}
    = ClusterAutoScalingConfigProperty {mode = newValue, ..}