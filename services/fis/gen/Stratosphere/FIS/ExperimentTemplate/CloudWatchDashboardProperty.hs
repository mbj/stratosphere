module Stratosphere.FIS.ExperimentTemplate.CloudWatchDashboardProperty (
        CloudWatchDashboardProperty(..), mkCloudWatchDashboardProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CloudWatchDashboardProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fis-experimenttemplate-cloudwatchdashboard.html>
    CloudWatchDashboardProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fis-experimenttemplate-cloudwatchdashboard.html#cfn-fis-experimenttemplate-cloudwatchdashboard-dashboardidentifier>
                                 dashboardIdentifier :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCloudWatchDashboardProperty ::
  Value Prelude.Text -> CloudWatchDashboardProperty
mkCloudWatchDashboardProperty dashboardIdentifier
  = CloudWatchDashboardProperty
      {haddock_workaround_ = (),
       dashboardIdentifier = dashboardIdentifier}
instance ToResourceProperties CloudWatchDashboardProperty where
  toResourceProperties CloudWatchDashboardProperty {..}
    = ResourceProperties
        {awsType = "AWS::FIS::ExperimentTemplate.CloudWatchDashboard",
         supportsTags = Prelude.False,
         properties = ["DashboardIdentifier" JSON..= dashboardIdentifier]}
instance JSON.ToJSON CloudWatchDashboardProperty where
  toJSON CloudWatchDashboardProperty {..}
    = JSON.object ["DashboardIdentifier" JSON..= dashboardIdentifier]
instance Property "DashboardIdentifier" CloudWatchDashboardProperty where
  type PropertyType "DashboardIdentifier" CloudWatchDashboardProperty = Value Prelude.Text
  set newValue CloudWatchDashboardProperty {..}
    = CloudWatchDashboardProperty {dashboardIdentifier = newValue, ..}