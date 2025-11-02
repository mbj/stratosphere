module Stratosphere.CodeBuild.ReportGroup.ReportExportConfigProperty (
        module Exports, ReportExportConfigProperty(..),
        mkReportExportConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CodeBuild.ReportGroup.S3ReportExportConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ReportExportConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-reportgroup-reportexportconfig.html>
    ReportExportConfigProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-reportgroup-reportexportconfig.html#cfn-codebuild-reportgroup-reportexportconfig-exportconfigtype>
                                exportConfigType :: (Value Prelude.Text),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-reportgroup-reportexportconfig.html#cfn-codebuild-reportgroup-reportexportconfig-s3destination>
                                s3Destination :: (Prelude.Maybe S3ReportExportConfigProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkReportExportConfigProperty ::
  Value Prelude.Text -> ReportExportConfigProperty
mkReportExportConfigProperty exportConfigType
  = ReportExportConfigProperty
      {haddock_workaround_ = (), exportConfigType = exportConfigType,
       s3Destination = Prelude.Nothing}
instance ToResourceProperties ReportExportConfigProperty where
  toResourceProperties ReportExportConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::CodeBuild::ReportGroup.ReportExportConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ExportConfigType" JSON..= exportConfigType]
                           (Prelude.catMaybes
                              [(JSON..=) "S3Destination" Prelude.<$> s3Destination]))}
instance JSON.ToJSON ReportExportConfigProperty where
  toJSON ReportExportConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ExportConfigType" JSON..= exportConfigType]
              (Prelude.catMaybes
                 [(JSON..=) "S3Destination" Prelude.<$> s3Destination])))
instance Property "ExportConfigType" ReportExportConfigProperty where
  type PropertyType "ExportConfigType" ReportExportConfigProperty = Value Prelude.Text
  set newValue ReportExportConfigProperty {..}
    = ReportExportConfigProperty {exportConfigType = newValue, ..}
instance Property "S3Destination" ReportExportConfigProperty where
  type PropertyType "S3Destination" ReportExportConfigProperty = S3ReportExportConfigProperty
  set newValue ReportExportConfigProperty {..}
    = ReportExportConfigProperty
        {s3Destination = Prelude.pure newValue, ..}