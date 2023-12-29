module Stratosphere.InternetMonitor.Monitor.S3ConfigProperty (
        S3ConfigProperty(..), mkS3ConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data S3ConfigProperty
  = S3ConfigProperty {bucketName :: (Prelude.Maybe (Value Prelude.Text)),
                      bucketPrefix :: (Prelude.Maybe (Value Prelude.Text)),
                      logDeliveryStatus :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkS3ConfigProperty :: S3ConfigProperty
mkS3ConfigProperty
  = S3ConfigProperty
      {bucketName = Prelude.Nothing, bucketPrefix = Prelude.Nothing,
       logDeliveryStatus = Prelude.Nothing}
instance ToResourceProperties S3ConfigProperty where
  toResourceProperties S3ConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::InternetMonitor::Monitor.S3Config",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "BucketName" Prelude.<$> bucketName,
                            (JSON..=) "BucketPrefix" Prelude.<$> bucketPrefix,
                            (JSON..=) "LogDeliveryStatus" Prelude.<$> logDeliveryStatus])}
instance JSON.ToJSON S3ConfigProperty where
  toJSON S3ConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "BucketName" Prelude.<$> bucketName,
               (JSON..=) "BucketPrefix" Prelude.<$> bucketPrefix,
               (JSON..=) "LogDeliveryStatus" Prelude.<$> logDeliveryStatus]))
instance Property "BucketName" S3ConfigProperty where
  type PropertyType "BucketName" S3ConfigProperty = Value Prelude.Text
  set newValue S3ConfigProperty {..}
    = S3ConfigProperty {bucketName = Prelude.pure newValue, ..}
instance Property "BucketPrefix" S3ConfigProperty where
  type PropertyType "BucketPrefix" S3ConfigProperty = Value Prelude.Text
  set newValue S3ConfigProperty {..}
    = S3ConfigProperty {bucketPrefix = Prelude.pure newValue, ..}
instance Property "LogDeliveryStatus" S3ConfigProperty where
  type PropertyType "LogDeliveryStatus" S3ConfigProperty = Value Prelude.Text
  set newValue S3ConfigProperty {..}
    = S3ConfigProperty {logDeliveryStatus = Prelude.pure newValue, ..}