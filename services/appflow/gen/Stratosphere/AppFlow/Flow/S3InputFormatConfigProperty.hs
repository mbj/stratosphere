module Stratosphere.AppFlow.Flow.S3InputFormatConfigProperty (
        S3InputFormatConfigProperty(..), mkS3InputFormatConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data S3InputFormatConfigProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-s3inputformatconfig.html>
    S3InputFormatConfigProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-s3inputformatconfig.html#cfn-appflow-flow-s3inputformatconfig-s3inputfiletype>
                                 s3InputFileType :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkS3InputFormatConfigProperty :: S3InputFormatConfigProperty
mkS3InputFormatConfigProperty
  = S3InputFormatConfigProperty {s3InputFileType = Prelude.Nothing}
instance ToResourceProperties S3InputFormatConfigProperty where
  toResourceProperties S3InputFormatConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppFlow::Flow.S3InputFormatConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "S3InputFileType" Prelude.<$> s3InputFileType])}
instance JSON.ToJSON S3InputFormatConfigProperty where
  toJSON S3InputFormatConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "S3InputFileType" Prelude.<$> s3InputFileType]))
instance Property "S3InputFileType" S3InputFormatConfigProperty where
  type PropertyType "S3InputFileType" S3InputFormatConfigProperty = Value Prelude.Text
  set newValue S3InputFormatConfigProperty {}
    = S3InputFormatConfigProperty
        {s3InputFileType = Prelude.pure newValue, ..}