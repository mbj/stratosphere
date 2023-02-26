module Stratosphere.CUR.ReportDefinition (
        ReportDefinition(..), mkReportDefinition
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ReportDefinition
  = ReportDefinition {additionalArtifacts :: (Prelude.Maybe (ValueList Prelude.Text)),
                      additionalSchemaElements :: (Prelude.Maybe (ValueList Prelude.Text)),
                      billingViewArn :: (Prelude.Maybe (Value Prelude.Text)),
                      compression :: (Value Prelude.Text),
                      format :: (Value Prelude.Text),
                      refreshClosedReports :: (Value Prelude.Bool),
                      reportName :: (Value Prelude.Text),
                      reportVersioning :: (Value Prelude.Text),
                      s3Bucket :: (Value Prelude.Text),
                      s3Prefix :: (Value Prelude.Text),
                      s3Region :: (Value Prelude.Text),
                      timeUnit :: (Value Prelude.Text)}
mkReportDefinition ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Bool
        -> Value Prelude.Text
           -> Value Prelude.Text
              -> Value Prelude.Text
                 -> Value Prelude.Text
                    -> Value Prelude.Text -> Value Prelude.Text -> ReportDefinition
mkReportDefinition
  compression
  format
  refreshClosedReports
  reportName
  reportVersioning
  s3Bucket
  s3Prefix
  s3Region
  timeUnit
  = ReportDefinition
      {compression = compression, format = format,
       refreshClosedReports = refreshClosedReports,
       reportName = reportName, reportVersioning = reportVersioning,
       s3Bucket = s3Bucket, s3Prefix = s3Prefix, s3Region = s3Region,
       timeUnit = timeUnit, additionalArtifacts = Prelude.Nothing,
       additionalSchemaElements = Prelude.Nothing,
       billingViewArn = Prelude.Nothing}
instance ToResourceProperties ReportDefinition where
  toResourceProperties ReportDefinition {..}
    = ResourceProperties
        {awsType = "AWS::CUR::ReportDefinition",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Compression" JSON..= compression, "Format" JSON..= format,
                            "RefreshClosedReports" JSON..= refreshClosedReports,
                            "ReportName" JSON..= reportName,
                            "ReportVersioning" JSON..= reportVersioning,
                            "S3Bucket" JSON..= s3Bucket, "S3Prefix" JSON..= s3Prefix,
                            "S3Region" JSON..= s3Region, "TimeUnit" JSON..= timeUnit]
                           (Prelude.catMaybes
                              [(JSON..=) "AdditionalArtifacts" Prelude.<$> additionalArtifacts,
                               (JSON..=) "AdditionalSchemaElements"
                                 Prelude.<$> additionalSchemaElements,
                               (JSON..=) "BillingViewArn" Prelude.<$> billingViewArn]))}
instance JSON.ToJSON ReportDefinition where
  toJSON ReportDefinition {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Compression" JSON..= compression, "Format" JSON..= format,
               "RefreshClosedReports" JSON..= refreshClosedReports,
               "ReportName" JSON..= reportName,
               "ReportVersioning" JSON..= reportVersioning,
               "S3Bucket" JSON..= s3Bucket, "S3Prefix" JSON..= s3Prefix,
               "S3Region" JSON..= s3Region, "TimeUnit" JSON..= timeUnit]
              (Prelude.catMaybes
                 [(JSON..=) "AdditionalArtifacts" Prelude.<$> additionalArtifacts,
                  (JSON..=) "AdditionalSchemaElements"
                    Prelude.<$> additionalSchemaElements,
                  (JSON..=) "BillingViewArn" Prelude.<$> billingViewArn])))
instance Property "AdditionalArtifacts" ReportDefinition where
  type PropertyType "AdditionalArtifacts" ReportDefinition = ValueList Prelude.Text
  set newValue ReportDefinition {..}
    = ReportDefinition
        {additionalArtifacts = Prelude.pure newValue, ..}
instance Property "AdditionalSchemaElements" ReportDefinition where
  type PropertyType "AdditionalSchemaElements" ReportDefinition = ValueList Prelude.Text
  set newValue ReportDefinition {..}
    = ReportDefinition
        {additionalSchemaElements = Prelude.pure newValue, ..}
instance Property "BillingViewArn" ReportDefinition where
  type PropertyType "BillingViewArn" ReportDefinition = Value Prelude.Text
  set newValue ReportDefinition {..}
    = ReportDefinition {billingViewArn = Prelude.pure newValue, ..}
instance Property "Compression" ReportDefinition where
  type PropertyType "Compression" ReportDefinition = Value Prelude.Text
  set newValue ReportDefinition {..}
    = ReportDefinition {compression = newValue, ..}
instance Property "Format" ReportDefinition where
  type PropertyType "Format" ReportDefinition = Value Prelude.Text
  set newValue ReportDefinition {..}
    = ReportDefinition {format = newValue, ..}
instance Property "RefreshClosedReports" ReportDefinition where
  type PropertyType "RefreshClosedReports" ReportDefinition = Value Prelude.Bool
  set newValue ReportDefinition {..}
    = ReportDefinition {refreshClosedReports = newValue, ..}
instance Property "ReportName" ReportDefinition where
  type PropertyType "ReportName" ReportDefinition = Value Prelude.Text
  set newValue ReportDefinition {..}
    = ReportDefinition {reportName = newValue, ..}
instance Property "ReportVersioning" ReportDefinition where
  type PropertyType "ReportVersioning" ReportDefinition = Value Prelude.Text
  set newValue ReportDefinition {..}
    = ReportDefinition {reportVersioning = newValue, ..}
instance Property "S3Bucket" ReportDefinition where
  type PropertyType "S3Bucket" ReportDefinition = Value Prelude.Text
  set newValue ReportDefinition {..}
    = ReportDefinition {s3Bucket = newValue, ..}
instance Property "S3Prefix" ReportDefinition where
  type PropertyType "S3Prefix" ReportDefinition = Value Prelude.Text
  set newValue ReportDefinition {..}
    = ReportDefinition {s3Prefix = newValue, ..}
instance Property "S3Region" ReportDefinition where
  type PropertyType "S3Region" ReportDefinition = Value Prelude.Text
  set newValue ReportDefinition {..}
    = ReportDefinition {s3Region = newValue, ..}
instance Property "TimeUnit" ReportDefinition where
  type PropertyType "TimeUnit" ReportDefinition = Value Prelude.Text
  set newValue ReportDefinition {..}
    = ReportDefinition {timeUnit = newValue, ..}