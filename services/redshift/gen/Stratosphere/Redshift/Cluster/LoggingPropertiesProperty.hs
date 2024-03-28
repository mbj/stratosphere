module Stratosphere.Redshift.Cluster.LoggingPropertiesProperty (
        LoggingPropertiesProperty(..), mkLoggingPropertiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LoggingPropertiesProperty
  = LoggingPropertiesProperty {bucketName :: (Prelude.Maybe (Value Prelude.Text)),
                               s3KeyPrefix :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLoggingPropertiesProperty :: LoggingPropertiesProperty
mkLoggingPropertiesProperty
  = LoggingPropertiesProperty
      {bucketName = Prelude.Nothing, s3KeyPrefix = Prelude.Nothing}
instance ToResourceProperties LoggingPropertiesProperty where
  toResourceProperties LoggingPropertiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::Redshift::Cluster.LoggingProperties",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "BucketName" Prelude.<$> bucketName,
                            (JSON..=) "S3KeyPrefix" Prelude.<$> s3KeyPrefix])}
instance JSON.ToJSON LoggingPropertiesProperty where
  toJSON LoggingPropertiesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "BucketName" Prelude.<$> bucketName,
               (JSON..=) "S3KeyPrefix" Prelude.<$> s3KeyPrefix]))
instance Property "BucketName" LoggingPropertiesProperty where
  type PropertyType "BucketName" LoggingPropertiesProperty = Value Prelude.Text
  set newValue LoggingPropertiesProperty {..}
    = LoggingPropertiesProperty
        {bucketName = Prelude.pure newValue, ..}
instance Property "S3KeyPrefix" LoggingPropertiesProperty where
  type PropertyType "S3KeyPrefix" LoggingPropertiesProperty = Value Prelude.Text
  set newValue LoggingPropertiesProperty {..}
    = LoggingPropertiesProperty
        {s3KeyPrefix = Prelude.pure newValue, ..}