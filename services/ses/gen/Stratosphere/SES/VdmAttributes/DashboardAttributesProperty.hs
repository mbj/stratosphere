module Stratosphere.SES.VdmAttributes.DashboardAttributesProperty (
        DashboardAttributesProperty(..), mkDashboardAttributesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DashboardAttributesProperty
  = DashboardAttributesProperty {engagementMetrics :: (Prelude.Maybe (Value Prelude.Text))}
mkDashboardAttributesProperty :: DashboardAttributesProperty
mkDashboardAttributesProperty
  = DashboardAttributesProperty {engagementMetrics = Prelude.Nothing}
instance ToResourceProperties DashboardAttributesProperty where
  toResourceProperties DashboardAttributesProperty {..}
    = ResourceProperties
        {awsType = "AWS::SES::VdmAttributes.DashboardAttributes",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "EngagementMetrics" Prelude.<$> engagementMetrics])}
instance JSON.ToJSON DashboardAttributesProperty where
  toJSON DashboardAttributesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "EngagementMetrics" Prelude.<$> engagementMetrics]))
instance Property "EngagementMetrics" DashboardAttributesProperty where
  type PropertyType "EngagementMetrics" DashboardAttributesProperty = Value Prelude.Text
  set newValue DashboardAttributesProperty {}
    = DashboardAttributesProperty
        {engagementMetrics = Prelude.pure newValue, ..}