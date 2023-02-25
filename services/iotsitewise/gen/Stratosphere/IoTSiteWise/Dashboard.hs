module Stratosphere.IoTSiteWise.Dashboard (
        Dashboard(..), mkDashboard
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Dashboard
  = Dashboard {dashboardDefinition :: (Value Prelude.Text),
               dashboardDescription :: (Value Prelude.Text),
               dashboardName :: (Value Prelude.Text),
               projectId :: (Prelude.Maybe (Value Prelude.Text)),
               tags :: (Prelude.Maybe [Tag])}
mkDashboard ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> Dashboard
mkDashboard dashboardDefinition dashboardDescription dashboardName
  = Dashboard
      {dashboardDefinition = dashboardDefinition,
       dashboardDescription = dashboardDescription,
       dashboardName = dashboardName, projectId = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties Dashboard where
  toResourceProperties Dashboard {..}
    = ResourceProperties
        {awsType = "AWS::IoTSiteWise::Dashboard",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DashboardDefinition" JSON..= dashboardDefinition,
                            "DashboardDescription" JSON..= dashboardDescription,
                            "DashboardName" JSON..= dashboardName]
                           (Prelude.catMaybes
                              [(JSON..=) "ProjectId" Prelude.<$> projectId,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Dashboard where
  toJSON Dashboard {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DashboardDefinition" JSON..= dashboardDefinition,
               "DashboardDescription" JSON..= dashboardDescription,
               "DashboardName" JSON..= dashboardName]
              (Prelude.catMaybes
                 [(JSON..=) "ProjectId" Prelude.<$> projectId,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "DashboardDefinition" Dashboard where
  type PropertyType "DashboardDefinition" Dashboard = Value Prelude.Text
  set newValue Dashboard {..}
    = Dashboard {dashboardDefinition = newValue, ..}
instance Property "DashboardDescription" Dashboard where
  type PropertyType "DashboardDescription" Dashboard = Value Prelude.Text
  set newValue Dashboard {..}
    = Dashboard {dashboardDescription = newValue, ..}
instance Property "DashboardName" Dashboard where
  type PropertyType "DashboardName" Dashboard = Value Prelude.Text
  set newValue Dashboard {..}
    = Dashboard {dashboardName = newValue, ..}
instance Property "ProjectId" Dashboard where
  type PropertyType "ProjectId" Dashboard = Value Prelude.Text
  set newValue Dashboard {..}
    = Dashboard {projectId = Prelude.pure newValue, ..}
instance Property "Tags" Dashboard where
  type PropertyType "Tags" Dashboard = [Tag]
  set newValue Dashboard {..}
    = Dashboard {tags = Prelude.pure newValue, ..}