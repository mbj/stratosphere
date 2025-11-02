module Stratosphere.Batch.ComputeEnvironment.EksConfigurationProperty (
        EksConfigurationProperty(..), mkEksConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EksConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-computeenvironment-eksconfiguration.html>
    EksConfigurationProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-computeenvironment-eksconfiguration.html#cfn-batch-computeenvironment-eksconfiguration-eksclusterarn>
                              eksClusterArn :: (Value Prelude.Text),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-computeenvironment-eksconfiguration.html#cfn-batch-computeenvironment-eksconfiguration-kubernetesnamespace>
                              kubernetesNamespace :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEksConfigurationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> EksConfigurationProperty
mkEksConfigurationProperty eksClusterArn kubernetesNamespace
  = EksConfigurationProperty
      {haddock_workaround_ = (), eksClusterArn = eksClusterArn,
       kubernetesNamespace = kubernetesNamespace}
instance ToResourceProperties EksConfigurationProperty where
  toResourceProperties EksConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Batch::ComputeEnvironment.EksConfiguration",
         supportsTags = Prelude.False,
         properties = ["EksClusterArn" JSON..= eksClusterArn,
                       "KubernetesNamespace" JSON..= kubernetesNamespace]}
instance JSON.ToJSON EksConfigurationProperty where
  toJSON EksConfigurationProperty {..}
    = JSON.object
        ["EksClusterArn" JSON..= eksClusterArn,
         "KubernetesNamespace" JSON..= kubernetesNamespace]
instance Property "EksClusterArn" EksConfigurationProperty where
  type PropertyType "EksClusterArn" EksConfigurationProperty = Value Prelude.Text
  set newValue EksConfigurationProperty {..}
    = EksConfigurationProperty {eksClusterArn = newValue, ..}
instance Property "KubernetesNamespace" EksConfigurationProperty where
  type PropertyType "KubernetesNamespace" EksConfigurationProperty = Value Prelude.Text
  set newValue EksConfigurationProperty {..}
    = EksConfigurationProperty {kubernetesNamespace = newValue, ..}