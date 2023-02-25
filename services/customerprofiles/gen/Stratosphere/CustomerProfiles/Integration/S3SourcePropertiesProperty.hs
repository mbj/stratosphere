module Stratosphere.CustomerProfiles.Integration.S3SourcePropertiesProperty (
        S3SourcePropertiesProperty(..), mkS3SourcePropertiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data S3SourcePropertiesProperty
  = S3SourcePropertiesProperty {bucketName :: (Value Prelude.Text),
                                bucketPrefix :: (Prelude.Maybe (Value Prelude.Text))}
mkS3SourcePropertiesProperty ::
  Value Prelude.Text -> S3SourcePropertiesProperty
mkS3SourcePropertiesProperty bucketName
  = S3SourcePropertiesProperty
      {bucketName = bucketName, bucketPrefix = Prelude.Nothing}
instance ToResourceProperties S3SourcePropertiesProperty where
  toResourceProperties S3SourcePropertiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::CustomerProfiles::Integration.S3SourceProperties",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["BucketName" JSON..= bucketName]
                           (Prelude.catMaybes
                              [(JSON..=) "BucketPrefix" Prelude.<$> bucketPrefix]))}
instance JSON.ToJSON S3SourcePropertiesProperty where
  toJSON S3SourcePropertiesProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["BucketName" JSON..= bucketName]
              (Prelude.catMaybes
                 [(JSON..=) "BucketPrefix" Prelude.<$> bucketPrefix])))
instance Property "BucketName" S3SourcePropertiesProperty where
  type PropertyType "BucketName" S3SourcePropertiesProperty = Value Prelude.Text
  set newValue S3SourcePropertiesProperty {..}
    = S3SourcePropertiesProperty {bucketName = newValue, ..}
instance Property "BucketPrefix" S3SourcePropertiesProperty where
  type PropertyType "BucketPrefix" S3SourcePropertiesProperty = Value Prelude.Text
  set newValue S3SourcePropertiesProperty {..}
    = S3SourcePropertiesProperty
        {bucketPrefix = Prelude.pure newValue, ..}