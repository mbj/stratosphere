module Stratosphere.ODB.CloudAutonomousVmCluster.MaintenanceWindowProperty (
        MaintenanceWindowProperty(..), mkMaintenanceWindowProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MaintenanceWindowProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-odb-cloudautonomousvmcluster-maintenancewindow.html>
    MaintenanceWindowProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-odb-cloudautonomousvmcluster-maintenancewindow.html#cfn-odb-cloudautonomousvmcluster-maintenancewindow-daysofweek>
                               daysOfWeek :: (Prelude.Maybe (ValueList Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-odb-cloudautonomousvmcluster-maintenancewindow.html#cfn-odb-cloudautonomousvmcluster-maintenancewindow-hoursofday>
                               hoursOfDay :: (Prelude.Maybe (ValueList Prelude.Integer)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-odb-cloudautonomousvmcluster-maintenancewindow.html#cfn-odb-cloudautonomousvmcluster-maintenancewindow-leadtimeinweeks>
                               leadTimeInWeeks :: (Prelude.Maybe (Value Prelude.Integer)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-odb-cloudautonomousvmcluster-maintenancewindow.html#cfn-odb-cloudautonomousvmcluster-maintenancewindow-months>
                               months :: (Prelude.Maybe (ValueList Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-odb-cloudautonomousvmcluster-maintenancewindow.html#cfn-odb-cloudautonomousvmcluster-maintenancewindow-preference>
                               preference :: (Prelude.Maybe (Value Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-odb-cloudautonomousvmcluster-maintenancewindow.html#cfn-odb-cloudautonomousvmcluster-maintenancewindow-weeksofmonth>
                               weeksOfMonth :: (Prelude.Maybe (ValueList Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMaintenanceWindowProperty :: MaintenanceWindowProperty
mkMaintenanceWindowProperty
  = MaintenanceWindowProperty
      {haddock_workaround_ = (), daysOfWeek = Prelude.Nothing,
       hoursOfDay = Prelude.Nothing, leadTimeInWeeks = Prelude.Nothing,
       months = Prelude.Nothing, preference = Prelude.Nothing,
       weeksOfMonth = Prelude.Nothing}
instance ToResourceProperties MaintenanceWindowProperty where
  toResourceProperties MaintenanceWindowProperty {..}
    = ResourceProperties
        {awsType = "AWS::ODB::CloudAutonomousVmCluster.MaintenanceWindow",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DaysOfWeek" Prelude.<$> daysOfWeek,
                            (JSON..=) "HoursOfDay" Prelude.<$> hoursOfDay,
                            (JSON..=) "LeadTimeInWeeks" Prelude.<$> leadTimeInWeeks,
                            (JSON..=) "Months" Prelude.<$> months,
                            (JSON..=) "Preference" Prelude.<$> preference,
                            (JSON..=) "WeeksOfMonth" Prelude.<$> weeksOfMonth])}
instance JSON.ToJSON MaintenanceWindowProperty where
  toJSON MaintenanceWindowProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DaysOfWeek" Prelude.<$> daysOfWeek,
               (JSON..=) "HoursOfDay" Prelude.<$> hoursOfDay,
               (JSON..=) "LeadTimeInWeeks" Prelude.<$> leadTimeInWeeks,
               (JSON..=) "Months" Prelude.<$> months,
               (JSON..=) "Preference" Prelude.<$> preference,
               (JSON..=) "WeeksOfMonth" Prelude.<$> weeksOfMonth]))
instance Property "DaysOfWeek" MaintenanceWindowProperty where
  type PropertyType "DaysOfWeek" MaintenanceWindowProperty = ValueList Prelude.Text
  set newValue MaintenanceWindowProperty {..}
    = MaintenanceWindowProperty
        {daysOfWeek = Prelude.pure newValue, ..}
instance Property "HoursOfDay" MaintenanceWindowProperty where
  type PropertyType "HoursOfDay" MaintenanceWindowProperty = ValueList Prelude.Integer
  set newValue MaintenanceWindowProperty {..}
    = MaintenanceWindowProperty
        {hoursOfDay = Prelude.pure newValue, ..}
instance Property "LeadTimeInWeeks" MaintenanceWindowProperty where
  type PropertyType "LeadTimeInWeeks" MaintenanceWindowProperty = Value Prelude.Integer
  set newValue MaintenanceWindowProperty {..}
    = MaintenanceWindowProperty
        {leadTimeInWeeks = Prelude.pure newValue, ..}
instance Property "Months" MaintenanceWindowProperty where
  type PropertyType "Months" MaintenanceWindowProperty = ValueList Prelude.Text
  set newValue MaintenanceWindowProperty {..}
    = MaintenanceWindowProperty {months = Prelude.pure newValue, ..}
instance Property "Preference" MaintenanceWindowProperty where
  type PropertyType "Preference" MaintenanceWindowProperty = Value Prelude.Text
  set newValue MaintenanceWindowProperty {..}
    = MaintenanceWindowProperty
        {preference = Prelude.pure newValue, ..}
instance Property "WeeksOfMonth" MaintenanceWindowProperty where
  type PropertyType "WeeksOfMonth" MaintenanceWindowProperty = ValueList Prelude.Integer
  set newValue MaintenanceWindowProperty {..}
    = MaintenanceWindowProperty
        {weeksOfMonth = Prelude.pure newValue, ..}