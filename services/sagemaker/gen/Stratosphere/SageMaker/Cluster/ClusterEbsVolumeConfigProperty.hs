module Stratosphere.SageMaker.Cluster.ClusterEbsVolumeConfigProperty (
        ClusterEbsVolumeConfigProperty(..),
        mkClusterEbsVolumeConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ClusterEbsVolumeConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-cluster-clusterebsvolumeconfig.html>
    ClusterEbsVolumeConfigProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-cluster-clusterebsvolumeconfig.html#cfn-sagemaker-cluster-clusterebsvolumeconfig-volumesizeingb>
                                    volumeSizeInGB :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkClusterEbsVolumeConfigProperty :: ClusterEbsVolumeConfigProperty
mkClusterEbsVolumeConfigProperty
  = ClusterEbsVolumeConfigProperty
      {haddock_workaround_ = (), volumeSizeInGB = Prelude.Nothing}
instance ToResourceProperties ClusterEbsVolumeConfigProperty where
  toResourceProperties ClusterEbsVolumeConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::Cluster.ClusterEbsVolumeConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "VolumeSizeInGB" Prelude.<$> volumeSizeInGB])}
instance JSON.ToJSON ClusterEbsVolumeConfigProperty where
  toJSON ClusterEbsVolumeConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "VolumeSizeInGB" Prelude.<$> volumeSizeInGB]))
instance Property "VolumeSizeInGB" ClusterEbsVolumeConfigProperty where
  type PropertyType "VolumeSizeInGB" ClusterEbsVolumeConfigProperty = Value Prelude.Integer
  set newValue ClusterEbsVolumeConfigProperty {..}
    = ClusterEbsVolumeConfigProperty
        {volumeSizeInGB = Prelude.pure newValue, ..}