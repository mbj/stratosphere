module Stratosphere.AppFlow.Flow.S3SourcePropertiesProperty (
        module Exports, S3SourcePropertiesProperty(..),
        mkS3SourcePropertiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppFlow.Flow.S3InputFormatConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data S3SourcePropertiesProperty
  = S3SourcePropertiesProperty {bucketName :: (Value Prelude.Text),
                                bucketPrefix :: (Value Prelude.Text),
                                s3InputFormatConfig :: (Prelude.Maybe S3InputFormatConfigProperty)}
mkS3SourcePropertiesProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> S3SourcePropertiesProperty
mkS3SourcePropertiesProperty bucketName bucketPrefix
  = S3SourcePropertiesProperty
      {bucketName = bucketName, bucketPrefix = bucketPrefix,
       s3InputFormatConfig = Prelude.Nothing}
instance ToResourceProperties S3SourcePropertiesProperty where
  toResourceProperties S3SourcePropertiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppFlow::Flow.S3SourceProperties",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["BucketName" JSON..= bucketName,
                            "BucketPrefix" JSON..= bucketPrefix]
                           (Prelude.catMaybes
                              [(JSON..=) "S3InputFormatConfig"
                                 Prelude.<$> s3InputFormatConfig]))}
instance JSON.ToJSON S3SourcePropertiesProperty where
  toJSON S3SourcePropertiesProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["BucketName" JSON..= bucketName,
               "BucketPrefix" JSON..= bucketPrefix]
              (Prelude.catMaybes
                 [(JSON..=) "S3InputFormatConfig"
                    Prelude.<$> s3InputFormatConfig])))
instance Property "BucketName" S3SourcePropertiesProperty where
  type PropertyType "BucketName" S3SourcePropertiesProperty = Value Prelude.Text
  set newValue S3SourcePropertiesProperty {..}
    = S3SourcePropertiesProperty {bucketName = newValue, ..}
instance Property "BucketPrefix" S3SourcePropertiesProperty where
  type PropertyType "BucketPrefix" S3SourcePropertiesProperty = Value Prelude.Text
  set newValue S3SourcePropertiesProperty {..}
    = S3SourcePropertiesProperty {bucketPrefix = newValue, ..}
instance Property "S3InputFormatConfig" S3SourcePropertiesProperty where
  type PropertyType "S3InputFormatConfig" S3SourcePropertiesProperty = S3InputFormatConfigProperty
  set newValue S3SourcePropertiesProperty {..}
    = S3SourcePropertiesProperty
        {s3InputFormatConfig = Prelude.pure newValue, ..}