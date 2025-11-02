module Stratosphere.CloudTrail.Dashboard (
        module Exports, Dashboard(..), mkDashboard
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CloudTrail.Dashboard.RefreshScheduleProperty as Exports
import {-# SOURCE #-} Stratosphere.CloudTrail.Dashboard.WidgetProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Dashboard
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudtrail-dashboard.html>
    Dashboard {haddock_workaround_ :: (),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudtrail-dashboard.html#cfn-cloudtrail-dashboard-name>
               name :: (Prelude.Maybe (Value Prelude.Text)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudtrail-dashboard.html#cfn-cloudtrail-dashboard-refreshschedule>
               refreshSchedule :: (Prelude.Maybe RefreshScheduleProperty),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudtrail-dashboard.html#cfn-cloudtrail-dashboard-tags>
               tags :: (Prelude.Maybe [Tag]),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudtrail-dashboard.html#cfn-cloudtrail-dashboard-terminationprotectionenabled>
               terminationProtectionEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudtrail-dashboard.html#cfn-cloudtrail-dashboard-widgets>
               widgets :: (Prelude.Maybe [WidgetProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDashboard :: Dashboard
mkDashboard
  = Dashboard
      {haddock_workaround_ = (), name = Prelude.Nothing,
       refreshSchedule = Prelude.Nothing, tags = Prelude.Nothing,
       terminationProtectionEnabled = Prelude.Nothing,
       widgets = Prelude.Nothing}
instance ToResourceProperties Dashboard where
  toResourceProperties Dashboard {..}
    = ResourceProperties
        {awsType = "AWS::CloudTrail::Dashboard",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "RefreshSchedule" Prelude.<$> refreshSchedule,
                            (JSON..=) "Tags" Prelude.<$> tags,
                            (JSON..=) "TerminationProtectionEnabled"
                              Prelude.<$> terminationProtectionEnabled,
                            (JSON..=) "Widgets" Prelude.<$> widgets])}
instance JSON.ToJSON Dashboard where
  toJSON Dashboard {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "RefreshSchedule" Prelude.<$> refreshSchedule,
               (JSON..=) "Tags" Prelude.<$> tags,
               (JSON..=) "TerminationProtectionEnabled"
                 Prelude.<$> terminationProtectionEnabled,
               (JSON..=) "Widgets" Prelude.<$> widgets]))
instance Property "Name" Dashboard where
  type PropertyType "Name" Dashboard = Value Prelude.Text
  set newValue Dashboard {..}
    = Dashboard {name = Prelude.pure newValue, ..}
instance Property "RefreshSchedule" Dashboard where
  type PropertyType "RefreshSchedule" Dashboard = RefreshScheduleProperty
  set newValue Dashboard {..}
    = Dashboard {refreshSchedule = Prelude.pure newValue, ..}
instance Property "Tags" Dashboard where
  type PropertyType "Tags" Dashboard = [Tag]
  set newValue Dashboard {..}
    = Dashboard {tags = Prelude.pure newValue, ..}
instance Property "TerminationProtectionEnabled" Dashboard where
  type PropertyType "TerminationProtectionEnabled" Dashboard = Value Prelude.Bool
  set newValue Dashboard {..}
    = Dashboard
        {terminationProtectionEnabled = Prelude.pure newValue, ..}
instance Property "Widgets" Dashboard where
  type PropertyType "Widgets" Dashboard = [WidgetProperty]
  set newValue Dashboard {..}
    = Dashboard {widgets = Prelude.pure newValue, ..}