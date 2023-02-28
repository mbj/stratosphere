module Stratosphere.Backup.ReportPlan.ReportSettingProperty (
        ReportSettingProperty(..), mkReportSettingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ReportSettingProperty
  = ReportSettingProperty {accounts :: (Prelude.Maybe (ValueList Prelude.Text)),
                           frameworkArns :: (Prelude.Maybe (ValueList Prelude.Text)),
                           organizationUnits :: (Prelude.Maybe (ValueList Prelude.Text)),
                           regions :: (Prelude.Maybe (ValueList Prelude.Text)),
                           reportTemplate :: (Value Prelude.Text)}
mkReportSettingProperty ::
  Value Prelude.Text -> ReportSettingProperty
mkReportSettingProperty reportTemplate
  = ReportSettingProperty
      {reportTemplate = reportTemplate, accounts = Prelude.Nothing,
       frameworkArns = Prelude.Nothing,
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