module Stratosphere.Backup.ReportPlan.ReportSettingProperty (
        ReportSettingProperty(..), mkReportSettingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ReportSettingProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-reportplan-reportsetting.html>
    ReportSettingProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-reportplan-reportsetting.html#cfn-backup-reportplan-reportsetting-accounts>
                           accounts :: (Prelude.Maybe (ValueList Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-reportplan-reportsetting.html#cfn-backup-reportplan-reportsetting-frameworkarns>
                           frameworkArns :: (Prelude.Maybe (ValueList Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-reportplan-reportsetting.html#cfn-backup-reportplan-reportsetting-organizationunits>
                           organizationUnits :: (Prelude.Maybe (ValueList Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-reportplan-reportsetting.html#cfn-backup-reportplan-reportsetting-regions>
                           regions :: (Prelude.Maybe (ValueList Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-reportplan-reportsetting.html#cfn-backup-reportplan-reportsetting-reporttemplate>
                           reportTemplate :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkReportSettingProperty ::
  Value Prelude.Text -> ReportSettingProperty
mkReportSettingProperty reportTemplate
  = ReportSettingProperty
      {haddock_workaround_ = (), reportTemplate = reportTemplate,
       accounts = Prelude.Nothing, frameworkArns = Prelude.Nothing,
       organizationUnits = Prelude.Nothing, regions = Prelude.Nothing}
instance ToResourceProperties ReportSettingProperty where
  toResourceProperties ReportSettingProperty {..}
    = ResourceProperties
        {awsType = "AWS::Backup::ReportPlan.ReportSetting",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ReportTemplate" JSON..= reportTemplate]
                           (Prelude.catMaybes
                              [(JSON..=) "Accounts" Prelude.<$> accounts,
                               (JSON..=) "FrameworkArns" Prelude.<$> frameworkArns,
                               (JSON..=) "OrganizationUnits" Prelude.<$> organizationUnits,
                               (JSON..=) "Regions" Prelude.<$> regions]))}
instance JSON.ToJSON ReportSettingProperty where
  toJSON ReportSettingProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ReportTemplate" JSON..= reportTemplate]
              (Prelude.catMaybes
                 [(JSON..=) "Accounts" Prelude.<$> accounts,
                  (JSON..=) "FrameworkArns" Prelude.<$> frameworkArns,
                  (JSON..=) "OrganizationUnits" Prelude.<$> organizationUnits,
                  (JSON..=) "Regions" Prelude.<$> regions])))
instance Property "Accounts" ReportSettingProperty where
  type PropertyType "Accounts" ReportSettingProperty = ValueList Prelude.Text
  set newValue ReportSettingProperty {..}
    = ReportSettingProperty {accounts = Prelude.pure newValue, ..}
instance Property "FrameworkArns" ReportSettingProperty where
  type PropertyType "FrameworkArns" ReportSettingProperty = ValueList Prelude.Text
  set newValue ReportSettingProperty {..}
    = ReportSettingProperty {frameworkArns = Prelude.pure newValue, ..}
instance Property "OrganizationUnits" ReportSettingProperty where
  type PropertyType "OrganizationUnits" ReportSettingProperty = ValueList Prelude.Text
  set newValue ReportSettingProperty {..}
    = ReportSettingProperty
        {organizationUnits = Prelude.pure newValue, ..}
instance Property "Regions" ReportSettingProperty where
  type PropertyType "Regions" ReportSettingProperty = ValueList Prelude.Text
  set newValue ReportSettingProperty {..}
    = ReportSettingProperty {regions = Prelude.pure newValue, ..}
instance Property "ReportTemplate" ReportSettingProperty where
  type PropertyType "ReportTemplate" ReportSettingProperty = Value Prelude.Text
  set newValue ReportSettingProperty {..}
    = ReportSettingProperty {reportTemplate = newValue, ..}