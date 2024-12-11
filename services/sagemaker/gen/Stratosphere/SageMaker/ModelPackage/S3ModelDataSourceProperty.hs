module Stratosphere.SageMaker.ModelPackage.S3ModelDataSourceProperty (
        module Exports, S3ModelDataSourceProperty(..),
        mkS3ModelDataSourceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.ModelPackage.ModelAccessConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data S3ModelDataSourceProperty
  = S3ModelDataSourceProperty {compressionType :: (Value Prelude.Text),
                               modelAccessConfig :: (Prelude.Maybe ModelAccessConfigProperty),
                               s3DataType :: (Value Prelude.Text),
                               s3Uri :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkS3ModelDataSourceProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> S3ModelDataSourceProperty
mkS3ModelDataSourceProperty compressionType s3DataType s3Uri
  = S3ModelDataSourceProperty
      {compressionType = compressionType, s3DataType = s3DataType,
       s3Uri = s3Uri, modelAccessConfig = Prelude.Nothing}
instance ToResourceProperties S3ModelDataSourceProperty where
  toResourceProperties S3ModelDataSourceProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::ModelPackage.S3ModelDataSource",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["CompressionType" JSON..= compressionType,
                            "S3DataType" JSON..= s3DataType, "S3Uri" JSON..= s3Uri]
                           (Prelude.catMaybes
                              [(JSON..=) "ModelAccessConfig" Prelude.<$> modelAccessConfig]))}
instance JSON.ToJSON S3ModelDataSourceProperty where
  toJSON S3ModelDataSourceProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["CompressionType" JSON..= compressionType,
               "S3DataType" JSON..= s3DataType, "S3Uri" JSON..= s3Uri]
              (Prelude.catMaybes
                 [(JSON..=) "ModelAccessConfig" Prelude.<$> modelAccessConfig])))
instance Property "CompressionType" S3ModelDataSourceProperty where
  type PropertyType "CompressionType" S3ModelDataSourceProperty = Value Prelude.Text
  set newValue S3ModelDataSourceProperty {..}
    = S3ModelDataSourceProperty {compressionType = newValue, ..}
instance Property "ModelAccessConfig" S3ModelDataSourceProperty where
  type PropertyType "ModelAccessConfig" S3ModelDataSourceProperty = ModelAccessConfigProperty
  set newValue S3ModelDataSourceProperty {..}
    = S3ModelDataSourceProperty
        {modelAccessConfig = Prelude.pure newValue, ..}
instance Property "S3DataType" S3ModelDataSourceProperty where
  type PropertyType "S3DataType" S3ModelDataSourceProperty = Value Prelude.Text
  set newValue S3ModelDataSourceProperty {..}
    = S3ModelDataSourceProperty {s3DataType = newValue, ..}
instance Property "S3Uri" S3ModelDataSourceProperty where
  type PropertyType "S3Uri" S3ModelDataSourceProperty = Value Prelude.Text
  set newValue S3ModelDataSourceProperty {..}
    = S3ModelDataSourceProperty {s3Uri = newValue, ..}