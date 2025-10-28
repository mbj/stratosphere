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
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotmaintenancestrategies.html>
    SpotMaintenanceStrategiesProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotmaintenancestrategies.html#cfn-ec2-spotfleet-spotmaintenancestrategies-capacityrebalance>
                                       capacityRebalance :: (Prelude.Maybe SpotCapacityRebalanceProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
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