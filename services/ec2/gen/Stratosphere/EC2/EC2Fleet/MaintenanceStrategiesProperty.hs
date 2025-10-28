module Stratosphere.EC2.EC2Fleet.MaintenanceStrategiesProperty (
        module Exports, MaintenanceStrategiesProperty(..),
        mkMaintenanceStrategiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EC2.EC2Fleet.CapacityRebalanceProperty as Exports
import Stratosphere.ResourceProperties
data MaintenanceStrategiesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-maintenancestrategies.html>
    MaintenanceStrategiesProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-maintenancestrategies.html#cfn-ec2-ec2fleet-maintenancestrategies-capacityrebalance>
                                   capacityRebalance :: (Prelude.Maybe CapacityRebalanceProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMaintenanceStrategiesProperty :: MaintenanceStrategiesProperty
mkMaintenanceStrategiesProperty
  = MaintenanceStrategiesProperty
      {haddock_workaround_ = (), capacityRebalance = Prelude.Nothing}
instance ToResourceProperties MaintenanceStrategiesProperty where
  toResourceProperties MaintenanceStrategiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::EC2Fleet.MaintenanceStrategies",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CapacityRebalance" Prelude.<$> capacityRebalance])}
instance JSON.ToJSON MaintenanceStrategiesProperty where
  toJSON MaintenanceStrategiesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CapacityRebalance" Prelude.<$> capacityRebalance]))
instance Property "CapacityRebalance" MaintenanceStrategiesProperty where
  type PropertyType "CapacityRebalance" MaintenanceStrategiesProperty = CapacityRebalanceProperty
  set newValue MaintenanceStrategiesProperty {..}
    = MaintenanceStrategiesProperty
        {capacityRebalance = Prelude.pure newValue, ..}