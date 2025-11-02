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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotsitewise-dashboard.html>
    Dashboard {haddock_workaround_ :: (),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotsitewise-dashboard.html#cfn-iotsitewise-dashboard-dashboarddefinition>
               dashboardDefinition :: (Value Prelude.Text),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotsitewise-dashboard.html#cfn-iotsitewise-dashboard-dashboarddescription>
               dashboardDescription :: (Value Prelude.Text),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotsitewise-dashboard.html#cfn-iotsitewise-dashboard-dashboardname>
               dashboardName :: (Value Prelude.Text),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotsitewise-dashboard.html#cfn-iotsitewise-dashboard-projectid>
               projectId :: (Prelude.Maybe (Value Prelude.Text)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotsitewise-dashboard.html#cfn-iotsitewise-dashboard-tags>
               tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDashboard ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> Dashboard
mkDashboard dashboardDefinition dashboardDescription dashboardName
  = Dashboard
      {haddock_workaround_ = (),
       dashboardDefinition = dashboardDefinition,
       dashboardDescription = dashboardDescription,
       dashboardName = dashboardName, projectId = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties Dashboard where
  toResourceProperties Dashboard {..}
    = ResourceProperties
        {awsType = "AWS::IoTSiteWise::Dashboard",
         supportsTags = Prelude.True,
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