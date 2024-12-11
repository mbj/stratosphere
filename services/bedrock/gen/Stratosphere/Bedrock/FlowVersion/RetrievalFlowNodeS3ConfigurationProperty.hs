module Stratosphere.Bedrock.FlowVersion.RetrievalFlowNodeS3ConfigurationProperty (
        RetrievalFlowNodeS3ConfigurationProperty(..),
        mkRetrievalFlowNodeS3ConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RetrievalFlowNodeS3ConfigurationProperty
  = RetrievalFlowNodeS3ConfigurationProperty {bucketName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRetrievalFlowNodeS3ConfigurationProperty ::
  Value Prelude.Text -> RetrievalFlowNodeS3ConfigurationProperty
mkRetrievalFlowNodeS3ConfigurationProperty bucketName
  = RetrievalFlowNodeS3ConfigurationProperty
      {bucketName = bucketName}
instance ToResourceProperties RetrievalFlowNodeS3ConfigurationProperty where
  toResourceProperties RetrievalFlowNodeS3ConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::FlowVersion.RetrievalFlowNodeS3Configuration",
         supportsTags = Prelude.False,
         properties = ["BucketName" JSON..= bucketName]}
instance JSON.ToJSON RetrievalFlowNodeS3ConfigurationProperty where
  toJSON RetrievalFlowNodeS3ConfigurationProperty {..}
    = JSON.object ["BucketName" JSON..= bucketName]
instance Property "BucketName" RetrievalFlowNodeS3ConfigurationProperty where
  type PropertyType "BucketName" RetrievalFlowNodeS3ConfigurationProperty = Value Prelude.Text
  set newValue RetrievalFlowNodeS3ConfigurationProperty {}
    = RetrievalFlowNodeS3ConfigurationProperty
        {bucketName = newValue, ..}