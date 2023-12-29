module Stratosphere.Timestream.Table (
        module Exports, Table(..), mkTable
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Timestream.Table.MagneticStoreWritePropertiesProperty as Exports
import {-# SOURCE #-} Stratosphere.Timestream.Table.RetentionPropertiesProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Table
  = Table {databaseName :: (Value Prelude.Text),
           magneticStoreWriteProperties :: (Prelude.Maybe MagneticStoreWritePropertiesProperty),
           retentionProperties :: (Prelude.Maybe RetentionPropertiesProperty),
           tableName :: (Prelude.Maybe (Value Prelude.Text)),
           tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTable :: Value Prelude.Text -> Table
mkTable databaseName
  = Table
      {databaseName = databaseName,
       magneticStoreWriteProperties = Prelude.Nothing,
       retentionProperties = Prelude.Nothing, tableName = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties Table where
  toResourceProperties Table {..}
    = ResourceProperties
        {awsType = "AWS::Timestream::Table", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DatabaseName" JSON..= databaseName]
                           (Prelude.catMaybes
                              [(JSON..=) "MagneticStoreWriteProperties"
                                 Prelude.<$> magneticStoreWriteProperties,
                               (JSON..=) "RetentionProperties" Prelude.<$> retentionProperties,
                               (JSON..=) "TableName" Prelude.<$> tableName,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Table where
  toJSON Table {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DatabaseName" JSON..= databaseName]
              (Prelude.catMaybes
                 [(JSON..=) "MagneticStoreWriteProperties"
                    Prelude.<$> magneticStoreWriteProperties,
                  (JSON..=) "RetentionProperties" Prelude.<$> retentionProperties,
                  (JSON..=) "TableName" Prelude.<$> tableName,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "DatabaseName" Table where
  type PropertyType "DatabaseName" Table = Value Prelude.Text
  set newValue Table {..} = Table {databaseName = newValue, ..}
instance Property "MagneticStoreWriteProperties" Table where
  type PropertyType "MagneticStoreWriteProperties" Table = MagneticStoreWritePropertiesProperty
  set newValue Table {..}
    = Table {magneticStoreWriteProperties = Prelude.pure newValue, ..}
instance Property "RetentionProperties" Table where
  type PropertyType "RetentionProperties" Table = RetentionPropertiesProperty
  set newValue Table {..}
    = Table {retentionProperties = Prelude.pure newValue, ..}
instance Property "TableName" Table where
  type PropertyType "TableName" Table = Value Prelude.Text
  set newValue Table {..}
    = Table {tableName = Prelude.pure newValue, ..}
instance Property "Tags" Table where
  type PropertyType "Tags" Table = [Tag]
  set newValue Table {..} = Table {tags = Prelude.pure newValue, ..}