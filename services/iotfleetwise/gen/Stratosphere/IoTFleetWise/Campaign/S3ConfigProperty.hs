module Stratosphere.IoTFleetWise.Campaign.S3ConfigProperty (
        S3ConfigProperty(..), mkS3ConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data S3ConfigProperty
  = S3ConfigProperty {bucketArn :: (Value Prelude.Text),
                      dataFormat :: (Prelude.Maybe (Value Prelude.Text)),
                      prefix :: (Prelude.Maybe (Value Prelude.Text)),
                      storageCompressionFormat :: (Prelude.Maybe (Value Prelude.Text))}
mkS3ConfigProperty :: Value Prelude.Text -> S3ConfigProperty
mkS3ConfigProperty bucketArn
  = S3ConfigProperty
      {bucketArn = bucketArn, dataFormat = Prelude.Nothing,
       prefix = Prelude.Nothing,
       storageCompressionFormat = Prelude.Nothing}
instance ToResourceProperties S3ConfigProperty where
  toResourceProperties S3ConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTFleetWise::Campaign.S3Config",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["BucketArn" JSON..= bucketArn]
                           (Prelude.catMaybes
                              [(JSON..=) "DataFormat" Prelude.<$> dataFormat,
                               (JSON..=) "Prefix" Prelude.<$> prefix,
                               (JSON..=) "StorageCompressionFormat"
                                 Prelude.<$> storageCompressionFormat]))}
instance JSON.ToJSON S3ConfigProperty where
  toJSON S3ConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["BucketArn" JSON..= bucketArn]
              (Prelude.catMaybes
                 [(JSON..=) "DataFormat" Prelude.<$> dataFormat,
                  (JSON..=) "Prefix" Prelude.<$> prefix,
                  (JSON..=) "StorageCompressionFormat"
                    Prelude.<$> storageCompressionFormat])))
instance Property "BucketArn" S3ConfigProperty where
  type PropertyType "BucketArn" S3ConfigProperty = Value Prelude.Text
  set newValue S3ConfigProperty {..}
    = S3ConfigProperty {bucketArn = newValue, ..}
instance Property "DataFormat" S3ConfigProperty where
  type PropertyType "DataFormat" S3ConfigProperty = Value Prelude.Text
  set newValue S3ConfigProperty {..}
    = S3ConfigProperty {dataFormat = Prelude.pure newValue, ..}
instance Property "Prefix" S3ConfigProperty where
  type PropertyType "Prefix" S3ConfigProperty = Value Prelude.Text
  set newValue S3ConfigProperty {..}
    = S3ConfigProperty {prefix = Prelude.pure newValue, ..}
instance Property "StorageCompressionFormat" S3ConfigProperty where
  type PropertyType "StorageCompressionFormat" S3ConfigProperty = Value Prelude.Text
  set newValue S3ConfigProperty {..}
    = S3ConfigProperty
        {storageCompressionFormat = Prelude.pure newValue, ..}