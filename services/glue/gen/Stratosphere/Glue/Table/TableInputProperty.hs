module Stratosphere.Glue.Table.TableInputProperty (
        module Exports, TableInputProperty(..), mkTableInputProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Glue.Table.ColumnProperty as Exports
import {-# SOURCE #-} Stratosphere.Glue.Table.StorageDescriptorProperty as Exports
import {-# SOURCE #-} Stratosphere.Glue.Table.TableIdentifierProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TableInputProperty
  = TableInputProperty {description :: (Prelude.Maybe (Value Prelude.Text)),
                        name :: (Prelude.Maybe (Value Prelude.Text)),
                        owner :: (Prelude.Maybe (Value Prelude.Text)),
                        parameters :: (Prelude.Maybe JSON.Object),
                        partitionKeys :: (Prelude.Maybe [ColumnProperty]),
                        retention :: (Prelude.Maybe (Value Prelude.Integer)),
                        storageDescriptor :: (Prelude.Maybe StorageDescriptorProperty),
                        tableType :: (Prelude.Maybe (Value Prelude.Text)),
                        targetTable :: (Prelude.Maybe TableIdentifierProperty),
                        viewExpandedText :: (Prelude.Maybe (Value Prelude.Text)),
                        viewOriginalText :: (Prelude.Maybe (Value Prelude.Text))}
mkTableInputProperty :: TableInputProperty
mkTableInputProperty
  = TableInputProperty
      {description = Prelude.Nothing, name = Prelude.Nothing,
       owner = Prelude.Nothing, parameters = Prelude.Nothing,
       partitionKeys = Prelude.Nothing, retention = Prelude.Nothing,
       storageDescriptor = Prelude.Nothing, tableType = Prelude.Nothing,
       targetTable = Prelude.Nothing, viewExpandedText = Prelude.Nothing,
       viewOriginalText = Prelude.Nothing}
instance ToResourceProperties TableInputProperty where
  toResourceProperties TableInputProperty {..}
    = ResourceProperties
        {awsType = "AWS::Glue::Table.TableInput",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Description" Prelude.<$> description,
                            (JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "Owner" Prelude.<$> owner,
                            (JSON..=) "Parameters" Prelude.<$> parameters,
                            (JSON..=) "PartitionKeys" Prelude.<$> partitionKeys,
                            (JSON..=) "Retention" Prelude.<$> retention,
                            (JSON..=) "StorageDescriptor" Prelude.<$> storageDescriptor,
                            (JSON..=) "TableType" Prelude.<$> tableType,
                            (JSON..=) "TargetTable" Prelude.<$> targetTable,
                            (JSON..=) "ViewExpandedText" Prelude.<$> viewExpandedText,
                            (JSON..=) "ViewOriginalText" Prelude.<$> viewOriginalText])}
instance JSON.ToJSON TableInputProperty where
  toJSON TableInputProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Description" Prelude.<$> description,
               (JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "Owner" Prelude.<$> owner,
               (JSON..=) "Parameters" Prelude.<$> parameters,
               (JSON..=) "PartitionKeys" Prelude.<$> partitionKeys,
               (JSON..=) "Retention" Prelude.<$> retention,
               (JSON..=) "StorageDescriptor" Prelude.<$> storageDescriptor,
               (JSON..=) "TableType" Prelude.<$> tableType,
               (JSON..=) "TargetTable" Prelude.<$> targetTable,
               (JSON..=) "ViewExpandedText" Prelude.<$> viewExpandedText,
               (JSON..=) "ViewOriginalText" Prelude.<$> viewOriginalText]))
instance Property "Description" TableInputProperty where
  type PropertyType "Description" TableInputProperty = Value Prelude.Text
  set newValue TableInputProperty {..}
    = TableInputProperty {description = Prelude.pure newValue, ..}
instance Property "Name" TableInputProperty where
  type PropertyType "Name" TableInputProperty = Value Prelude.Text
  set newValue TableInputProperty {..}
    = TableInputProperty {name = Prelude.pure newValue, ..}
instance Property "Owner" TableInputProperty where
  type PropertyType "Owner" TableInputProperty = Value Prelude.Text
  set newValue TableInputProperty {..}
    = TableInputProperty {owner = Prelude.pure newValue, ..}
instance Property "Parameters" TableInputProperty where
  type PropertyType "Parameters" TableInputProperty = JSON.Object
  set newValue TableInputProperty {..}
    = TableInputProperty {parameters = Prelude.pure newValue, ..}
instance Property "PartitionKeys" TableInputProperty where
  type PropertyType "PartitionKeys" TableInputProperty = [ColumnProperty]
  set newValue TableInputProperty {..}
    = TableInputProperty {partitionKeys = Prelude.pure newValue, ..}
instance Property "Retention" TableInputProperty where
  type PropertyType "Retention" TableInputProperty = Value Prelude.Integer
  set newValue TableInputProperty {..}
    = TableInputProperty {retention = Prelude.pure newValue, ..}
instance Property "StorageDescriptor" TableInputProperty where
  type PropertyType "StorageDescriptor" TableInputProperty = StorageDescriptorProperty
  set newValue TableInputProperty {..}
    = TableInputProperty
        {storageDescriptor = Prelude.pure newValue, ..}
instance Property "TableType" TableInputProperty where
  type PropertyType "TableType" TableInputProperty = Value Prelude.Text
  set newValue TableInputProperty {..}
    = TableInputProperty {tableType = Prelude.pure newValue, ..}
instance Property "TargetTable" TableInputProperty where
  type PropertyType "TargetTable" TableInputProperty = TableIdentifierProperty
  set newValue TableInputProperty {..}
    = TableInputProperty {targetTable = Prelude.pure newValue, ..}
instance Property "ViewExpandedText" TableInputProperty where
  type PropertyType "ViewExpandedText" TableInputProperty = Value Prelude.Text
  set newValue TableInputProperty {..}
    = TableInputProperty {viewExpandedText = Prelude.pure newValue, ..}
instance Property "ViewOriginalText" TableInputProperty where
  type PropertyType "ViewOriginalText" TableInputProperty = Value Prelude.Text
  set newValue TableInputProperty {..}
    = TableInputProperty {viewOriginalText = Prelude.pure newValue, ..}