module Stratosphere.ImageBuilder.InfrastructureConfiguration.S3LogsProperty (
        S3LogsProperty(..), mkS3LogsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data S3LogsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-infrastructureconfiguration-s3logs.html>
    S3LogsProperty {haddock_workaround_ :: (),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-infrastructureconfiguration-s3logs.html#cfn-imagebuilder-infrastructureconfiguration-s3logs-s3bucketname>
                    s3BucketName :: (Prelude.Maybe (Value Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-infrastructureconfiguration-s3logs.html#cfn-imagebuilder-infrastructureconfiguration-s3logs-s3keyprefix>
                    s3KeyPrefix :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkS3LogsProperty :: S3LogsProperty
mkS3LogsProperty
  = S3LogsProperty
      {haddock_workaround_ = (), s3BucketName = Prelude.Nothing,
       s3KeyPrefix = Prelude.Nothing}
instance ToResourceProperties S3LogsProperty where
  toResourceProperties S3LogsProperty {..}
    = ResourceProperties
        {awsType = "AWS::ImageBuilder::InfrastructureConfiguration.S3Logs",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "S3BucketName" Prelude.<$> s3BucketName,
                            (JSON..=) "S3KeyPrefix" Prelude.<$> s3KeyPrefix])}
instance JSON.ToJSON S3LogsProperty where
  toJSON S3LogsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "S3BucketName" Prelude.<$> s3BucketName,
               (JSON..=) "S3KeyPrefix" Prelude.<$> s3KeyPrefix]))
instance Property "S3BucketName" S3LogsProperty where
  type PropertyType "S3BucketName" S3LogsProperty = Value Prelude.Text
  set newValue S3LogsProperty {..}
    = S3LogsProperty {s3BucketName = Prelude.pure newValue, ..}
instance Property "S3KeyPrefix" S3LogsProperty where
  type PropertyType "S3KeyPrefix" S3LogsProperty = Value Prelude.Text
  set newValue S3LogsProperty {..}
    = S3LogsProperty {s3KeyPrefix = Prelude.pure newValue, ..}