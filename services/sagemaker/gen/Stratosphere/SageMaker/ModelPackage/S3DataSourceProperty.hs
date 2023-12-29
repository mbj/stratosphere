module Stratosphere.SageMaker.ModelPackage.S3DataSourceProperty (
        S3DataSourceProperty(..), mkS3DataSourceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data S3DataSourceProperty
  = S3DataSourceProperty {s3DataType :: (Value Prelude.Text),
                          s3Uri :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkS3DataSourceProperty ::
  Value Prelude.Text -> Value Prelude.Text -> S3DataSourceProperty
mkS3DataSourceProperty s3DataType s3Uri
  = S3DataSourceProperty {s3DataType = s3DataType, s3Uri = s3Uri}
instance ToResourceProperties S3DataSourceProperty where
  toResourceProperties S3DataSourceProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::ModelPackage.S3DataSource",
         supportsTags = Prelude.False,
         properties = ["S3DataType" JSON..= s3DataType,
                       "S3Uri" JSON..= s3Uri]}
instance JSON.ToJSON S3DataSourceProperty where
  toJSON S3DataSourceProperty {..}
    = JSON.object
        ["S3DataType" JSON..= s3DataType, "S3Uri" JSON..= s3Uri]
instance Property "S3DataType" S3DataSourceProperty where
  type PropertyType "S3DataType" S3DataSourceProperty = Value Prelude.Text
  set newValue S3DataSourceProperty {..}
    = S3DataSourceProperty {s3DataType = newValue, ..}
instance Property "S3Uri" S3DataSourceProperty where
  type PropertyType "S3Uri" S3DataSourceProperty = Value Prelude.Text
  set newValue S3DataSourceProperty {..}
    = S3DataSourceProperty {s3Uri = newValue, ..}