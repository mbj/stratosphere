module Stratosphere.FSx.Volume.OntapConfigurationProperty (
        module Exports, OntapConfigurationProperty(..),
        mkOntapConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.FSx.Volume.AggregateConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.FSx.Volume.SnaplockConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.FSx.Volume.TieringPolicyProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OntapConfigurationProperty
  = OntapConfigurationProperty {aggregateConfiguration :: (Prelude.Maybe AggregateConfigurationProperty),
                                copyTagsToBackups :: (Prelude.Maybe (Value Prelude.Text)),
                                junctionPath :: (Prelude.Maybe (Value Prelude.Text)),
                                ontapVolumeType :: (Prelude.Maybe (Value Prelude.Text)),
                                securityStyle :: (Prelude.Maybe (Value Prelude.Text)),
                                sizeInBytes :: (Prelude.Maybe (Value Prelude.Text)),
                                sizeInMegabytes :: (Prelude.Maybe (Value Prelude.Text)),
                                snaplockConfiguration :: (Prelude.Maybe SnaplockConfigurationProperty),
                                snapshotPolicy :: (Prelude.Maybe (Value Prelude.Text)),
                                storageEfficiencyEnabled :: (Prelude.Maybe (Value Prelude.Text)),
                                storageVirtualMachineId :: (Value Prelude.Text),
                                tieringPolicy :: (Prelude.Maybe TieringPolicyProperty),
                                volumeStyle :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOntapConfigurationProperty ::
  Value Prelude.Text -> OntapConfigurationProperty
mkOntapConfigurationProperty storageVirtualMachineId
  = OntapConfigurationProperty
      {storageVirtualMachineId = storageVirtualMachineId,
       aggregateConfiguration = Prelude.Nothing,
       copyTagsToBackups = Prelude.Nothing,
       junctionPath = Prelude.Nothing, ontapVolumeType = Prelude.Nothing,
       securityStyle = Prelude.Nothing, sizeInBytes = Prelude.Nothing,
       sizeInMegabytes = Prelude.Nothing,
       snaplockConfiguration = Prelude.Nothing,
       snapshotPolicy = Prelude.Nothing,
       storageEfficiencyEnabled = Prelude.Nothing,
       tieringPolicy = Prelude.Nothing, volumeStyle = Prelude.Nothing}
instance ToResourceProperties OntapConfigurationProperty where
  toResourceProperties OntapConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::FSx::Volume.OntapConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["StorageVirtualMachineId" JSON..= storageVirtualMachineId]
                           (Prelude.catMaybes
                              [(JSON..=) "AggregateConfiguration"
                                 Prelude.<$> aggregateConfiguration,
                               (JSON..=) "CopyTagsToBackups" Prelude.<$> copyTagsToBackups,
                               (JSON..=) "JunctionPath" Prelude.<$> junctionPath,
                               (JSON..=) "OntapVolumeType" Prelude.<$> ontapVolumeType,
                               (JSON..=) "SecurityStyle" Prelude.<$> securityStyle,
                               (JSON..=) "SizeInBytes" Prelude.<$> sizeInBytes,
                               (JSON..=) "SizeInMegabytes" Prelude.<$> sizeInMegabytes,
                               (JSON..=) "SnaplockConfiguration"
                                 Prelude.<$> snaplockConfiguration,
                               (JSON..=) "SnapshotPolicy" Prelude.<$> snapshotPolicy,
                               (JSON..=) "StorageEfficiencyEnabled"
                                 Prelude.<$> storageEfficiencyEnabled,
                               (JSON..=) "TieringPolicy" Prelude.<$> tieringPolicy,
                               (JSON..=) "VolumeStyle" Prelude.<$> volumeStyle]))}
instance JSON.ToJSON OntapConfigurationProperty where
  toJSON OntapConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["StorageVirtualMachineId" JSON..= storageVirtualMachineId]
              (Prelude.catMaybes
                 [(JSON..=) "AggregateConfiguration"
                    Prelude.<$> aggregateConfiguration,
                  (JSON..=) "CopyTagsToBackups" Prelude.<$> copyTagsToBackups,
                  (JSON..=) "JunctionPath" Prelude.<$> junctionPath,
                  (JSON..=) "OntapVolumeType" Prelude.<$> ontapVolumeType,
                  (JSON..=) "SecurityStyle" Prelude.<$> securityStyle,
                  (JSON..=) "SizeInBytes" Prelude.<$> sizeInBytes,
                  (JSON..=) "SizeInMegabytes" Prelude.<$> sizeInMegabytes,
                  (JSON..=) "SnaplockConfiguration"
                    Prelude.<$> snaplockConfiguration,
                  (JSON..=) "SnapshotPolicy" Prelude.<$> snapshotPolicy,
                  (JSON..=) "StorageEfficiencyEnabled"
                    Prelude.<$> storageEfficiencyEnabled,
                  (JSON..=) "TieringPolicy" Prelude.<$> tieringPolicy,
                  (JSON..=) "VolumeStyle" Prelude.<$> volumeStyle])))
instance Property "AggregateConfiguration" OntapConfigurationProperty where
  type PropertyType "AggregateConfiguration" OntapConfigurationProperty = AggregateConfigurationProperty
  set newValue OntapConfigurationProperty {..}
    = OntapConfigurationProperty
        {aggregateConfiguration = Prelude.pure newValue, ..}
instance Property "CopyTagsToBackups" OntapConfigurationProperty where
  type PropertyType "CopyTagsToBackups" OntapConfigurationProperty = Value Prelude.Text
  set newValue OntapConfigurationProperty {..}
    = OntapConfigurationProperty
        {copyTagsToBackups = Prelude.pure newValue, ..}
instance Property "JunctionPath" OntapConfigurationProperty where
  type PropertyType "JunctionPath" OntapConfigurationProperty = Value Prelude.Text
  set newValue OntapConfigurationProperty {..}
    = OntapConfigurationProperty
        {junctionPath = Prelude.pure newValue, ..}
instance Property "OntapVolumeType" OntapConfigurationProperty where
  type PropertyType "OntapVolumeType" OntapConfigurationProperty = Value Prelude.Text
  set newValue OntapConfigurationProperty {..}
    = OntapConfigurationProperty
        {ontapVolumeType = Prelude.pure newValue, ..}
instance Property "SecurityStyle" OntapConfigurationProperty where
  type PropertyType "SecurityStyle" OntapConfigurationProperty = Value Prelude.Text
  set newValue OntapConfigurationProperty {..}
    = OntapConfigurationProperty
        {securityStyle = Prelude.pure newValue, ..}
instance Property "SizeInBytes" OntapConfigurationProperty where
  type PropertyType "SizeInBytes" OntapConfigurationProperty = Value Prelude.Text
  set newValue OntapConfigurationProperty {..}
    = OntapConfigurationProperty
        {sizeInBytes = Prelude.pure newValue, ..}
instance Property "SizeInMegabytes" OntapConfigurationProperty where
  type PropertyType "SizeInMegabytes" OntapConfigurationProperty = Value Prelude.Text
  set newValue OntapConfigurationProperty {..}
    = OntapConfigurationProperty
        {sizeInMegabytes = Prelude.pure newValue, ..}
instance Property "SnaplockConfiguration" OntapConfigurationProperty where
  type PropertyType "SnaplockConfiguration" OntapConfigurationProperty = SnaplockConfigurationProperty
  set newValue OntapConfigurationProperty {..}
    = OntapConfigurationProperty
        {snaplockConfiguration = Prelude.pure newValue, ..}
instance Property "SnapshotPolicy" OntapConfigurationProperty where
  type PropertyType "SnapshotPolicy" OntapConfigurationProperty = Value Prelude.Text
  set newValue OntapConfigurationProperty {..}
    = OntapConfigurationProperty
        {snapshotPolicy = Prelude.pure newValue, ..}
instance Property "StorageEfficiencyEnabled" OntapConfigurationProperty where
  type PropertyType "StorageEfficiencyEnabled" OntapConfigurationProperty = Value Prelude.Text
  set newValue OntapConfigurationProperty {..}
    = OntapConfigurationProperty
        {storageEfficiencyEnabled = Prelude.pure newValue, ..}
instance Property "StorageVirtualMachineId" OntapConfigurationProperty where
  type PropertyType "StorageVirtualMachineId" OntapConfigurationProperty = Value Prelude.Text
  set newValue OntapConfigurationProperty {..}
    = OntapConfigurationProperty
        {storageVirtualMachineId = newValue, ..}
instance Property "TieringPolicy" OntapConfigurationProperty where
  type PropertyType "TieringPolicy" OntapConfigurationProperty = TieringPolicyProperty
  set newValue OntapConfigurationProperty {..}
    = OntapConfigurationProperty
        {tieringPolicy = Prelude.pure newValue, ..}
instance Property "VolumeStyle" OntapConfigurationProperty where
  type PropertyType "VolumeStyle" OntapConfigurationProperty = Value Prelude.Text
  set newValue OntapConfigurationProperty {..}
    = OntapConfigurationProperty
        {volumeStyle = Prelude.pure newValue, ..}