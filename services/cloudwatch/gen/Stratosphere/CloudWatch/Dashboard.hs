module Stratosphere.CloudWatch.Dashboard (
        Dashboard(..), mkDashboard
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Dashboard
  = Dashboard {dashboardBody :: (Value Prelude.Text),
               dashboardName :: (Prelude.Maybe (Value Prelude.Text))}
mkDashboard :: Value Prelude.Text -> Dashboard
mkDashboard dashboardBody
  = Dashboard
      {dashboardBody = dashboardBody, dashboardName = Prelude.Nothing}
instance ToResourceProperties Dashboard where
  toResourceProperties Dashboard {..}
    = ResourceProperties
        {awsType = "AWS::CloudWatch::Dashboard",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DashboardBody" JSON..= dashboardBody]
                           (Prelude.catMaybes
                              [(JSON..=) "DashboardName" Prelude.<$> dashboardName]))}
instance JSON.ToJSON Dashboard where
  toJSON Dashboard {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DashboardBody" JSON..= dashboardBody]
              (Prelude.catMaybes
                 [(JSON..=) "DashboardName" Prelude.<$> dashboardName])))
instance Property "DashboardBody" Dashboard where
  type PropertyType "DashboardBody" Dashboard = Value Prelude.Text
  set newValue Dashboard {..}
    = Dashboard {dashboardBody = newValue, ..}
instance Property "DashboardName" Dashboard where
  type PropertyType "DashboardName" Dashboard = Value Prelude.Text
  set newValue Dashboard {..}
    = Dashboard {dashboardName = Prelude.pure newValue, ..}