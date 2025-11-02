module Stratosphere.SES.ConfigurationSet.DashboardOptionsProperty (
        DashboardOptionsProperty(..), mkDashboardOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DashboardOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-configurationset-dashboardoptions.html>
    DashboardOptionsProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-configurationset-dashboardoptions.html#cfn-ses-configurationset-dashboardoptions-engagementmetrics>
                              engagementMetrics :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDashboardOptionsProperty ::
  Value Prelude.Text -> DashboardOptionsProperty
mkDashboardOptionsProperty engagementMetrics
  = DashboardOptionsProperty
      {haddock_workaround_ = (), engagementMetrics = engagementMetrics}
instance ToResourceProperties DashboardOptionsProperty where
  toResourceProperties DashboardOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::SES::ConfigurationSet.DashboardOptions",
         supportsTags = Prelude.False,
         properties = ["EngagementMetrics" JSON..= engagementMetrics]}
instance JSON.ToJSON DashboardOptionsProperty where
  toJSON DashboardOptionsProperty {..}
    = JSON.object ["EngagementMetrics" JSON..= engagementMetrics]
instance Property "EngagementMetrics" DashboardOptionsProperty where
  type PropertyType "EngagementMetrics" DashboardOptionsProperty = Value Prelude.Text
  set newValue DashboardOptionsProperty {..}
    = DashboardOptionsProperty {engagementMetrics = newValue, ..}