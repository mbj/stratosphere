module Stratosphere.SageMaker.Model.S3DataSourceProperty (
        module Exports, S3DataSourceProperty(..), mkS3DataSourceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.Model.HubAccessConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.Model.ModelAccessConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data S3DataSourceProperty
  = S3DataSourceProperty {compressionType :: (Value Prelude.Text),
                          hubAccessConfig :: (Prelude.Maybe HubAccessConfigProperty),
                          modelAccessConfig :: (Prelude.Maybe ModelAccessConfigProperty),
                          s3DataType :: (Value Prelude.Text),
                          s3Uri :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkS3DataSourceProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> S3DataSourceProperty
mkS3DataSourceProperty compressionType s3DataType s3Uri
  = S3DataSourceProperty
      {compressionType = compressionType, s3DataType = s3DataType,
       s3Uri = s3Uri, hubAccessConfig = Prelude.Nothing,
       modelAccessConfig = Prelude.Nothing}
instance ToResourceProperties S3DataSourceProperty where
  toResourceProperties S3DataSourceProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::Model.S3DataSource",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["CompressionType" JSON..= compressionType,
                            "S3DataType" JSON..= s3DataType, "S3Uri" JSON..= s3Uri]
                           (Prelude.catMaybes
                              [(JSON..=) "HubAccessConfig" Prelude.<$> hubAccessConfig,
                               (JSON..=) "ModelAccessConfig" Prelude.<$> modelAccessConfig]))}
instance JSON.ToJSON S3DataSourceProperty where
  toJSON S3DataSourceProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["CompressionType" JSON..= compressionType,
               "S3DataType" JSON..= s3DataType, "S3Uri" JSON..= s3Uri]
              (Prelude.catMaybes
                 [(JSON..=) "HubAccessConfig" Prelude.<$> hubAccessConfig,
                  (JSON..=) "ModelAccessConfig" Prelude.<$> modelAccessConfig])))
instance Property "CompressionType" S3DataSourceProperty where
  type PropertyType "CompressionType" S3DataSourceProperty = Value Prelude.Text
  set newValue S3DataSourceProperty {..}
    = S3DataSourceProperty {compressionType = newValue, ..}
instance Property "HubAccessConfig" S3DataSourceProperty where
  type PropertyType "HubAccessConfig" S3DataSourceProperty = HubAccessConfigProperty
  set newValue S3DataSourceProperty {..}
    = S3DataSourceProperty
        {hubAccessConfig = Prelude.pure newValue, ..}
instance Property "ModelAccessConfig" S3DataSourceProperty where
  type PropertyType "ModelAccessConfig" S3DataSourceProperty = ModelAccessConfigProperty
  set newValue S3DataSourceProperty {..}
    = S3DataSourceProperty
        {modelAccessConfig = Prelude.pure newValue, ..}
instance Property "S3DataType" S3DataSourceProperty where
  type PropertyType "S3DataType" S3DataSourceProperty = Value Prelude.Text
  set newValue S3DataSourceProperty {..}
    = S3DataSourceProperty {s3DataType = newValue, ..}
instance Property "S3Uri" S3DataSourceProperty where
  type PropertyType "S3Uri" S3DataSourceProperty = Value Prelude.Text
  set newValue S3DataSourceProperty {..}
    = S3DataSourceProperty {s3Uri = newValue, ..}