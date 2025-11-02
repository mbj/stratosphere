module Stratosphere.Glue.Partition.PartitionInputProperty (
        module Exports, PartitionInputProperty(..),
        mkPartitionInputProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Glue.Partition.StorageDescriptorProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PartitionInputProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-partition-partitioninput.html>
    PartitionInputProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-partition-partitioninput.html#cfn-glue-partition-partitioninput-parameters>
                            parameters :: (Prelude.Maybe JSON.Object),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-partition-partitioninput.html#cfn-glue-partition-partitioninput-storagedescriptor>
                            storageDescriptor :: (Prelude.Maybe StorageDescriptorProperty),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-partition-partitioninput.html#cfn-glue-partition-partitioninput-values>
                            values :: (ValueList Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPartitionInputProperty ::
  ValueList Prelude.Text -> PartitionInputProperty
mkPartitionInputProperty values
  = PartitionInputProperty
      {haddock_workaround_ = (), values = values,
       parameters = Prelude.Nothing, storageDescriptor = Prelude.Nothing}
instance ToResourceProperties PartitionInputProperty where
  toResourceProperties PartitionInputProperty {..}
    = ResourceProperties
        {awsType = "AWS::Glue::Partition.PartitionInput",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Values" JSON..= values]
                           (Prelude.catMaybes
                              [(JSON..=) "Parameters" Prelude.<$> parameters,
                               (JSON..=) "StorageDescriptor" Prelude.<$> storageDescriptor]))}
instance JSON.ToJSON PartitionInputProperty where
  toJSON PartitionInputProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Values" JSON..= values]
              (Prelude.catMaybes
                 [(JSON..=) "Parameters" Prelude.<$> parameters,
                  (JSON..=) "StorageDescriptor" Prelude.<$> storageDescriptor])))
instance Property "Parameters" PartitionInputProperty where
  type PropertyType "Parameters" PartitionInputProperty = JSON.Object
  set newValue PartitionInputProperty {..}
    = PartitionInputProperty {parameters = Prelude.pure newValue, ..}
instance Property "StorageDescriptor" PartitionInputProperty where
  type PropertyType "StorageDescriptor" PartitionInputProperty = StorageDescriptorProperty
  set newValue PartitionInputProperty {..}
    = PartitionInputProperty
        {storageDescriptor = Prelude.pure newValue, ..}
instance Property "Values" PartitionInputProperty where
  type PropertyType "Values" PartitionInputProperty = ValueList Prelude.Text
  set newValue PartitionInputProperty {..}
    = PartitionInputProperty {values = newValue, ..}