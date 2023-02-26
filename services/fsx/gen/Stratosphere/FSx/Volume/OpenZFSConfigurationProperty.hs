module Stratosphere.FSx.Volume.OpenZFSConfigurationProperty (
        module Exports, OpenZFSConfigurationProperty(..),
        mkOpenZFSConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.FSx.Volume.NfsExportsProperty as Exports
import {-# SOURCE #-} Stratosphere.FSx.Volume.OriginSnapshotProperty as Exports
import {-# SOURCE #-} Stratosphere.FSx.Volume.UserAndGroupQuotasProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OpenZFSConfigurationProperty
  = OpenZFSConfigurationProperty {copyTagsToSnapshots :: (Prelude.Maybe (Value Prelude.Bool)),
                                  dataCompressionType :: (Prelude.Maybe (Value Prelude.Text)),
                                  nfsExports :: (Prelude.Maybe [NfsExportsProperty]),
                                  options :: (Prelude.Maybe (ValueList Prelude.Text)),
                                  originSnapshot :: (Prelude.Maybe OriginSnapshotProperty),
                                  parentVolumeId :: (Value Prelude.Text),
                                  readOnly :: (Prelude.Maybe (Value Prelude.Bool)),
                                  recordSizeKiB :: (Prelude.Maybe (Value Prelude.Integer)),
                                  storageCapacityQuotaGiB :: (Prelude.Maybe (Value Prelude.Integer)),
                                  storageCapacityReservationGiB :: (Prelude.Maybe (Value Prelude.Integer)),
                                  userAndGroupQuotas :: (Prelude.Maybe [UserAndGroupQuotasProperty])}
mkOpenZFSConfigurationProperty ::
  Value Prelude.Text -> OpenZFSConfigurationProperty
mkOpenZFSConfigurationProperty parentVolumeId
  = OpenZFSConfigurationProperty
      {parentVolumeId = parentVolumeId,
       copyTagsToSnapshots = Prelude.Nothing,
       dataCompressionType = Prelude.Nothing,
       nfsExports = Prelude.Nothing, options = Prelude.Nothing,
       originSnapshot = Prelude.Nothing, readOnly = Prelude.Nothing,
       recordSizeKiB = Prelude.Nothing,
       storageCapacityQuotaGiB = Prelude.Nothing,
       storageCapacityReservationGiB = Prelude.Nothing,
       userAndGroupQuotas = Prelude.Nothing}
instance ToResourceProperties OpenZFSConfigurationProperty where
  toResourceProperties OpenZFSConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::FSx::Volume.OpenZFSConfiguration",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ParentVolumeId" JSON..= parentVolumeId]
                           (Prelude.catMaybes
                              [(JSON..=) "CopyTagsToSnapshots" Prelude.<$> copyTagsToSnapshots,
                               (JSON..=) "DataCompressionType" Prelude.<$> dataCompressionType,
                               (JSON..=) "NfsExports" Prelude.<$> nfsExports,
                               (JSON..=) "Options" Prelude.<$> options,
                               (JSON..=) "OriginSnapshot" Prelude.<$> originSnapshot,
                               (JSON..=) "ReadOnly" Prelude.<$> readOnly,
                               (JSON..=) "RecordSizeKiB" Prelude.<$> recordSizeKiB,
                               (JSON..=) "StorageCapacityQuotaGiB"
                                 Prelude.<$> storageCapacityQuotaGiB,
                               (JSON..=) "StorageCapacityReservationGiB"
                                 Prelude.<$> storageCapacityReservationGiB,
                               (JSON..=) "UserAndGroupQuotas" Prelude.<$> userAndGroupQuotas]))}
instance JSON.ToJSON OpenZFSConfigurationProperty where
  toJSON OpenZFSConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ParentVolumeId" JSON..= parentVolumeId]
              (Prelude.catMaybes
                 [(JSON..=) "CopyTagsToSnapshots" Prelude.<$> copyTagsToSnapshots,
                  (JSON..=) "DataCompressionType" Prelude.<$> dataCompressionType,
                  (JSON..=) "NfsExports" Prelude.<$> nfsExports,
                  (JSON..=) "Options" Prelude.<$> options,
                  (JSON..=) "OriginSnapshot" Prelude.<$> originSnapshot,
                  (JSON..=) "ReadOnly" Prelude.<$> readOnly,
                  (JSON..=) "RecordSizeKiB" Prelude.<$> recordSizeKiB,
                  (JSON..=) "StorageCapacityQuotaGiB"
                    Prelude.<$> storageCapacityQuotaGiB,
                  (JSON..=) "StorageCapacityReservationGiB"
                    Prelude.<$> storageCapacityReservationGiB,
                  (JSON..=) "UserAndGroupQuotas" Prelude.<$> userAndGroupQuotas])))
instance Property "CopyTagsToSnapshots" OpenZFSConfigurationProperty where
  type PropertyType "CopyTagsToSnapshots" OpenZFSConfigurationProperty = Value Prelude.Bool
  set newValue OpenZFSConfigurationProperty {..}
    = OpenZFSConfigurationProperty
        {copyTagsToSnapshots = Prelude.pure newValue, ..}
instance Property "DataCompressionType" OpenZFSConfigurationProperty where
  type PropertyType "DataCompressionType" OpenZFSConfigurationProperty = Value Prelude.Text
  set newValue OpenZFSConfigurationProperty {..}
    = OpenZFSConfigurationProperty
        {dataCompressionType = Prelude.pure newValue, ..}
instance Property "NfsExports" OpenZFSConfigurationProperty where
  type PropertyType "NfsExports" OpenZFSConfigurationProperty = [NfsExportsProperty]
  set newValue OpenZFSConfigurationProperty {..}
    = OpenZFSConfigurationProperty
        {nfsExports = Prelude.pure newValue, ..}
instance Property "Options" OpenZFSConfigurationProperty where
  type PropertyType "Options" OpenZFSConfigurationProperty = ValueList Prelude.Text
  set newValue OpenZFSConfigurationProperty {..}
    = OpenZFSConfigurationProperty
        {options = Prelude.pure newValue, ..}
instance Property "OriginSnapshot" OpenZFSConfigurationProperty where
  type PropertyType "OriginSnapshot" OpenZFSConfigurationProperty = OriginSnapshotProperty
  set newValue OpenZFSConfigurationProperty {..}
    = OpenZFSConfigurationProperty
        {originSnapshot = Prelude.pure newValue, ..}
instance Property "ParentVolumeId" OpenZFSConfigurationProperty where
  type PropertyType "ParentVolumeId" OpenZFSConfigurationProperty = Value Prelude.Text
  set newValue OpenZFSConfigurationProperty {..}
    = OpenZFSConfigurationProperty {parentVolumeId = newValue, ..}
instance Property "ReadOnly" OpenZFSConfigurationProperty where
  type PropertyType "ReadOnly" OpenZFSConfigurationProperty = Value Prelude.Bool
  set newValue OpenZFSConfigurationProperty {..}
    = OpenZFSConfigurationProperty
        {readOnly = Prelude.pure newValue, ..}
instance Property "RecordSizeKiB" OpenZFSConfigurationProperty where
  type PropertyType "RecordSizeKiB" OpenZFSConfigurationProperty = Value Prelude.Integer
  set newValue OpenZFSConfigurationProperty {..}
    = OpenZFSConfigurationProperty
        {recordSizeKiB = Prelude.pure newValue, ..}
instance Property "StorageCapacityQuotaGiB" OpenZFSConfigurationProperty where
  type PropertyType "StorageCapacityQuotaGiB" OpenZFSConfigurationProperty = Value Prelude.Integer
  set newValue OpenZFSConfigurationProperty {..}
    = OpenZFSConfigurationProperty
        {storageCapacityQuotaGiB = Prelude.pure newValue, ..}
instance Property "StorageCapacityReservationGiB" OpenZFSConfigurationProperty where
  type PropertyType "StorageCapacityReservationGiB" OpenZFSConfigurationProperty = Value Prelude.Integer
  set newValue OpenZFSConfigurationProperty {..}
    = OpenZFSConfigurationProperty
        {storageCapacityReservationGiB = Prelude.pure newValue, ..}
instance Property "UserAndGroupQuotas" OpenZFSConfigurationProperty where
  type PropertyType "UserAndGroupQuotas" OpenZFSConfigurationProperty = [UserAndGroupQuotasProperty]
  set newValue OpenZFSConfigurationProperty {..}
    = OpenZFSConfigurationProperty
        {userAndGroupQuotas = Prelude.pure newValue, ..}