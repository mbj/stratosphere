module Stratosphere.SSM.MaintenanceWindowTask.LoggingInfoProperty (
        LoggingInfoProperty(..), mkLoggingInfoProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LoggingInfoProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-logginginfo.html>
    LoggingInfoProperty {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-logginginfo.html#cfn-ssm-maintenancewindowtask-logginginfo-region>
                         region :: (Value Prelude.Text),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-logginginfo.html#cfn-ssm-maintenancewindowtask-logginginfo-s3bucket>
                         s3Bucket :: (Value Prelude.Text),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-logginginfo.html#cfn-ssm-maintenancewindowtask-logginginfo-s3prefix>
                         s3Prefix :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLoggingInfoProperty ::
  Value Prelude.Text -> Value Prelude.Text -> LoggingInfoProperty
mkLoggingInfoProperty region s3Bucket
  = LoggingInfoProperty
      {haddock_workaround_ = (), region = region, s3Bucket = s3Bucket,
       s3Prefix = Prelude.Nothing}
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