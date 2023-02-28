module Stratosphere.Backup.ReportPlan (
        module Exports, ReportPlan(..), mkReportPlan
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Backup.ReportPlan.ReportDeliveryChannelProperty as Exports
import {-# SOURCE #-} Stratosphere.Backup.ReportPlan.ReportSettingProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data ReportPlan
  = ReportPlan {reportDeliveryChannel :: ReportDeliveryChannelProperty,
                reportPlanDescription :: (Prelude.Maybe (Value Prelude.Text)),
                reportPlanName :: (Prelude.Maybe (Value Prelude.Text)),
                reportPlanTags :: (Prelude.Maybe [Tag]),
                reportSetting :: ReportSettingProperty}
mkReportPlan ::
  ReportDeliveryChannelProperty
  -> ReportSettingProperty -> ReportPlan
mkReportPlan reportDeliveryChannel reportSetting
  = ReportPlan
      {reportDeliveryChannel = reportDeliveryChannel,
       reportSetting = reportSetting,
       reportPlanDescription = Prelude.Nothing,
       reportPlanName = Prelude.Nothing, reportPlanTags = Prelude.Nothing}
instance ToResourceProperties ReportPlan where
  toResourceProperties ReportPlan {..}
    = ResourceProperties
        {awsType = "AWS::Backup::ReportPlan", supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ReportDeliveryChannel" JSON..= reportDeliveryChannel,
                            "ReportSetting" JSON..= reportSetting]
                           (Prelude.catMaybes
                              [(JSON..=) "ReportPlanDescription"
                                 Prelude.<$> reportPlanDescription,
                               (JSON..=) "ReportPlanName" Prelude.<$> reportPlanName,
                               (JSON..=) "ReportPlanTags" Prelude.<$> reportPlanTags]))}
instance JSON.ToJSON ReportPlan where
  toJSON ReportPlan {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ReportDeliveryChannel" JSON..= reportDeliveryChannel,
               "ReportSetting" JSON..= reportSetting]
              (Prelude.catMaybes
                 [(JSON..=) "ReportPlanDescription"
                    Prelude.<$> reportPlanDescription,
                  (JSON..=) "ReportPlanName" Prelude.<$> reportPlanName,
                  (JSON..=) "ReportPlanTags" Prelude.<$> reportPlanTags])))
instance Property "ReportDeliveryChannel" ReportPlan where
  type PropertyType "ReportDeliveryChannel" ReportPlan = ReportDeliveryChannelProperty
  set newValue ReportPlan {..}
    = ReportPlan {reportDeliveryChannel = newValue, ..}
instance Property "ReportPlanDescription" ReportPlan where
  type PropertyType "ReportPlanDescription" ReportPlan = Value Prelude.Text
  set newValue ReportPlan {..}
    = ReportPlan {reportPlanDescription = Prelude.pure newValue, ..}
instance Property "ReportPlanName" ReportPlan where
  type PropertyType "ReportPlanName" ReportPlan = Value Prelude.Text
  set newValue ReportPlan {..}
    = ReportPlan {reportPlanName = Prelude.pure newValue, ..}
instance Property "ReportPlanTags" ReportPlan where
  type PropertyType "ReportPlanTags" ReportPlan = [Tag]
  set newValue ReportPlan {..}
    = ReportPlan {reportPlanTags = Prelude.pure newValue, ..}
instance Property "ReportSetting" ReportPlan where
  type PropertyType "ReportSetting" ReportPlan = ReportSettingProperty
  set newValue ReportPlan {..}
    = ReportPlan {reportSetting = newValue, ..}