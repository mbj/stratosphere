module Stratosphere.SSMIncidents.ReplicationSet.ReplicationRegionProperty (
        module Exports, ReplicationRegionProperty(..),
        mkReplicationRegionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SSMIncidents.ReplicationSet.RegionConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ReplicationRegionProperty
  = ReplicationRegionProperty {regionConfiguration :: (Prelude.Maybe RegionConfigurationProperty),
                               regionName :: (Prelude.Maybe (Value Prelude.Text))}
mkReplicationRegionProperty :: ReplicationRegionProperty
mkReplicationRegionProperty
  = ReplicationRegionProperty
      {regionConfiguration = Prelude.Nothing,
       regionName = Prelude.Nothing}
instance ToResourceProperties ReplicationRegionProperty where
  toResourceProperties ReplicationRegionProperty {..}
    = ResourceProperties
        {awsType = "AWS::SSMIncidents::ReplicationSet.ReplicationRegion",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "RegionConfiguration" Prelude.<$> regionConfiguration,
                            (JSON..=) "RegionName" Prelude.<$> regionName])}
instance JSON.ToJSON ReplicationRegionProperty where
  toJSON ReplicationRegionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "RegionConfiguration" Prelude.<$> regionConfiguration,
               (JSON..=) "RegionName" Prelude.<$> regionName]))
instance Property "RegionConfiguration" ReplicationRegionProperty where
  type PropertyType "RegionConfiguration" ReplicationRegionProperty = RegionConfigurationProperty
  set newValue ReplicationRegionProperty {..}
    = ReplicationRegionProperty
        {regionConfiguration = Prelude.pure newValue, ..}
instance Property "RegionName" ReplicationRegionProperty where
  type PropertyType "RegionName" ReplicationRegionProperty = Value Prelude.Text
  set newValue ReplicationRegionProperty {..}
    = ReplicationRegionProperty
        {regionName = Prelude.pure newValue, ..}