module Stratosphere.Backup.ReportPlan.ReportDeliveryChannelProperty (
        ReportDeliveryChannelProperty(..), mkReportDeliveryChannelProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ReportDeliveryChannelProperty
  = ReportDeliveryChannelProperty {formats :: (Prelude.Maybe (ValueList Prelude.Text)),
                                   s3BucketName :: (Value Prelude.Text),
                                   s3KeyPrefix :: (Prelude.Maybe (Value Prelude.Text))}
mkReportDeliveryChannelProperty ::
  Value Prelude.Text -> ReportDeliveryChannelProperty
mkReportDeliveryChannelProperty s3BucketName
  = ReportDeliveryChannelProperty
      {s3BucketName = s3BucketName, formats = Prelude.Nothing,
       s3KeyPrefix = Prelude.Nothing}
instance ToResourceProperties ReportDeliveryChannelProperty where
  toResourceProperties ReportDeliveryChannelProperty {..}
    = ResourceProperties
        {awsType = "AWS::Backup::ReportPlan.ReportDeliveryChannel",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["S3BucketName" JSON..= s3BucketName]
                           (Prelude.catMaybes
                              [(JSON..=) "Formats" Prelude.<$> formats,
                               (JSON..=) "S3KeyPrefix" Prelude.<$> s3KeyPrefix]))}
instance JSON.ToJSON ReportDeliveryChannelProperty where
  toJSON ReportDeliveryChannelProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["S3BucketName" JSON..= s3BucketName]
              (Prelude.catMaybes
                 [(JSON..=) "Formats" Prelude.<$> formats,
                  (JSON..=) "S3KeyPrefix" Prelude.<$> s3KeyPrefix])))
instance Property "Formats" ReportDeliveryChannelProperty where
  type PropertyType "Formats" ReportDeliveryChannelProperty = ValueList Prelude.Text
  set newValue ReportDeliveryChannelProperty {..}
    = ReportDeliveryChannelProperty
        {formats = Prelude.pure newValue, ..}
instance Property "S3BucketName" ReportDeliveryChannelProperty where
  type PropertyType "S3BucketName" ReportDeliveryChannelProperty = Value Prelude.Text
  set newValue ReportDeliveryChannelProperty {..}
    = ReportDeliveryChannelProperty {s3BucketName = newValue, ..}
instance Property "S3KeyPrefix" ReportDeliveryChannelProperty where
  type PropertyType "S3KeyPrefix" ReportDeliveryChannelProperty = Value Prelude.Text
  set newValue ReportDeliveryChannelProperty {..}
    = ReportDeliveryChannelProperty
        {s3KeyPrefix = Prelude.pure newValue, ..}