module Stratosphere.AppFlow.Flow.S3DestinationPropertiesProperty (
        module Exports, S3DestinationPropertiesProperty(..),
        mkS3DestinationPropertiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppFlow.Flow.S3OutputFormatConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data S3DestinationPropertiesProperty
  = S3DestinationPropertiesProperty {bucketName :: (Value Prelude.Text),
                                     bucketPrefix :: (Prelude.Maybe (Value Prelude.Text)),
                                     s3OutputFormatConfig :: (Prelude.Maybe S3OutputFormatConfigProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkS3DestinationPropertiesProperty ::
  Value Prelude.Text -> S3DestinationPropertiesProperty
mkS3DestinationPropertiesProperty bucketName
  = S3DestinationPropertiesProperty
      {bucketName = bucketName, bucketPrefix = Prelude.Nothing,
       s3OutputFormatConfig = Prelude.Nothing}
instance ToResourceProperties S3DestinationPropertiesProperty where
  toResourceProperties S3DestinationPropertiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppFlow::Flow.S3DestinationProperties",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["BucketName" JSON..= bucketName]
                           (Prelude.catMaybes
                              [(JSON..=) "BucketPrefix" Prelude.<$> bucketPrefix,
                               (JSON..=) "S3OutputFormatConfig"
                                 Prelude.<$> s3OutputFormatConfig]))}
instance JSON.ToJSON S3DestinationPropertiesProperty where
  toJSON S3DestinationPropertiesProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["BucketName" JSON..= bucketName]
              (Prelude.catMaybes
                 [(JSON..=) "BucketPrefix" Prelude.<$> bucketPrefix,
                  (JSON..=) "S3OutputFormatConfig"
                    Prelude.<$> s3OutputFormatConfig])))
instance Property "BucketName" S3DestinationPropertiesProperty where
  type PropertyType "BucketName" S3DestinationPropertiesProperty = Value Prelude.Text
  set newValue S3DestinationPropertiesProperty {..}
    = S3DestinationPropertiesProperty {bucketName = newValue, ..}
instance Property "BucketPrefix" S3DestinationPropertiesProperty where
  type PropertyType "BucketPrefix" S3DestinationPropertiesProperty = Value Prelude.Text
  set newValue S3DestinationPropertiesProperty {..}
    = S3DestinationPropertiesProperty
        {bucketPrefix = Prelude.pure newValue, ..}
instance Property "S3OutputFormatConfig" S3DestinationPropertiesProperty where
  type PropertyType "S3OutputFormatConfig" S3DestinationPropertiesProperty = S3OutputFormatConfigProperty
  set newValue S3DestinationPropertiesProperty {..}
    = S3DestinationPropertiesProperty
        {s3OutputFormatConfig = Prelude.pure newValue, ..}