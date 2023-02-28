module Stratosphere.FSx.Volume.UserAndGroupQuotasProperty (
        UserAndGroupQuotasProperty(..), mkUserAndGroupQuotasProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data UserAndGroupQuotasProperty
  = UserAndGroupQuotasProperty {id :: (Value Prelude.Integer),
                                storageCapacityQuotaGiB :: (Value Prelude.Integer),
                                type' :: (Value Prelude.Text)}
mkUserAndGroupQuotasProperty ::
  Value Prelude.Integer
  -> Value Prelude.Integer
     -> Value Prelude.Text -> UserAndGroupQuotasProperty
mkUserAndGroupQuotasProperty id storageCapacityQuotaGiB type'
  = UserAndGroupQuotasProperty
      {id = id, storageCapacityQuotaGiB = storageCapacityQuotaGiB,
       type' = type'}
instance ToResourceProperties UserAndGroupQuotasProperty where
  toResourceProperties UserAndGroupQuotasProperty {..}
    = ResourceProperties
        {awsType = "AWS::FSx::Volume.UserAndGroupQuotas",
         supportsTags = Prelude.False,
         properties = ["Id" JSON..= id,
                       "StorageCapacityQuotaGiB" JSON..= storageCapacityQuotaGiB,
                       "Type" JSON..= type']}
instance JSON.ToJSON UserAndGroupQuotasProperty where
  toJSON UserAndGroupQuotasProperty {..}
    = JSON.object
        ["Id" JSON..= id,
         "StorageCapacityQuotaGiB" JSON..= storageCapacityQuotaGiB,
         "Type" JSON..= type']
instance Property "Id" UserAndGroupQuotasProperty where
  type PropertyType "Id" UserAndGroupQuotasProperty = Value Prelude.Integer
  set newValue UserAndGroupQuotasProperty {..}
    = UserAndGroupQuotasProperty {id = newValue, ..}
instance Property "StorageCapacityQuotaGiB" UserAndGroupQuotasProperty where
  type PropertyType "StorageCapacityQuotaGiB" UserAndGroupQuotasProperty = Value Prelude.Integer
  set newValue UserAndGroupQuotasProperty {..}
    = UserAndGroupQuotasProperty
        {storageCapacityQuotaGiB = newValue, ..}
instance Property "Type" UserAndGroupQuotasProperty where
  type PropertyType "Type" UserAndGroupQuotasProperty = Value Prelude.Text
  set newValue UserAndGroupQuotasProperty {..}
    = UserAndGroupQuotasProperty {type' = newValue, ..}