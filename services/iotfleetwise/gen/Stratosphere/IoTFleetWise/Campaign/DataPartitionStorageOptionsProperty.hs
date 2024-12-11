module Stratosphere.IoTFleetWise.Campaign.DataPartitionStorageOptionsProperty (
        module Exports, DataPartitionStorageOptionsProperty(..),
        mkDataPartitionStorageOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoTFleetWise.Campaign.StorageMaximumSizeProperty as Exports
import {-# SOURCE #-} Stratosphere.IoTFleetWise.Campaign.StorageMinimumTimeToLiveProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DataPartitionStorageOptionsProperty
  = DataPartitionStorageOptionsProperty {maximumSize :: StorageMaximumSizeProperty,
                                         minimumTimeToLive :: StorageMinimumTimeToLiveProperty,
                                         storageLocation :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDataPartitionStorageOptionsProperty ::
  StorageMaximumSizeProperty
  -> StorageMinimumTimeToLiveProperty
     -> Value Prelude.Text -> DataPartitionStorageOptionsProperty
mkDataPartitionStorageOptionsProperty
  maximumSize
  minimumTimeToLive
  storageLocation
  = DataPartitionStorageOptionsProperty
      {maximumSize = maximumSize, minimumTimeToLive = minimumTimeToLive,
       storageLocation = storageLocation}
instance ToResourceProperties DataPartitionStorageOptionsProperty where
  toResourceProperties DataPartitionStorageOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTFleetWise::Campaign.DataPartitionStorageOptions",
         supportsTags = Prelude.False,
         properties = ["MaximumSize" JSON..= maximumSize,
                       "MinimumTimeToLive" JSON..= minimumTimeToLive,
                       "StorageLocation" JSON..= storageLocation]}
instance JSON.ToJSON DataPartitionStorageOptionsProperty where
  toJSON DataPartitionStorageOptionsProperty {..}
    = JSON.object
        ["MaximumSize" JSON..= maximumSize,
         "MinimumTimeToLive" JSON..= minimumTimeToLive,
         "StorageLocation" JSON..= storageLocation]
instance Property "MaximumSize" DataPartitionStorageOptionsProperty where
  type PropertyType "MaximumSize" DataPartitionStorageOptionsProperty = StorageMaximumSizeProperty
  set newValue DataPartitionStorageOptionsProperty {..}
    = DataPartitionStorageOptionsProperty {maximumSize = newValue, ..}
instance Property "MinimumTimeToLive" DataPartitionStorageOptionsProperty where
  type PropertyType "MinimumTimeToLive" DataPartitionStorageOptionsProperty = StorageMinimumTimeToLiveProperty
  set newValue DataPartitionStorageOptionsProperty {..}
    = DataPartitionStorageOptionsProperty
        {minimumTimeToLive = newValue, ..}
instance Property "StorageLocation" DataPartitionStorageOptionsProperty where
  type PropertyType "StorageLocation" DataPartitionStorageOptionsProperty = Value Prelude.Text
  set newValue DataPartitionStorageOptionsProperty {..}
    = DataPartitionStorageOptionsProperty
        {storageLocation = newValue, ..}