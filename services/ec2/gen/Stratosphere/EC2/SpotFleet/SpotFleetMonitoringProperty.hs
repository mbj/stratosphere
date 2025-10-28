module Stratosphere.EC2.SpotFleet.SpotFleetMonitoringProperty (
        SpotFleetMonitoringProperty(..), mkSpotFleetMonitoringProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SpotFleetMonitoringProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetmonitoring.html>
    SpotFleetMonitoringProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetmonitoring.html#cfn-ec2-spotfleet-spotfleetmonitoring-enabled>
                                 enabled :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSpotFleetMonitoringProperty :: SpotFleetMonitoringProperty
mkSpotFleetMonitoringProperty
  = SpotFleetMonitoringProperty
      {haddock_workaround_ = (), enabled = Prelude.Nothing}
instance ToResourceProperties SpotFleetMonitoringProperty where
  toResourceProperties SpotFleetMonitoringProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::SpotFleet.SpotFleetMonitoring",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Enabled" Prelude.<$> enabled])}
instance JSON.ToJSON SpotFleetMonitoringProperty where
  toJSON SpotFleetMonitoringProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Enabled" Prelude.<$> enabled]))
instance Property "Enabled" SpotFleetMonitoringProperty where
  type PropertyType "Enabled" SpotFleetMonitoringProperty = Value Prelude.Bool
  set newValue SpotFleetMonitoringProperty {..}
    = SpotFleetMonitoringProperty {enabled = Prelude.pure newValue, ..}