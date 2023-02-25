module Stratosphere.IoTAnalytics.Channel.ChannelStorageProperty (
        module Exports, ChannelStorageProperty(..),
        mkChannelStorageProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoTAnalytics.Channel.CustomerManagedS3Property as Exports
import Stratosphere.ResourceProperties
data ChannelStorageProperty
  = ChannelStorageProperty {customerManagedS3 :: (Prelude.Maybe CustomerManagedS3Property),
                            serviceManagedS3 :: (Prelude.Maybe JSON.Object)}
mkChannelStorageProperty :: ChannelStorageProperty
mkChannelStorageProperty
  = ChannelStorageProperty
      {customerManagedS3 = Prelude.Nothing,
       serviceManagedS3 = Prelude.Nothing}
instance ToResourceProperties ChannelStorageProperty where
  toResourceProperties ChannelStorageProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTAnalytics::Channel.ChannelStorage",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CustomerManagedS3" Prelude.<$> customerManagedS3,
                            (JSON..=) "ServiceManagedS3" Prelude.<$> serviceManagedS3])}
instance JSON.ToJSON ChannelStorageProperty where
  toJSON ChannelStorageProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CustomerManagedS3" Prelude.<$> customerManagedS3,
               (JSON..=) "ServiceManagedS3" Prelude.<$> serviceManagedS3]))
instance Property "CustomerManagedS3" ChannelStorageProperty where
  type PropertyType "CustomerManagedS3" ChannelStorageProperty = CustomerManagedS3Property
  set newValue ChannelStorageProperty {..}
    = ChannelStorageProperty
        {customerManagedS3 = Prelude.pure newValue, ..}
instance Property "ServiceManagedS3" ChannelStorageProperty where
  type PropertyType "ServiceManagedS3" ChannelStorageProperty = JSON.Object
  set newValue ChannelStorageProperty {..}
    = ChannelStorageProperty
        {serviceManagedS3 = Prelude.pure newValue, ..}