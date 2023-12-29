module Stratosphere.SSM.MaintenanceWindowTask.LoggingInfoProperty (
        LoggingInfoProperty(..), mkLoggingInfoProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LoggingInfoProperty
  = LoggingInfoProperty {region :: (Value Prelude.Text),
                         s3Bucket :: (Value Prelude.Text),
                         s3Prefix :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLoggingInfoProperty ::
  Value Prelude.Text -> Value Prelude.Text -> LoggingInfoProperty
mkLoggingInfoProperty region s3Bucket
  = LoggingInfoProperty
      {region = region, s3Bucket = s3Bucket, s3Prefix = Prelude.Nothing}
instance ToResourceProperties LoggingInfoProperty where
  toResourceProperties LoggingInfoProperty {..}
    = ResourceProperties
        {awsType = "AWS::SSM::MaintenanceWindowTask.LoggingInfo",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Region" JSON..= region, "S3Bucket" JSON..= s3Bucket]
                           (Prelude.catMaybes [(JSON..=) "S3Prefix" Prelude.<$> s3Prefix]))}
instance JSON.ToJSON LoggingInfoProperty where
  toJSON LoggingInfoProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Region" JSON..= region, "S3Bucket" JSON..= s3Bucket]
              (Prelude.catMaybes [(JSON..=) "S3Prefix" Prelude.<$> s3Prefix])))
instance Property "Region" LoggingInfoProperty where
  type PropertyType "Region" LoggingInfoProperty = Value Prelude.Text
  set newValue LoggingInfoProperty {..}
    = LoggingInfoProperty {region = newValue, ..}
instance Property "S3Bucket" LoggingInfoProperty where
  type PropertyType "S3Bucket" LoggingInfoProperty = Value Prelude.Text
  set newValue LoggingInfoProperty {..}
    = LoggingInfoProperty {s3Bucket = newValue, ..}
instance Property "S3Prefix" LoggingInfoProperty where
  type PropertyType "S3Prefix" LoggingInfoProperty = Value Prelude.Text
  set newValue LoggingInfoProperty {..}
    = LoggingInfoProperty {s3Prefix = Prelude.pure newValue, ..}