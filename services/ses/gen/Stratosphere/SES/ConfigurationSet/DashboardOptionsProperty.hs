module Stratosphere.SES.ConfigurationSet.DashboardOptionsProperty (
        DashboardOptionsProperty(..), mkDashboardOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DashboardOptionsProperty
  = DashboardOptionsProperty {engagementMetrics :: (Value Prelude.Text)}
mkDashboardOptionsProperty ::
  Value Prelude.Text -> DashboardOptionsProperty
mkDashboardOptionsProperty engagementMetrics
  = DashboardOptionsProperty {engagementMetrics = engagementMetrics}
instance ToResourceProperties DashboardOptionsProperty where
  toResourceProperties DashboardOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::SES::ConfigurationSet.DashboardOptions",
         properties = ["EngagementMetrics" JSON..= engagementMetrics]}
instance JSON.ToJSON DashboardOptionsProperty where
  toJSON DashboardOptionsProperty {..}
    = JSON.object ["EngagementMetrics" JSON..= engagementMetrics]
instance Property "EngagementMetrics" DashboardOptionsProperty where
  type PropertyType "EngagementMetrics" DashboardOptionsProperty = Value Prelude.Text
  set newValue DashboardOptionsProperty {}
    = DashboardOptionsProperty {engagementMetrics = newValue, ..}