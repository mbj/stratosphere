module Stratosphere.Deadline.Fleet.FleetAttributeCapabilityProperty (
        FleetAttributeCapabilityProperty(..),
        mkFleetAttributeCapabilityProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FleetAttributeCapabilityProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-deadline-fleet-fleetattributecapability.html>
    FleetAttributeCapabilityProperty {haddock_workaround_ :: (),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-deadline-fleet-fleetattributecapability.html#cfn-deadline-fleet-fleetattributecapability-name>
                                      name :: (Value Prelude.Text),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-deadline-fleet-fleetattributecapability.html#cfn-deadline-fleet-fleetattributecapability-values>
                                      values :: (ValueList Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFleetAttributeCapabilityProperty ::
  Value Prelude.Text
  -> ValueList Prelude.Text -> FleetAttributeCapabilityProperty
mkFleetAttributeCapabilityProperty name values
  = FleetAttributeCapabilityProperty
      {haddock_workaround_ = (), name = name, values = values}
instance ToResourceProperties FleetAttributeCapabilityProperty where
  toResourceProperties FleetAttributeCapabilityProperty {..}
    = ResourceProperties
        {awsType = "AWS::Deadline::Fleet.FleetAttributeCapability",
         supportsTags = Prelude.False,
         properties = ["Name" JSON..= name, "Values" JSON..= values]}
instance JSON.ToJSON FleetAttributeCapabilityProperty where
  toJSON FleetAttributeCapabilityProperty {..}
    = JSON.object ["Name" JSON..= name, "Values" JSON..= values]
instance Property "Name" FleetAttributeCapabilityProperty where
  type PropertyType "Name" FleetAttributeCapabilityProperty = Value Prelude.Text
  set newValue FleetAttributeCapabilityProperty {..}
    = FleetAttributeCapabilityProperty {name = newValue, ..}
instance Property "Values" FleetAttributeCapabilityProperty where
  type PropertyType "Values" FleetAttributeCapabilityProperty = ValueList Prelude.Text
  set newValue FleetAttributeCapabilityProperty {..}
    = FleetAttributeCapabilityProperty {values = newValue, ..}