module Stratosphere.FSx.Volume.OntapConfigurationProperty (
        module Exports, OntapConfigurationProperty(..),
        mkOntapConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.FSx.Volume.TieringPolicyProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OntapConfigurationProperty
  = OntapConfigurationProperty {copyTagsToBackups :: (Prelude.Maybe (Value Prelude.Text)),
                                junctionPath :: (Prelude.Maybe (Value Prelude.Text)),
                                ontapVolumeType :: (Prelude.Maybe (Value Prelude.Text)),
                                securityStyle :: (Prelude.Maybe (Value Prelude.Text)),
                                sizeInMegabytes :: (Value Prelude.Text),
                                snapshotPolicy :: (Prelude.Maybe (Value Prelude.Text)),
                                storageEfficiencyEnabled :: (Prelude.Maybe (Value Prelude.Text)),
                                storageVirtualMachineId :: (Value Prelude.Text),
                                tieringPolicy :: (Prelude.Maybe TieringPolicyProperty)}
mkOntapConfigurationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> OntapConfigurationProperty
mkOntapConfigurationProperty
  sizeInMegabytes
  storageVirtualMachineId
  = OntapConfigurationProperty
      {sizeInMegabytes = sizeInMegabytes,
       storageVirtualMachineId = storageVirtualMachineId,
       copyTagsToBackups = Prelude.Nothing,
       junctionPath = Prelude.Nothing, ontapVolumeType = Prelude.Nothing,
       securityStyle = Prelude.Nothing, snapshotPolicy = Prelude.Nothing,
       storageEfficiencyEnabled = Prelude.Nothing,
       tieringPolicy = Prelude.Nothing}
instance ToResourceProperties OntapConfigurationProperty where
  toResourceProperties OntapConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::FSx::Volume.OntapConfiguration",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["SizeInMegabytes" JSON..= sizeInMegabytes,
                            "StorageVirtualMachineId" JSON..= storageVirtualMachineId]
                           (Prelude.catMaybes
                              [(JSON..=) "CopyTagsToBackups" Prelude.<$> copyTagsToBackups,
                               (JSON..=) "JunctionPath" Prelude.<$> junctionPath,
                               (JSON..=) "OntapVolumeType" Prelude.<$> ontapVolumeType,
                               (JSON..=) "SecurityStyle" Prelude.<$> securityStyle,
                               (JSON..=) "SnapshotPolicy" Prelude.<$> snapshotPolicy,
                               (JSON..=) "StorageEfficiencyEnabled"
                                 Prelude.<$> storageEfficiencyEnabled,
                               (JSON..=) "TieringPolicy" Prelude.<$> tieringPolicy]))}
instance JSON.ToJSON OntapConfigurationProperty where
  toJSON OntapConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["SizeInMegabytes" JSON..= sizeInMegabytes,
               "StorageVirtualMachineId" JSON..= storageVirtualMachineId]
              (Prelude.catMaybes
                 [(JSON..=) "CopyTagsToBackups" Prelude.<$> copyTagsToBackups,
                  (JSON..=) "JunctionPath" Prelude.<$> junctionPath,
                  (JSON..=) "OntapVolumeType" Prelude.<$> ontapVolumeType,
                  (JSON..=) "SecurityStyle" Prelude.<$> securityStyle,
                  (JSON..=) "SnapshotPolicy" Prelude.<$> snapshotPolicy,
                  (JSON..=) "StorageEfficiencyEnabled"
                    Prelude.<$> storageEfficiencyEnabled,
                  (JSON..=) "TieringPolicy" Prelude.<$> tieringPolicy])))
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
instance Property "SizeInMegabytes" OntapConfigurationProperty where
  type PropertyType "SizeInMegabytes" OntapConfigurationProperty = Value Prelude.Text
  set newValue OntapConfigurationProperty {..}
    = OntapConfigurationProperty {sizeInMegabytes = newValue, ..}
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