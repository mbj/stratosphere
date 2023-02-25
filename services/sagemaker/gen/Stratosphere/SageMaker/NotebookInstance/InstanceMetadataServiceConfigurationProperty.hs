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
  = InstanceMetadataServiceConfigurationProperty {minimumInstanceMetadataServiceVersion :: (Value Prelude.Text)}
mkInstanceMetadataServiceConfigurationProperty ::
  Value Prelude.Text -> InstanceMetadataServiceConfigurationProperty
mkInstanceMetadataServiceConfigurationProperty
  minimumInstanceMetadataServiceVersion
  = InstanceMetadataServiceConfigurationProperty
      {minimumInstanceMetadataServiceVersion = minimumInstanceMetadataServiceVersion}
instance ToResourceProperties InstanceMetadataServiceConfigurationProperty where
  toResourceProperties
    InstanceMetadataServiceConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::NotebookInstance.InstanceMetadataServiceConfiguration",
         properties = ["MinimumInstanceMetadataServiceVersion"
                         JSON..= minimumInstanceMetadataServiceVersion]}
instance JSON.ToJSON InstanceMetadataServiceConfigurationProperty where
  toJSON InstanceMetadataServiceConfigurationProperty {..}
    = JSON.object
        ["MinimumInstanceMetadataServiceVersion"
           JSON..= minimumInstanceMetadataServiceVersion]
instance Property "MinimumInstanceMetadataServiceVersion" InstanceMetadataServiceConfigurationProperty where
  type PropertyType "MinimumInstanceMetadataServiceVersion" InstanceMetadataServiceConfigurationProperty = Value Prelude.Text
  set newValue InstanceMetadataServiceConfigurationProperty {}
    = InstanceMetadataServiceConfigurationProperty
        {minimumInstanceMetadataServiceVersion = newValue, ..}