module Stratosphere.CodeDeploy.DeploymentConfig.ZonalConfigProperty (
        module Exports, ZonalConfigProperty(..), mkZonalConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CodeDeploy.DeploymentConfig.MinimumHealthyHostsPerZoneProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ZonalConfigProperty
  = ZonalConfigProperty {firstZoneMonitorDurationInSeconds :: (Prelude.Maybe (Value Prelude.Integer)),
                         minimumHealthyHostsPerZone :: (Prelude.Maybe MinimumHealthyHostsPerZoneProperty),
                         monitorDurationInSeconds :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkZonalConfigProperty :: ZonalConfigProperty
mkZonalConfigProperty
  = ZonalConfigProperty
      {firstZoneMonitorDurationInSeconds = Prelude.Nothing,
       minimumHealthyHostsPerZone = Prelude.Nothing,
       monitorDurationInSeconds = Prelude.Nothing}
instance ToResourceProperties ZonalConfigProperty where
  toResourceProperties ZonalConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::CodeDeploy::DeploymentConfig.ZonalConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "FirstZoneMonitorDurationInSeconds"
                              Prelude.<$> firstZoneMonitorDurationInSeconds,
                            (JSON..=) "MinimumHealthyHostsPerZone"
                              Prelude.<$> minimumHealthyHostsPerZone,
                            (JSON..=) "MonitorDurationInSeconds"
                              Prelude.<$> monitorDurationInSeconds])}
instance JSON.ToJSON ZonalConfigProperty where
  toJSON ZonalConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "FirstZoneMonitorDurationInSeconds"
                 Prelude.<$> firstZoneMonitorDurationInSeconds,
               (JSON..=) "MinimumHealthyHostsPerZone"
                 Prelude.<$> minimumHealthyHostsPerZone,
               (JSON..=) "MonitorDurationInSeconds"
                 Prelude.<$> monitorDurationInSeconds]))
instance Property "FirstZoneMonitorDurationInSeconds" ZonalConfigProperty where
  type PropertyType "FirstZoneMonitorDurationInSeconds" ZonalConfigProperty = Value Prelude.Integer
  set newValue ZonalConfigProperty {..}
    = ZonalConfigProperty
        {firstZoneMonitorDurationInSeconds = Prelude.pure newValue, ..}
instance Property "MinimumHealthyHostsPerZone" ZonalConfigProperty where
  type PropertyType "MinimumHealthyHostsPerZone" ZonalConfigProperty = MinimumHealthyHostsPerZoneProperty
  set newValue ZonalConfigProperty {..}
    = ZonalConfigProperty
        {minimumHealthyHostsPerZone = Prelude.pure newValue, ..}
instance Property "MonitorDurationInSeconds" ZonalConfigProperty where
  type PropertyType "MonitorDurationInSeconds" ZonalConfigProperty = Value Prelude.Integer
  set newValue ZonalConfigProperty {..}
    = ZonalConfigProperty
        {monitorDurationInSeconds = Prelude.pure newValue, ..}