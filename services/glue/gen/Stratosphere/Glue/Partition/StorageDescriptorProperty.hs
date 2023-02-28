module Stratosphere.Glue.Partition.StorageDescriptorProperty (
        module Exports, StorageDescriptorProperty(..),
        mkStorageDescriptorProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Glue.Partition.ColumnProperty as Exports
import {-# SOURCE #-} Stratosphere.Glue.Partition.OrderProperty as Exports
import {-# SOURCE #-} Stratosphere.Glue.Partition.SchemaReferenceProperty as Exports
import {-# SOURCE #-} Stratosphere.Glue.Partition.SerdeInfoProperty as Exports
import {-# SOURCE #-} Stratosphere.Glue.Partition.SkewedInfoProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data StorageDescriptorProperty
  = StorageDescriptorProperty {bucketColumns :: (Prelude.Maybe (ValueList Prelude.Text)),
                               columns :: (Prelude.Maybe [ColumnProperty]),
                               compressed :: (Prelude.Maybe (Value Prelude.Bool)),
                               inputFormat :: (Prelude.Maybe (Value Prelude.Text)),
                               location :: (Prelude.Maybe (Value Prelude.Text)),
                               numberOfBuckets :: (Prelude.Maybe (Value Prelude.Integer)),
                               outputFormat :: (Prelude.Maybe (Value Prelude.Text)),
                               parameters :: (Prelude.Maybe JSON.Object),
                               schemaReference :: (Prelude.Maybe SchemaReferenceProperty),
                               serdeInfo :: (Prelude.Maybe SerdeInfoProperty),
                               skewedInfo :: (Prelude.Maybe SkewedInfoProperty),
                               sortColumns :: (Prelude.Maybe [OrderProperty]),
                               storedAsSubDirectories :: (Prelude.Maybe (Value Prelude.Bool))}
mkStorageDescriptorProperty :: StorageDescriptorProperty
mkStorageDescriptorProperty
  = StorageDescriptorProperty
      {bucketColumns = Prelude.Nothing, columns = Prelude.Nothing,
       compressed = Prelude.Nothing, inputFormat = Prelude.Nothing,
       location = Prelude.Nothing, numberOfBuckets = Prelude.Nothing,
       outputFormat = Prelude.Nothing, parameters = Prelude.Nothing,
       schemaReference = Prelude.Nothing, serdeInfo = Prelude.Nothing,
       skewedInfo = Prelude.Nothing, sortColumns = Prelude.Nothing,
       storedAsSubDirectories = Prelude.Nothing}
instance ToResourceProperties StorageDescriptorProperty where
  toResourceProperties StorageDescriptorProperty {..}
    = ResourceProperties
        {awsType = "AWS::Glue::Partition.StorageDescriptor",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "BucketColumns" Prelude.<$> bucketColumns,
                            (JSON..=) "Columns" Prelude.<$> columns,
                            (JSON..=) "Compressed" Prelude.<$> compressed,
                            (JSON..=) "InputFormat" Prelude.<$> inputFormat,
                            (JSON..=) "Location" Prelude.<$> location,
                            (JSON..=) "NumberOfBuckets" Prelude.<$> numberOfBuckets,
                            (JSON..=) "OutputFormat" Prelude.<$> outputFormat,
                            (JSON..=) "Parameters" Prelude.<$> parameters,
                            (JSON..=) "SchemaReference" Prelude.<$> schemaReference,
                            (JSON..=) "SerdeInfo" Prelude.<$> serdeInfo,
                            (JSON..=) "SkewedInfo" Prelude.<$> skewedInfo,
                            (JSON..=) "SortColumns" Prelude.<$> sortColumns,
                            (JSON..=) "StoredAsSubDirectories"
                              Prelude.<$> storedAsSubDirectories])}
instance JSON.ToJSON StorageDescriptorProperty where
  toJSON StorageDescriptorProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "BucketColumns" Prelude.<$> bucketColumns,
               (JSON..=) "Columns" Prelude.<$> columns,
               (JSON..=) "Compressed" Prelude.<$> compressed,
               (JSON..=) "InputFormat" Prelude.<$> inputFormat,
               (JSON..=) "Location" Prelude.<$> location,
               (JSON..=) "NumberOfBuckets" Prelude.<$> numberOfBuckets,
               (JSON..=) "OutputFormat" Prelude.<$> outputFormat,
               (JSON..=) "Parameters" Prelude.<$> parameters,
               (JSON..=) "SchemaReference" Prelude.<$> schemaReference,
               (JSON..=) "SerdeInfo" Prelude.<$> serdeInfo,
               (JSON..=) "SkewedInfo" Prelude.<$> skewedInfo,
               (JSON..=) "SortColumns" Prelude.<$> sortColumns,
               (JSON..=) "StoredAsSubDirectories"
                 Prelude.<$> storedAsSubDirectories]))
instance Property "BucketColumns" StorageDescriptorProperty where
  type PropertyType "BucketColumns" StorageDescriptorProperty = ValueList Prelude.Text
  set newValue StorageDescriptorProperty {..}
    = StorageDescriptorProperty
        {bucketColumns = Prelude.pure newValue, ..}
instance Property "Columns" StorageDescriptorProperty where
  type PropertyType "Columns" StorageDescriptorProperty = [ColumnProperty]
  set newValue StorageDescriptorProperty {..}
    = StorageDescriptorProperty {columns = Prelude.pure newValue, ..}
instance Property "Compressed" StorageDescriptorProperty where
  type PropertyType "Compressed" StorageDescriptorProperty = Value Prelude.Bool
  set newValue StorageDescriptorProperty {..}
    = StorageDescriptorProperty
        {compressed = Prelude.pure newValue, ..}
instance Property "InputFormat" StorageDescriptorProperty where
  type PropertyType "InputFormat" StorageDescriptorProperty = Value Prelude.Text
  set newValue StorageDescriptorProperty {..}
    = StorageDescriptorProperty
        {inputFormat = Prelude.pure newValue, ..}
instance Property "Location" StorageDescriptorProperty where
  type PropertyType "Location" StorageDescriptorProperty = Value Prelude.Text
  set newValue StorageDescriptorProperty {..}
    = StorageDescriptorProperty {location = Prelude.pure newValue, ..}
instance Property "NumberOfBuckets" StorageDescriptorProperty where
  type PropertyType "NumberOfBuckets" StorageDescriptorProperty = Value Prelude.Integer
  set newValue StorageDescriptorProperty {..}
    = StorageDescriptorProperty
        {numberOfBuckets = Prelude.pure newValue, ..}
instance Property "OutputFormat" StorageDescriptorProperty where
  type PropertyType "OutputFormat" StorageDescriptorProperty = Value Prelude.Text
  set newValue StorageDescriptorProperty {..}
    = StorageDescriptorProperty
        {outputFormat = Prelude.pure newValue, ..}
instance Property "Parameters" StorageDescriptorProperty where
  type PropertyType "Parameters" StorageDescriptorProperty = JSON.Object
  set newValue StorageDescriptorProperty {..}
    = StorageDescriptorProperty
        {parameters = Prelude.pure newValue, ..}
instance Property "SchemaReference" StorageDescriptorProperty where
  type PropertyType "SchemaReference" StorageDescriptorProperty = SchemaReferenceProperty
  set newValue StorageDescriptorProperty {..}
    = StorageDescriptorProperty
        {schemaReference = Prelude.pure newValue, ..}
instance Property "SerdeInfo" StorageDescriptorProperty where
  type PropertyType "SerdeInfo" StorageDescriptorProperty = SerdeInfoProperty
  set newValue StorageDescriptorProperty {..}
    = StorageDescriptorProperty {serdeInfo = Prelude.pure newValue, ..}
instance Property "SkewedInfo" StorageDescriptorProperty where
  type PropertyType "SkewedInfo" StorageDescriptorProperty = SkewedInfoProperty
  set newValue StorageDescriptorProperty {..}
    = StorageDescriptorProperty
        {skewedInfo = Prelude.pure newValue, ..}
instance Property "SortColumns" StorageDescriptorProperty where
  type PropertyType "SortColumns" StorageDescriptorProperty = [OrderProperty]
  set newValue StorageDescriptorProperty {..}
    = StorageDescriptorProperty
        {sortColumns = Prelude.pure newValue, ..}
instance Property "StoredAsSubDirectories" StorageDescriptorProperty where
  type PropertyType "StoredAsSubDirectories" StorageDescriptorProperty = Value Prelude.Bool
  set newValue StorageDescriptorProperty {..}
    = StorageDescriptorProperty
        {storedAsSubDirectories = Prelude.pure newValue, ..}