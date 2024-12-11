module Stratosphere.Deadline.Fleet.CustomerManagedFleetConfigurationProperty (
        module Exports, CustomerManagedFleetConfigurationProperty(..),
        mkCustomerManagedFleetConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Deadline.Fleet.CustomerManagedWorkerCapabilitiesProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CustomerManagedFleetConfigurationProperty
  = CustomerManagedFleetConfigurationProperty {mode :: (Value Prelude.Text),
                                               storageProfileId :: (Prelude.Maybe (Value Prelude.Text)),
                                               workerCapabilities :: CustomerManagedWorkerCapabilitiesProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCustomerManagedFleetConfigurationProperty ::
  Value Prelude.Text
  -> CustomerManagedWorkerCapabilitiesProperty
     -> CustomerManagedFleetConfigurationProperty
mkCustomerManagedFleetConfigurationProperty mode workerCapabilities
  = CustomerManagedFleetConfigurationProperty
      {mode = mode, workerCapabilities = workerCapabilities,
       storageProfileId = Prelude.Nothing}
instance ToResourceProperties CustomerManagedFleetConfigurationProperty where
  toResourceProperties CustomerManagedFleetConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Deadline::Fleet.CustomerManagedFleetConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Mode" JSON..= mode,
                            "WorkerCapabilities" JSON..= workerCapabilities]
                           (Prelude.catMaybes
                              [(JSON..=) "StorageProfileId" Prelude.<$> storageProfileId]))}
instance JSON.ToJSON CustomerManagedFleetConfigurationProperty where
  toJSON CustomerManagedFleetConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Mode" JSON..= mode,
               "WorkerCapabilities" JSON..= workerCapabilities]
              (Prelude.catMaybes
                 [(JSON..=) "StorageProfileId" Prelude.<$> storageProfileId])))
instance Property "Mode" CustomerManagedFleetConfigurationProperty where
  type PropertyType "Mode" CustomerManagedFleetConfigurationProperty = Value Prelude.Text
  set newValue CustomerManagedFleetConfigurationProperty {..}
    = CustomerManagedFleetConfigurationProperty {mode = newValue, ..}
instance Property "StorageProfileId" CustomerManagedFleetConfigurationProperty where
  type PropertyType "StorageProfileId" CustomerManagedFleetConfigurationProperty = Value Prelude.Text
  set newValue CustomerManagedFleetConfigurationProperty {..}
    = CustomerManagedFleetConfigurationProperty
        {storageProfileId = Prelude.pure newValue, ..}
instance Property "WorkerCapabilities" CustomerManagedFleetConfigurationProperty where
  type PropertyType "WorkerCapabilities" CustomerManagedFleetConfigurationProperty = CustomerManagedWorkerCapabilitiesProperty
  set newValue CustomerManagedFleetConfigurationProperty {..}
    = CustomerManagedFleetConfigurationProperty
        {workerCapabilities = newValue, ..}