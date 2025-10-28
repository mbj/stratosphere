module Stratosphere.CloudWatch.Dashboard (
        Dashboard(..), mkDashboard
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Dashboard
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudwatch-dashboard.html>
    Dashboard {haddock_workaround_ :: (),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudwatch-dashboard.html#cfn-cloudwatch-dashboard-dashboardbody>
               dashboardBody :: (Value Prelude.Text),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudwatch-dashboard.html#cfn-cloudwatch-dashboard-dashboardname>
               dashboardName :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDashboard :: Value Prelude.Text -> Dashboard
mkDashboard dashboardBody
  = Dashboard
      {haddock_workaround_ = (), dashboardBody = dashboardBody,
       dashboardName = Prelude.Nothing}
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