module Stratosphere.EMR.InstanceFleetConfig (
        module Exports, InstanceFleetConfig(..), mkInstanceFleetConfig
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EMR.InstanceFleetConfig.InstanceFleetProvisioningSpecificationsProperty as Exports
import {-# SOURCE #-} Stratosphere.EMR.InstanceFleetConfig.InstanceTypeConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data InstanceFleetConfig
  = InstanceFleetConfig {clusterId :: (Value Prelude.Text),
                         instanceFleetType :: (Value Prelude.Text),
                         instanceTypeConfigs :: (Prelude.Maybe [InstanceTypeConfigProperty]),
                         launchSpecifications :: (Prelude.Maybe InstanceFleetProvisioningSpecificationsProperty),
                         name :: (Prelude.Maybe (Value Prelude.Text)),
                         targetOnDemandCapacity :: (Prelude.Maybe (Value Prelude.Integer)),
                         targetSpotCapacity :: (Prelude.Maybe (Value Prelude.Integer))}
mkInstanceFleetConfig ::
  Value Prelude.Text -> Value Prelude.Text -> InstanceFleetConfig
mkInstanceFleetConfig clusterId instanceFleetType
  = InstanceFleetConfig
      {clusterId = clusterId, instanceFleetType = instanceFleetType,
       instanceTypeConfigs = Prelude.Nothing,
       launchSpecifications = Prelude.Nothing, name = Prelude.Nothing,
       targetOnDemandCapacity = Prelude.Nothing,
       targetSpotCapacity = Prelude.Nothing}
instance ToResourceProperties InstanceFleetConfig where
  toResourceProperties InstanceFleetConfig {..}
    = ResourceProperties
        {awsType = "AWS::EMR::InstanceFleetConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ClusterId" JSON..= clusterId,
                            "InstanceFleetType" JSON..= instanceFleetType]
                           (Prelude.catMaybes
                              [(JSON..=) "InstanceTypeConfigs" Prelude.<$> instanceTypeConfigs,
                               (JSON..=) "LaunchSpecifications" Prelude.<$> launchSpecifications,
                               (JSON..=) "Name" Prelude.<$> name,
                               (JSON..=) "TargetOnDemandCapacity"
                                 Prelude.<$> targetOnDemandCapacity,
                               (JSON..=) "TargetSpotCapacity" Prelude.<$> targetSpotCapacity]))}
instance JSON.ToJSON InstanceFleetConfig where
  toJSON InstanceFleetConfig {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ClusterId" JSON..= clusterId,
               "InstanceFleetType" JSON..= instanceFleetType]
              (Prelude.catMaybes
                 [(JSON..=) "InstanceTypeConfigs" Prelude.<$> instanceTypeConfigs,
                  (JSON..=) "LaunchSpecifications" Prelude.<$> launchSpecifications,
                  (JSON..=) "Name" Prelude.<$> name,
                  (JSON..=) "TargetOnDemandCapacity"
                    Prelude.<$> targetOnDemandCapacity,
                  (JSON..=) "TargetSpotCapacity" Prelude.<$> targetSpotCapacity])))
instance Property "ClusterId" InstanceFleetConfig where
  type PropertyType "ClusterId" InstanceFleetConfig = Value Prelude.Text
  set newValue InstanceFleetConfig {..}
    = InstanceFleetConfig {clusterId = newValue, ..}
instance Property "InstanceFleetType" InstanceFleetConfig where
  type PropertyType "InstanceFleetType" InstanceFleetConfig = Value Prelude.Text
  set newValue InstanceFleetConfig {..}
    = InstanceFleetConfig {instanceFleetType = newValue, ..}
instance Property "InstanceTypeConfigs" InstanceFleetConfig where
  type PropertyType "InstanceTypeConfigs" InstanceFleetConfig = [InstanceTypeConfigProperty]
  set newValue InstanceFleetConfig {..}
    = InstanceFleetConfig
        {instanceTypeConfigs = Prelude.pure newValue, ..}
instance Property "LaunchSpecifications" InstanceFleetConfig where
  type PropertyType "LaunchSpecifications" InstanceFleetConfig = InstanceFleetProvisioningSpecificationsProperty
  set newValue InstanceFleetConfig {..}
    = InstanceFleetConfig
        {launchSpecifications = Prelude.pure newValue, ..}
instance Property "Name" InstanceFleetConfig where
  type PropertyType "Name" InstanceFleetConfig = Value Prelude.Text
  set newValue InstanceFleetConfig {..}
    = InstanceFleetConfig {name = Prelude.pure newValue, ..}
instance Property "TargetOnDemandCapacity" InstanceFleetConfig where
  type PropertyType "TargetOnDemandCapacity" InstanceFleetConfig = Value Prelude.Integer
  set newValue InstanceFleetConfig {..}
    = InstanceFleetConfig
        {targetOnDemandCapacity = Prelude.pure newValue, ..}
instance Property "TargetSpotCapacity" InstanceFleetConfig where
  type PropertyType "TargetSpotCapacity" InstanceFleetConfig = Value Prelude.Integer
  set newValue InstanceFleetConfig {..}
    = InstanceFleetConfig
        {targetSpotCapacity = Prelude.pure newValue, ..}