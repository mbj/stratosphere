module Stratosphere.EC2.SpotFleet.SpotMaintenanceStrategiesProperty (
        module Exports, SpotMaintenanceStrategiesProperty(..),
        mkSpotMaintenanceStrategiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EC2.SpotFleet.SpotCapacityRebalanceProperty as Exports
import Stratosphere.ResourceProperties
data SpotMaintenanceStrategiesProperty
  = SpotMaintenanceStrategiesProperty {capacityRebalance :: (Prelude.Maybe SpotCapacityRebalanceProperty)}
mkSpotMaintenanceStrategiesProperty ::
  SpotMaintenanceStrategiesProperty
mkSpotMaintenanceStrategiesProperty
  = SpotMaintenanceStrategiesProperty
      {capacityRebalance = Prelude.Nothing}
instance ToResourceProperties SpotMaintenanceStrategiesProperty where
  toResourceProperties SpotMaintenanceStrategiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::SpotFleet.SpotMaintenanceStrategies",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CapacityRebalance" Prelude.<$> capacityRebalance])}
instance JSON.ToJSON SpotMaintenanceStrategiesProperty where
  toJSON SpotMaintenanceStrategiesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CapacityRebalance" Prelude.<$> capacityRebalance]))
instance Property "CapacityRebalance" SpotMaintenanceStrategiesProperty where
  type PropertyType "CapacityRebalance" SpotMaintenanceStrategiesProperty = SpotCapacityRebalanceProperty
  set newValue SpotMaintenanceStrategiesProperty {}
    = SpotMaintenanceStrategiesProperty
        {capacityRebalance = Prelude.pure newValue, ..}