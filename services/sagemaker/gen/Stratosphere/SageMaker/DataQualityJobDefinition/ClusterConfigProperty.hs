module Stratosphere.SageMaker.DataQualityJobDefinition.ClusterConfigProperty (
        ClusterConfigProperty(..), mkClusterConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ClusterConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-dataqualityjobdefinition-clusterconfig.html>
    ClusterConfigProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-dataqualityjobdefinition-clusterconfig.html#cfn-sagemaker-dataqualityjobdefinition-clusterconfig-instancecount>
                           instanceCount :: (Value Prelude.Integer),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-dataqualityjobdefinition-clusterconfig.html#cfn-sagemaker-dataqualityjobdefinition-clusterconfig-instancetype>
                           instanceType :: (Value Prelude.Text),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-dataqualityjobdefinition-clusterconfig.html#cfn-sagemaker-dataqualityjobdefinition-clusterconfig-volumekmskeyid>
                           volumeKmsKeyId :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-dataqualityjobdefinition-clusterconfig.html#cfn-sagemaker-dataqualityjobdefinition-clusterconfig-volumesizeingb>
                           volumeSizeInGB :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkClusterConfigProperty ::
  Value Prelude.Integer
  -> Value Prelude.Text
     -> Value Prelude.Integer -> ClusterConfigProperty
mkClusterConfigProperty instanceCount instanceType volumeSizeInGB
  = ClusterConfigProperty
      {haddock_workaround_ = (), instanceCount = instanceCount,
       instanceType = instanceType, volumeSizeInGB = volumeSizeInGB,
       volumeKmsKeyId = Prelude.Nothing}
instance ToResourceProperties ClusterConfigProperty where
  toResourceProperties ClusterConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::DataQualityJobDefinition.ClusterConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["InstanceCount" JSON..= instanceCount,
                            "InstanceType" JSON..= instanceType,
                            "VolumeSizeInGB" JSON..= volumeSizeInGB]
                           (Prelude.catMaybes
                              [(JSON..=) "VolumeKmsKeyId" Prelude.<$> volumeKmsKeyId]))}
instance JSON.ToJSON ClusterConfigProperty where
  toJSON ClusterConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["InstanceCount" JSON..= instanceCount,
               "InstanceType" JSON..= instanceType,
               "VolumeSizeInGB" JSON..= volumeSizeInGB]
              (Prelude.catMaybes
                 [(JSON..=) "VolumeKmsKeyId" Prelude.<$> volumeKmsKeyId])))
instance Property "InstanceCount" ClusterConfigProperty where
  type PropertyType "InstanceCount" ClusterConfigProperty = Value Prelude.Integer
  set newValue ClusterConfigProperty {..}
    = ClusterConfigProperty {instanceCount = newValue, ..}
instance Property "InstanceType" ClusterConfigProperty where
  type PropertyType "InstanceType" ClusterConfigProperty = Value Prelude.Text
  set newValue ClusterConfigProperty {..}
    = ClusterConfigProperty {instanceType = newValue, ..}
instance Property "VolumeKmsKeyId" ClusterConfigProperty where
  type PropertyType "VolumeKmsKeyId" ClusterConfigProperty = Value Prelude.Text
  set newValue ClusterConfigProperty {..}
    = ClusterConfigProperty
        {volumeKmsKeyId = Prelude.pure newValue, ..}
instance Property "VolumeSizeInGB" ClusterConfigProperty where
  type PropertyType "VolumeSizeInGB" ClusterConfigProperty = Value Prelude.Integer
  set newValue ClusterConfigProperty {..}
    = ClusterConfigProperty {volumeSizeInGB = newValue, ..}