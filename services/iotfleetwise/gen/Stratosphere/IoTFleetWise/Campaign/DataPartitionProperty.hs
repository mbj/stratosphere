module Stratosphere.IoTFleetWise.Campaign.DataPartitionProperty (
        module Exports, DataPartitionProperty(..), mkDataPartitionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoTFleetWise.Campaign.DataPartitionStorageOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.IoTFleetWise.Campaign.DataPartitionUploadOptionsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DataPartitionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotfleetwise-campaign-datapartition.html>
    DataPartitionProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotfleetwise-campaign-datapartition.html#cfn-iotfleetwise-campaign-datapartition-id>
                           id :: (Value Prelude.Text),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotfleetwise-campaign-datapartition.html#cfn-iotfleetwise-campaign-datapartition-storageoptions>
                           storageOptions :: DataPartitionStorageOptionsProperty,
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotfleetwise-campaign-datapartition.html#cfn-iotfleetwise-campaign-datapartition-uploadoptions>
                           uploadOptions :: (Prelude.Maybe DataPartitionUploadOptionsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDataPartitionProperty ::
  Value Prelude.Text
  -> DataPartitionStorageOptionsProperty -> DataPartitionProperty
mkDataPartitionProperty id storageOptions
  = DataPartitionProperty
      {haddock_workaround_ = (), id = id,
       storageOptions = storageOptions, uploadOptions = Prelude.Nothing}
instance ToResourceProperties DataPartitionProperty where
  toResourceProperties DataPartitionProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTFleetWise::Campaign.DataPartition",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Id" JSON..= id, "StorageOptions" JSON..= storageOptions]
                           (Prelude.catMaybes
                              [(JSON..=) "UploadOptions" Prelude.<$> uploadOptions]))}
instance JSON.ToJSON DataPartitionProperty where
  toJSON DataPartitionProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Id" JSON..= id, "StorageOptions" JSON..= storageOptions]
              (Prelude.catMaybes
                 [(JSON..=) "UploadOptions" Prelude.<$> uploadOptions])))
instance Property "Id" DataPartitionProperty where
  type PropertyType "Id" DataPartitionProperty = Value Prelude.Text
  set newValue DataPartitionProperty {..}
    = DataPartitionProperty {id = newValue, ..}
instance Property "StorageOptions" DataPartitionProperty where
  type PropertyType "StorageOptions" DataPartitionProperty = DataPartitionStorageOptionsProperty
  set newValue DataPartitionProperty {..}
    = DataPartitionProperty {storageOptions = newValue, ..}
instance Property "UploadOptions" DataPartitionProperty where
  type PropertyType "UploadOptions" DataPartitionProperty = DataPartitionUploadOptionsProperty
  set newValue DataPartitionProperty {..}
    = DataPartitionProperty {uploadOptions = Prelude.pure newValue, ..}