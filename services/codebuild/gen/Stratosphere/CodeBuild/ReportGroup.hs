module Stratosphere.CodeBuild.ReportGroup (
        module Exports, ReportGroup(..), mkReportGroup
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CodeBuild.ReportGroup.ReportExportConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data ReportGroup
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codebuild-reportgroup.html>
    ReportGroup {haddock_workaround_ :: (),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codebuild-reportgroup.html#cfn-codebuild-reportgroup-deletereports>
                 deleteReports :: (Prelude.Maybe (Value Prelude.Bool)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codebuild-reportgroup.html#cfn-codebuild-reportgroup-exportconfig>
                 exportConfig :: ReportExportConfigProperty,
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codebuild-reportgroup.html#cfn-codebuild-reportgroup-name>
                 name :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codebuild-reportgroup.html#cfn-codebuild-reportgroup-tags>
                 tags :: (Prelude.Maybe [Tag]),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codebuild-reportgroup.html#cfn-codebuild-reportgroup-type>
                 type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkReportGroup ::
  ReportExportConfigProperty -> Value Prelude.Text -> ReportGroup
mkReportGroup exportConfig type'
  = ReportGroup
      {haddock_workaround_ = (), exportConfig = exportConfig,
       type' = type', deleteReports = Prelude.Nothing,
       name = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties ReportGroup where
  toResourceProperties ReportGroup {..}
    = ResourceProperties
        {awsType = "AWS::CodeBuild::ReportGroup",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ExportConfig" JSON..= exportConfig, "Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "DeleteReports" Prelude.<$> deleteReports,
                               (JSON..=) "Name" Prelude.<$> name,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON ReportGroup where
  toJSON ReportGroup {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ExportConfig" JSON..= exportConfig, "Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "DeleteReports" Prelude.<$> deleteReports,
                  (JSON..=) "Name" Prelude.<$> name,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "DeleteReports" ReportGroup where
  type PropertyType "DeleteReports" ReportGroup = Value Prelude.Bool
  set newValue ReportGroup {..}
    = ReportGroup {deleteReports = Prelude.pure newValue, ..}
instance Property "ExportConfig" ReportGroup where
  type PropertyType "ExportConfig" ReportGroup = ReportExportConfigProperty
  set newValue ReportGroup {..}
    = ReportGroup {exportConfig = newValue, ..}
instance Property "Name" ReportGroup where
  type PropertyType "Name" ReportGroup = Value Prelude.Text
  set newValue ReportGroup {..}
    = ReportGroup {name = Prelude.pure newValue, ..}
instance Property "Tags" ReportGroup where
  type PropertyType "Tags" ReportGroup = [Tag]
  set newValue ReportGroup {..}
    = ReportGroup {tags = Prelude.pure newValue, ..}
instance Property "Type" ReportGroup where
  type PropertyType "Type" ReportGroup = Value Prelude.Text
  set newValue ReportGroup {..} = ReportGroup {type' = newValue, ..}