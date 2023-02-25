module Stratosphere.EC2.SpotFleet.SpotFleetMonitoringProperty (
        SpotFleetMonitoringProperty(..), mkSpotFleetMonitoringProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SpotFleetMonitoringProperty
  = SpotFleetMonitoringProperty {enabled :: (Prelude.Maybe (Value Prelude.Bool))}
mkSpotFleetMonitoringProperty :: SpotFleetMonitoringProperty
mkSpotFleetMonitoringProperty
  = SpotFleetMonitoringProperty {enabled = Prelude.Nothing}
instance ToResourceProperties SpotFleetMonitoringProperty where
  toResourceProperties SpotFleetMonitoringProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::SpotFleet.SpotFleetMonitoring",
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Enabled" Prelude.<$> enabled])}
instance JSON.ToJSON SpotFleetMonitoringProperty where
  toJSON SpotFleetMonitoringProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Enabled" Prelude.<$> enabled]))
instance Property "Enabled" SpotFleetMonitoringProperty where
  type PropertyType "Enabled" SpotFleetMonitoringProperty = Value Prelude.Bool
  set newValue SpotFleetMonitoringProperty {}
    = SpotFleetMonitoringProperty {enabled = Prelude.pure newValue, ..}