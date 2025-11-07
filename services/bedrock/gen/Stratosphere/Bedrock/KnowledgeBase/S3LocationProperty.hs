module Stratosphere.Bedrock.KnowledgeBase.S3LocationProperty (
        S3LocationProperty(..), mkS3LocationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data S3LocationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-knowledgebase-s3location.html>
    S3LocationProperty {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-knowledgebase-s3location.html#cfn-bedrock-knowledgebase-s3location-uri>
                        uRI :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkS3LocationProperty :: Value Prelude.Text -> S3LocationProperty
mkS3LocationProperty uRI
  = S3LocationProperty {haddock_workaround_ = (), uRI = uRI}
instance ToResourceProperties S3LocationProperty where
  toResourceProperties S3LocationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::KnowledgeBase.S3Location",
         supportsTags = Prelude.False, properties = ["URI" JSON..= uRI]}
instance JSON.ToJSON S3LocationProperty where
  toJSON S3LocationProperty {..} = JSON.object ["URI" JSON..= uRI]
instance Property "URI" S3LocationProperty where
  type PropertyType "URI" S3LocationProperty = Value Prelude.Text
  set newValue S3LocationProperty {..}
    = S3LocationProperty {uRI = newValue, ..}