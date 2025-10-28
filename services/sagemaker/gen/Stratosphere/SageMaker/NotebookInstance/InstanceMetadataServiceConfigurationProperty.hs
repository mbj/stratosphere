module Stratosphere.SageMaker.NotebookInstance.InstanceMetadataServiceConfigurationProperty (
        InstanceMetadataServiceConfigurationProperty(..),
        mkInstanceMetadataServiceConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data InstanceMetadataServiceConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-notebookinstance-instancemetadataserviceconfiguration.html>
    InstanceMetadataServiceConfigurationProperty {haddock_workaround_ :: (),
                                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-notebookinstance-instancemetadataserviceconfiguration.html#cfn-sagemaker-notebookinstance-instancemetadataserviceconfiguration-minimuminstancemetadataserviceversion>
                                                  minimumInstanceMetadataServiceVersion :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInstanceMetadataServiceConfigurationProperty ::
  Value Prelude.Text -> InstanceMetadataServiceConfigurationProperty
mkInstanceMetadataServiceConfigurationProperty
  minimumInstanceMetadataServiceVersion
  = InstanceMetadataServiceConfigurationProperty
      {haddock_workaround_ = (),
       minimumInstanceMetadataServiceVersion = minimumInstanceMetadataServiceVersion}
instance ToResourceProperties InstanceMetadataServiceConfigurationProperty where
  toResourceProperties
    InstanceMetadataServiceConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::NotebookInstance.InstanceMetadataServiceConfiguration",
         supportsTags = Prelude.False,
         properties = ["MinimumInstanceMetadataServiceVersion"
                         JSON..= minimumInstanceMetadataServiceVersion]}
instance JSON.ToJSON InstanceMetadataServiceConfigurationProperty where
  toJSON InstanceMetadataServiceConfigurationProperty {..}
    = JSON.object
        ["MinimumInstanceMetadataServiceVersion"
           JSON..= minimumInstanceMetadataServiceVersion]
instance Property "MinimumInstanceMetadataServiceVersion" InstanceMetadataServiceConfigurationProperty where
  type PropertyType "MinimumInstanceMetadataServiceVersion" InstanceMetadataServiceConfigurationProperty = Value Prelude.Text
  set newValue InstanceMetadataServiceConfigurationProperty {..}
    = InstanceMetadataServiceConfigurationProperty
        {minimumInstanceMetadataServiceVersion = newValue, ..}