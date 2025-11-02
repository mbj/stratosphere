module Stratosphere.FSx.FileSystem.UserAndGroupQuotasProperty (
        UserAndGroupQuotasProperty(..), mkUserAndGroupQuotasProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data UserAndGroupQuotasProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-openzfsconfiguration-rootvolumeconfiguration-userandgroupquotas.html>
    UserAndGroupQuotasProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-openzfsconfiguration-rootvolumeconfiguration-userandgroupquotas.html#cfn-fsx-filesystem-openzfsconfiguration-rootvolumeconfiguration-userandgroupquotas-id>
                                id :: (Prelude.Maybe (Value Prelude.Integer)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-openzfsconfiguration-rootvolumeconfiguration-userandgroupquotas.html#cfn-fsx-filesystem-openzfsconfiguration-rootvolumeconfiguration-userandgroupquotas-storagecapacityquotagib>
                                storageCapacityQuotaGiB :: (Prelude.Maybe (Value Prelude.Integer)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-openzfsconfiguration-rootvolumeconfiguration-userandgroupquotas.html#cfn-fsx-filesystem-openzfsconfiguration-rootvolumeconfiguration-userandgroupquotas-type>
                                type' :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkUserAndGroupQuotasProperty :: UserAndGroupQuotasProperty
mkUserAndGroupQuotasProperty
  = UserAndGroupQuotasProperty
      {haddock_workaround_ = (), id = Prelude.Nothing,
       storageCapacityQuotaGiB = Prelude.Nothing, type' = Prelude.Nothing}
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