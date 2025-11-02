module Stratosphere.SageMaker.Cluster.ClusterInstanceStorageConfigProperty (
        module Exports, ClusterInstanceStorageConfigProperty(..),
        mkClusterInstanceStorageConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.Cluster.ClusterEbsVolumeConfigProperty as Exports
import Stratosphere.ResourceProperties
data ClusterInstanceStorageConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-cluster-clusterinstancestorageconfig.html>
    ClusterInstanceStorageConfigProperty {haddock_workaround_ :: (),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-cluster-clusterinstancestorageconfig.html#cfn-sagemaker-cluster-clusterinstancestorageconfig-ebsvolumeconfig>
                                          ebsVolumeConfig :: (Prelude.Maybe ClusterEbsVolumeConfigProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkClusterInstanceStorageConfigProperty ::
  ClusterInstanceStorageConfigProperty
mkClusterInstanceStorageConfigProperty
  = ClusterInstanceStorageConfigProperty
      {haddock_workaround_ = (), ebsVolumeConfig = Prelude.Nothing}
instance ToResourceProperties ClusterInstanceStorageConfigProperty where
  toResourceProperties ClusterInstanceStorageConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::Cluster.ClusterInstanceStorageConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "EbsVolumeConfig" Prelude.<$> ebsVolumeConfig])}
instance JSON.ToJSON ClusterInstanceStorageConfigProperty where
  toJSON ClusterInstanceStorageConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "EbsVolumeConfig" Prelude.<$> ebsVolumeConfig]))
instance Property "EbsVolumeConfig" ClusterInstanceStorageConfigProperty where
  type PropertyType "EbsVolumeConfig" ClusterInstanceStorageConfigProperty = ClusterEbsVolumeConfigProperty
  set newValue ClusterInstanceStorageConfigProperty {..}
    = ClusterInstanceStorageConfigProperty
        {ebsVolumeConfig = Prelude.pure newValue, ..}