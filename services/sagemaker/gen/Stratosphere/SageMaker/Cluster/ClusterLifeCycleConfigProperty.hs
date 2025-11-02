module Stratosphere.SageMaker.Cluster.ClusterLifeCycleConfigProperty (
        ClusterLifeCycleConfigProperty(..),
        mkClusterLifeCycleConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ClusterLifeCycleConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-cluster-clusterlifecycleconfig.html>
    ClusterLifeCycleConfigProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-cluster-clusterlifecycleconfig.html#cfn-sagemaker-cluster-clusterlifecycleconfig-oncreate>
                                    onCreate :: (Value Prelude.Text),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-cluster-clusterlifecycleconfig.html#cfn-sagemaker-cluster-clusterlifecycleconfig-sources3uri>
                                    sourceS3Uri :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkClusterLifeCycleConfigProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> ClusterLifeCycleConfigProperty
mkClusterLifeCycleConfigProperty onCreate sourceS3Uri
  = ClusterLifeCycleConfigProperty
      {haddock_workaround_ = (), onCreate = onCreate,
       sourceS3Uri = sourceS3Uri}
instance ToResourceProperties ClusterLifeCycleConfigProperty where
  toResourceProperties ClusterLifeCycleConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::Cluster.ClusterLifeCycleConfig",
         supportsTags = Prelude.False,
         properties = ["OnCreate" JSON..= onCreate,
                       "SourceS3Uri" JSON..= sourceS3Uri]}
instance JSON.ToJSON ClusterLifeCycleConfigProperty where
  toJSON ClusterLifeCycleConfigProperty {..}
    = JSON.object
        ["OnCreate" JSON..= onCreate, "SourceS3Uri" JSON..= sourceS3Uri]
instance Property "OnCreate" ClusterLifeCycleConfigProperty where
  type PropertyType "OnCreate" ClusterLifeCycleConfigProperty = Value Prelude.Text
  set newValue ClusterLifeCycleConfigProperty {..}
    = ClusterLifeCycleConfigProperty {onCreate = newValue, ..}
instance Property "SourceS3Uri" ClusterLifeCycleConfigProperty where
  type PropertyType "SourceS3Uri" ClusterLifeCycleConfigProperty = Value Prelude.Text
  set newValue ClusterLifeCycleConfigProperty {..}
    = ClusterLifeCycleConfigProperty {sourceS3Uri = newValue, ..}