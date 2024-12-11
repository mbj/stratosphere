module Stratosphere.Bedrock.FlowVersion.StorageFlowNodeS3ConfigurationProperty (
        StorageFlowNodeS3ConfigurationProperty(..),
        mkStorageFlowNodeS3ConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data StorageFlowNodeS3ConfigurationProperty
  = StorageFlowNodeS3ConfigurationProperty {bucketName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkStorageFlowNodeS3ConfigurationProperty ::
  Value Prelude.Text -> StorageFlowNodeS3ConfigurationProperty
mkStorageFlowNodeS3ConfigurationProperty bucketName
  = StorageFlowNodeS3ConfigurationProperty {bucketName = bucketName}
instance ToResourceProperties StorageFlowNodeS3ConfigurationProperty where
  toResourceProperties StorageFlowNodeS3ConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::FlowVersion.StorageFlowNodeS3Configuration",
         supportsTags = Prelude.False,
         properties = ["BucketName" JSON..= bucketName]}
instance JSON.ToJSON StorageFlowNodeS3ConfigurationProperty where
  toJSON StorageFlowNodeS3ConfigurationProperty {..}
    = JSON.object ["BucketName" JSON..= bucketName]
instance Property "BucketName" StorageFlowNodeS3ConfigurationProperty where
  type PropertyType "BucketName" StorageFlowNodeS3ConfigurationProperty = Value Prelude.Text
  set newValue StorageFlowNodeS3ConfigurationProperty {}
    = StorageFlowNodeS3ConfigurationProperty
        {bucketName = newValue, ..}