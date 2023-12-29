module Stratosphere.EC2.LaunchTemplate.MonitoringProperty (
        MonitoringProperty(..), mkMonitoringProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MonitoringProperty
  = MonitoringProperty {enabled :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMonitoringProperty :: MonitoringProperty
mkMonitoringProperty
  = MonitoringProperty {enabled = Prelude.Nothing}
instance ToResourceProperties MonitoringProperty where
  toResourceProperties MonitoringProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::LaunchTemplate.Monitoring",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Enabled" Prelude.<$> enabled])}
instance JSON.ToJSON MonitoringProperty where
  toJSON MonitoringProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Enabled" Prelude.<$> enabled]))
instance Property "Enabled" MonitoringProperty where
  type PropertyType "Enabled" MonitoringProperty = Value Prelude.Bool
  set newValue MonitoringProperty {}
    = MonitoringProperty {enabled = Prelude.pure newValue, ..}