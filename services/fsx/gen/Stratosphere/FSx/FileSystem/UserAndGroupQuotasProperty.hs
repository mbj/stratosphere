module Stratosphere.FSx.FileSystem.UserAndGroupQuotasProperty (
        UserAndGroupQuotasProperty(..), mkUserAndGroupQuotasProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data UserAndGroupQuotasProperty
  = UserAndGroupQuotasProperty {id :: (Prelude.Maybe (Value Prelude.Integer)),
                                storageCapacityQuotaGiB :: (Prelude.Maybe (Value Prelude.Integer)),
                                type' :: (Prelude.Maybe (Value Prelude.Text))}
mkUserAndGroupQuotasProperty :: UserAndGroupQuotasProperty
mkUserAndGroupQuotasProperty
  = UserAndGroupQuotasProperty
      {id = Prelude.Nothing, storageCapacityQuotaGiB = Prelude.Nothing,
       type' = Prelude.Nothing}
instance ToResourceProperties UserAndGroupQuotasProperty where
  toResourceProperties UserAndGroupQuotasProperty {..}
    = ResourceProperties
        {awsType = "AWS::FSx::FileSystem.UserAndGroupQuotas",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Id" Prelude.<$> id,
                            (JSON..=) "StorageCapacityQuotaGiB"
                              Prelude.<$> storageCapacityQuotaGiB,
                            (JSON..=) "Type" Prelude.<$> type'])}
instance JSON.ToJSON UserAndGroupQuotasProperty where
  toJSON UserAndGroupQuotasProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Id" Prelude.<$> id,
               (JSON..=) "StorageCapacityQuotaGiB"
                 Prelude.<$> storageCapacityQuotaGiB,
               (JSON..=) "Type" Prelude.<$> type']))
instance Property "Id" UserAndGroupQuotasProperty where
  type PropertyType "Id" UserAndGroupQuotasProperty = Value Prelude.Integer
  set newValue UserAndGroupQuotasProperty {..}
    = UserAndGroupQuotasProperty {id = Prelude.pure newValue, ..}
instance Property "StorageCapacityQuotaGiB" UserAndGroupQuotasProperty where
  type PropertyType "StorageCapacityQuotaGiB" UserAndGroupQuotasProperty = Value Prelude.Integer
  set newValue UserAndGroupQuotasProperty {..}
    = UserAndGroupQuotasProperty
        {storageCapacityQuotaGiB = Prelude.pure newValue, ..}
instance Property "Type" UserAndGroupQuotasProperty where
  type PropertyType "Type" UserAndGroupQuotasProperty = Value Prelude.Text
  set newValue UserAndGroupQuotasProperty {..}
    = UserAndGroupQuotasProperty {type' = Prelude.pure newValue, ..}