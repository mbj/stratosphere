module Stratosphere.CUR.ReportDefinition (
        ReportDefinition(..), mkReportDefinition
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data ReportDefinition
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cur-reportdefinition.html>
    ReportDefinition {haddock_workaround_ :: (),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cur-reportdefinition.html#cfn-cur-reportdefinition-additionalartifacts>
                      additionalArtifacts :: (Prelude.Maybe (ValueList Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cur-reportdefinition.html#cfn-cur-reportdefinition-additionalschemaelements>
                      additionalSchemaElements :: (Prelude.Maybe (ValueList Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cur-reportdefinition.html#cfn-cur-reportdefinition-billingviewarn>
                      billingViewArn :: (Prelude.Maybe (Value Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cur-reportdefinition.html#cfn-cur-reportdefinition-compression>
                      compression :: (Value Prelude.Text),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cur-reportdefinition.html#cfn-cur-reportdefinition-format>
                      format :: (Value Prelude.Text),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cur-reportdefinition.html#cfn-cur-reportdefinition-refreshclosedreports>
                      refreshClosedReports :: (Value Prelude.Bool),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cur-reportdefinition.html#cfn-cur-reportdefinition-reportname>
                      reportName :: (Value Prelude.Text),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cur-reportdefinition.html#cfn-cur-reportdefinition-reportversioning>
                      reportVersioning :: (Value Prelude.Text),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cur-reportdefinition.html#cfn-cur-reportdefinition-s3bucket>
                      s3Bucket :: (Value Prelude.Text),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cur-reportdefinition.html#cfn-cur-reportdefinition-s3prefix>
                      s3Prefix :: (Value Prelude.Text),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cur-reportdefinition.html#cfn-cur-reportdefinition-s3region>
                      s3Region :: (Value Prelude.Text),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cur-reportdefinition.html#cfn-cur-reportdefinition-tags>
                      tags :: (Prelude.Maybe [Tag]),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cur-reportdefinition.html#cfn-cur-reportdefinition-timeunit>
                      timeUnit :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
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
      {haddock_workaround_ = (), compression = compression,
       format = format, refreshClosedReports = refreshClosedReports,
       reportName = reportName, reportVersioning = reportVersioning,
       s3Bucket = s3Bucket, s3Prefix = s3Prefix, s3Region = s3Region,
       timeUnit = timeUnit, additionalArtifacts = Prelude.Nothing,
       additionalSchemaElements = Prelude.Nothing,
       billingViewArn = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties ReportDefinition where
  toResourceProperties ReportDefinition {..}
    = ResourceProperties
        {awsType = "AWS::CUR::ReportDefinition",
         supportsTags = Prelude.True,
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
                               (JSON..=) "BillingViewArn" Prelude.<$> billingViewArn,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
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
                  (JSON..=) "BillingViewArn" Prelude.<$> billingViewArn,
                  (JSON..=) "Tags" Prelude.<$> tags])))
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
instance Property "Tags" ReportDefinition where
  type PropertyType "Tags" ReportDefinition = [Tag]
  set newValue ReportDefinition {..}
    = ReportDefinition {tags = Prelude.pure newValue, ..}
instance Property "TimeUnit" ReportDefinition where
  type PropertyType "TimeUnit" ReportDefinition = Value Prelude.Text
  set newValue ReportDefinition {..}
    = ReportDefinition {timeUnit = newValue, ..}