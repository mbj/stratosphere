module Stratosphere.IoTAnalytics.Datastore.CustomerManagedS3StorageProperty (
        CustomerManagedS3StorageProperty(..),
        mkCustomerManagedS3StorageProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CustomerManagedS3StorageProperty
  = CustomerManagedS3StorageProperty {bucket :: (Value Prelude.Text),
                                      keyPrefix :: (Prelude.Maybe (Value Prelude.Text))}
mkCustomerManagedS3StorageProperty ::
  Value Prelude.Text -> CustomerManagedS3StorageProperty
mkCustomerManagedS3StorageProperty bucket
  = CustomerManagedS3StorageProperty
      {bucket = bucket, keyPrefix = Prelude.Nothing}
instance ToResourceProperties CustomerManagedS3StorageProperty where
  toResourceProperties CustomerManagedS3StorageProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTAnalytics::Datastore.CustomerManagedS3Storage",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Bucket" JSON..= bucket]
                           (Prelude.catMaybes [(JSON..=) "KeyPrefix" Prelude.<$> keyPrefix]))}
instance JSON.ToJSON CustomerManagedS3StorageProperty where
  toJSON CustomerManagedS3StorageProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Bucket" JSON..= bucket]
              (Prelude.catMaybes [(JSON..=) "KeyPrefix" Prelude.<$> keyPrefix])))
instance Property "Bucket" CustomerManagedS3StorageProperty where
  type PropertyType "Bucket" CustomerManagedS3StorageProperty = Value Prelude.Text
  set newValue CustomerManagedS3StorageProperty {..}
    = CustomerManagedS3StorageProperty {bucket = newValue, ..}
instance Property "KeyPrefix" CustomerManagedS3StorageProperty where
  type PropertyType "KeyPrefix" CustomerManagedS3StorageProperty = Value Prelude.Text
  set newValue CustomerManagedS3StorageProperty {..}
    = CustomerManagedS3StorageProperty
        {keyPrefix = Prelude.pure newValue, ..}