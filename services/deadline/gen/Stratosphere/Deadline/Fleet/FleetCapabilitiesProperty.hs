module Stratosphere.Deadline.Fleet.FleetCapabilitiesProperty (
        module Exports, FleetCapabilitiesProperty(..),
        mkFleetCapabilitiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Deadline.Fleet.FleetAmountCapabilityProperty as Exports
import {-# SOURCE #-} Stratosphere.Deadline.Fleet.FleetAttributeCapabilityProperty as Exports
import Stratosphere.ResourceProperties
data FleetCapabilitiesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-deadline-fleet-fleetcapabilities.html>
    FleetCapabilitiesProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-deadline-fleet-fleetcapabilities.html#cfn-deadline-fleet-fleetcapabilities-amounts>
                               amounts :: (Prelude.Maybe [FleetAmountCapabilityProperty]),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-deadline-fleet-fleetcapabilities.html#cfn-deadline-fleet-fleetcapabilities-attributes>
                               attributes :: (Prelude.Maybe [FleetAttributeCapabilityProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFleetCapabilitiesProperty :: FleetCapabilitiesProperty
mkFleetCapabilitiesProperty
  = FleetCapabilitiesProperty
      {haddock_workaround_ = (), amounts = Prelude.Nothing,
       attributes = Prelude.Nothing}
instance ToResourceProperties FleetCapabilitiesProperty where
  toResourceProperties FleetCapabilitiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::Deadline::Fleet.FleetCapabilities",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Amounts" Prelude.<$> amounts,
                            (JSON..=) "Attributes" Prelude.<$> attributes])}
instance JSON.ToJSON FleetCapabilitiesProperty where
  toJSON FleetCapabilitiesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Amounts" Prelude.<$> amounts,
               (JSON..=) "Attributes" Prelude.<$> attributes]))
instance Property "Amounts" FleetCapabilitiesProperty where
  type PropertyType "Amounts" FleetCapabilitiesProperty = [FleetAmountCapabilityProperty]
  set newValue FleetCapabilitiesProperty {..}
    = FleetCapabilitiesProperty {amounts = Prelude.pure newValue, ..}
instance Property "Attributes" FleetCapabilitiesProperty where
  type PropertyType "Attributes" FleetCapabilitiesProperty = [FleetAttributeCapabilityProperty]
  set newValue FleetCapabilitiesProperty {..}
    = FleetCapabilitiesProperty
        {attributes = Prelude.pure newValue, ..}