module Stratosphere.Glue.Partition (
        module Exports, Partition(..), mkPartition
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Glue.Partition.PartitionInputProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Partition
  = Partition {catalogId :: (Value Prelude.Text),
               databaseName :: (Value Prelude.Text),
               partitionInput :: PartitionInputProperty,
               tableName :: (Value Prelude.Text)}
mkPartition ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> PartitionInputProperty -> Value Prelude.Text -> Partition
mkPartition catalogId databaseName partitionInput tableName
  = Partition
      {catalogId = catalogId, databaseName = databaseName,
       partitionInput = partitionInput, tableName = tableName}
instance ToResourceProperties Partition where
  toResourceProperties Partition {..}
    = ResourceProperties
        {awsType = "AWS::Glue::Partition",
         properties = ["CatalogId" JSON..= catalogId,
                       "DatabaseName" JSON..= databaseName,
                       "PartitionInput" JSON..= partitionInput,
                       "TableName" JSON..= tableName]}
instance JSON.ToJSON Partition where
  toJSON Partition {..}
    = JSON.object
        ["CatalogId" JSON..= catalogId,
         "DatabaseName" JSON..= databaseName,
         "PartitionInput" JSON..= partitionInput,
         "TableName" JSON..= tableName]
instance Property "CatalogId" Partition where
  type PropertyType "CatalogId" Partition = Value Prelude.Text
  set newValue Partition {..} = Partition {catalogId = newValue, ..}
instance Property "DatabaseName" Partition where
  type PropertyType "DatabaseName" Partition = Value Prelude.Text
  set newValue Partition {..}
    = Partition {databaseName = newValue, ..}
instance Property "PartitionInput" Partition where
  type PropertyType "PartitionInput" Partition = PartitionInputProperty
  set newValue Partition {..}
    = Partition {partitionInput = newValue, ..}
instance Property "TableName" Partition where
  type PropertyType "TableName" Partition = Value Prelude.Text
  set newValue Partition {..} = Partition {tableName = newValue, ..}