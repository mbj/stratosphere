module Stratosphere.RoboMaker.RobotApplication.SourceConfigProperty (
        SourceConfigProperty(..), mkSourceConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SourceConfigProperty
  = SourceConfigProperty {architecture :: (Value Prelude.Text),
                          s3Bucket :: (Value Prelude.Text),
                          s3Key :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSourceConfigProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> SourceConfigProperty
mkSourceConfigProperty architecture s3Bucket s3Key
  = SourceConfigProperty
      {architecture = architecture, s3Bucket = s3Bucket, s3Key = s3Key}
instance ToResourceProperties SourceConfigProperty where
  toResourceProperties SourceConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::RoboMaker::RobotApplication.SourceConfig",
         supportsTags = Prelude.False,
         properties = ["Architecture" JSON..= architecture,
                       "S3Bucket" JSON..= s3Bucket, "S3Key" JSON..= s3Key]}
instance JSON.ToJSON SourceConfigProperty where
  toJSON SourceConfigProperty {..}
    = JSON.object
        ["Architecture" JSON..= architecture, "S3Bucket" JSON..= s3Bucket,
         "S3Key" JSON..= s3Key]
instance Property "Architecture" SourceConfigProperty where
  type PropertyType "Architecture" SourceConfigProperty = Value Prelude.Text
  set newValue SourceConfigProperty {..}
    = SourceConfigProperty {architecture = newValue, ..}
instance Property "S3Bucket" SourceConfigProperty where
  type PropertyType "S3Bucket" SourceConfigProperty = Value Prelude.Text
  set newValue SourceConfigProperty {..}
    = SourceConfigProperty {s3Bucket = newValue, ..}
instance Property "S3Key" SourceConfigProperty where
  type PropertyType "S3Key" SourceConfigProperty = Value Prelude.Text
  set newValue SourceConfigProperty {..}
    = SourceConfigProperty {s3Key = newValue, ..}