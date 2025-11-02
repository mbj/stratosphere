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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelpackage-s3modeldatasource.html>
    S3ModelDataSourceProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelpackage-s3modeldatasource.html#cfn-sagemaker-modelpackage-s3modeldatasource-compressiontype>
                               compressionType :: (Value Prelude.Text),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelpackage-s3modeldatasource.html#cfn-sagemaker-modelpackage-s3modeldatasource-modelaccessconfig>
                               modelAccessConfig :: (Prelude.Maybe ModelAccessConfigProperty),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelpackage-s3modeldatasource.html#cfn-sagemaker-modelpackage-s3modeldatasource-s3datatype>
                               s3DataType :: (Value Prelude.Text),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelpackage-s3modeldatasource.html#cfn-sagemaker-modelpackage-s3modeldatasource-s3uri>
                               s3Uri :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkS3ModelDataSourceProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> S3ModelDataSourceProperty
mkS3ModelDataSourceProperty compressionType s3DataType s3Uri
  = S3ModelDataSourceProperty
      {haddock_workaround_ = (), compressionType = compressionType,
       s3DataType = s3DataType, s3Uri = s3Uri,
       modelAccessConfig = Prelude.Nothing}
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