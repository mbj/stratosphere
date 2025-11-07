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
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-cluster-clusterebsvolumeconfig.html#cfn-sagemaker-cluster-clusterebsvolumeconfig-rootvolume>
                                    rootVolume :: (Prelude.Maybe (Value Prelude.Bool)),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-cluster-clusterebsvolumeconfig.html#cfn-sagemaker-cluster-clusterebsvolumeconfig-volumekmskeyid>
                                    volumeKmsKeyId :: (Prelude.Maybe (Value Prelude.Text)),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-cluster-clusterebsvolumeconfig.html#cfn-sagemaker-cluster-clusterebsvolumeconfig-volumesizeingb>
                                    volumeSizeInGB :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkClusterEbsVolumeConfigProperty :: ClusterEbsVolumeConfigProperty
mkClusterEbsVolumeConfigProperty
  = ClusterEbsVolumeConfigProperty
      {haddock_workaround_ = (), rootVolume = Prelude.Nothing,
       volumeKmsKeyId = Prelude.Nothing, volumeSizeInGB = Prelude.Nothing}
instance ToResourceProperties ClusterEbsVolumeConfigProperty where
  toResourceProperties ClusterEbsVolumeConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::Cluster.ClusterEbsVolumeConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "RootVolume" Prelude.<$> rootVolume,
                            (JSON..=) "VolumeKmsKeyId" Prelude.<$> volumeKmsKeyId,
                            (JSON..=) "VolumeSizeInGB" Prelude.<$> volumeSizeInGB])}
instance JSON.ToJSON ClusterEbsVolumeConfigProperty where
  toJSON ClusterEbsVolumeConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "RootVolume" Prelude.<$> rootVolume,
               (JSON..=) "VolumeKmsKeyId" Prelude.<$> volumeKmsKeyId,
               (JSON..=) "VolumeSizeInGB" Prelude.<$> volumeSizeInGB]))
instance Property "RootVolume" ClusterEbsVolumeConfigProperty where
  type PropertyType "RootVolume" ClusterEbsVolumeConfigProperty = Value Prelude.Bool
  set newValue ClusterEbsVolumeConfigProperty {..}
    = ClusterEbsVolumeConfigProperty
        {rootVolume = Prelude.pure newValue, ..}
instance Property "VolumeKmsKeyId" ClusterEbsVolumeConfigProperty where
  type PropertyType "VolumeKmsKeyId" ClusterEbsVolumeConfigProperty = Value Prelude.Text
  set newValue ClusterEbsVolumeConfigProperty {..}
    = ClusterEbsVolumeConfigProperty
        {volumeKmsKeyId = Prelude.pure newValue, ..}
instance Property "VolumeSizeInGB" ClusterEbsVolumeConfigProperty where
  type PropertyType "VolumeSizeInGB" ClusterEbsVolumeConfigProperty = Value Prelude.Integer
  set newValue ClusterEbsVolumeConfigProperty {..}
    = ClusterEbsVolumeConfigProperty
        {volumeSizeInGB = Prelude.pure newValue, ..}