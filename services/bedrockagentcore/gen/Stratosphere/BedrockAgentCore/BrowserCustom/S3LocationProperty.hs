module Stratosphere.BedrockAgentCore.BrowserCustom.S3LocationProperty (
        S3LocationProperty(..), mkS3LocationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data S3LocationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-browsercustom-s3location.html>
    S3LocationProperty {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-browsercustom-s3location.html#cfn-bedrockagentcore-browsercustom-s3location-bucket>
                        bucket :: (Value Prelude.Text),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-browsercustom-s3location.html#cfn-bedrockagentcore-browsercustom-s3location-prefix>
                        prefix :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkS3LocationProperty ::
  Value Prelude.Text -> Value Prelude.Text -> S3LocationProperty
mkS3LocationProperty bucket prefix
  = S3LocationProperty
      {haddock_workaround_ = (), bucket = bucket, prefix = prefix}
instance ToResourceProperties S3LocationProperty where
  toResourceProperties S3LocationProperty {..}
    = ResourceProperties
        {awsType = "AWS::BedrockAgentCore::BrowserCustom.S3Location",
         supportsTags = Prelude.False,
         properties = ["Bucket" JSON..= bucket, "Prefix" JSON..= prefix]}
instance JSON.ToJSON S3LocationProperty where
  toJSON S3LocationProperty {..}
    = JSON.object ["Bucket" JSON..= bucket, "Prefix" JSON..= prefix]
instance Property "Bucket" S3LocationProperty where
  type PropertyType "Bucket" S3LocationProperty = Value Prelude.Text
  set newValue S3LocationProperty {..}
    = S3LocationProperty {bucket = newValue, ..}
instance Property "Prefix" S3LocationProperty where
  type PropertyType "Prefix" S3LocationProperty = Value Prelude.Text
  set newValue S3LocationProperty {..}
    = S3LocationProperty {prefix = newValue, ..}