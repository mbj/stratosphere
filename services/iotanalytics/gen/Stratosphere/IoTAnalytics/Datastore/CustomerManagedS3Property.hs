module Stratosphere.IoTAnalytics.Datastore.CustomerManagedS3Property (
        CustomerManagedS3Property(..), mkCustomerManagedS3Property
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CustomerManagedS3Property
  = CustomerManagedS3Property {bucket :: (Value Prelude.Text),
                               keyPrefix :: (Prelude.Maybe (Value Prelude.Text)),
                               roleArn :: (Value Prelude.Text)}
mkCustomerManagedS3Property ::
  Value Prelude.Text
  -> Value Prelude.Text -> CustomerManagedS3Property
mkCustomerManagedS3Property bucket roleArn
  = CustomerManagedS3Property
      {bucket = bucket, roleArn = roleArn, keyPrefix = Prelude.Nothing}
instance ToResourceProperties CustomerManagedS3Property where
  toResourceProperties CustomerManagedS3Property {..}
    = ResourceProperties
        {awsType = "AWS::IoTAnalytics::Datastore.CustomerManagedS3",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Bucket" JSON..= bucket, "RoleArn" JSON..= roleArn]
                           (Prelude.catMaybes [(JSON..=) "KeyPrefix" Prelude.<$> keyPrefix]))}
instance JSON.ToJSON CustomerManagedS3Property where
  toJSON CustomerManagedS3Property {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Bucket" JSON..= bucket, "RoleArn" JSON..= roleArn]
              (Prelude.catMaybes [(JSON..=) "KeyPrefix" Prelude.<$> keyPrefix])))
instance Property "Bucket" CustomerManagedS3Property where
  type PropertyType "Bucket" CustomerManagedS3Property = Value Prelude.Text
  set newValue CustomerManagedS3Property {..}
    = CustomerManagedS3Property {bucket = newValue, ..}
instance Property "KeyPrefix" CustomerManagedS3Property where
  type PropertyType "KeyPrefix" CustomerManagedS3Property = Value Prelude.Text
  set newValue CustomerManagedS3Property {..}
    = CustomerManagedS3Property {keyPrefix = Prelude.pure newValue, ..}
instance Property "RoleArn" CustomerManagedS3Property where
  type PropertyType "RoleArn" CustomerManagedS3Property = Value Prelude.Text
  set newValue CustomerManagedS3Property {..}
    = CustomerManagedS3Property {roleArn = newValue, ..}