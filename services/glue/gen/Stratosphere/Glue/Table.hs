module Stratosphere.Glue.Table (
        module Exports, Table(..), mkTable
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Glue.Table.OpenTableFormatInputProperty as Exports
import {-# SOURCE #-} Stratosphere.Glue.Table.TableInputProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Table
  = Table {catalogId :: (Value Prelude.Text),
           databaseName :: (Value Prelude.Text),
           openTableFormatInput :: (Prelude.Maybe OpenTableFormatInputProperty),
           tableInput :: TableInputProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTable ::
  Value Prelude.Text
  -> Value Prelude.Text -> TableInputProperty -> Table
mkTable catalogId databaseName tableInput
  = Table
      {catalogId = catalogId, databaseName = databaseName,
       tableInput = tableInput, openTableFormatInput = Prelude.Nothing}
instance ToResourceProperties Table where
  toResourceProperties Table {..}
    = ResourceProperties
        {awsType = "AWS::Glue::Table", supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["CatalogId" JSON..= catalogId,
                            "DatabaseName" JSON..= databaseName,
                            "TableInput" JSON..= tableInput]
                           (Prelude.catMaybes
                              [(JSON..=) "OpenTableFormatInput"
                                 Prelude.<$> openTableFormatInput]))}
instance JSON.ToJSON Table where
  toJSON Table {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["CatalogId" JSON..= catalogId,
               "DatabaseName" JSON..= databaseName,
               "TableInput" JSON..= tableInput]
              (Prelude.catMaybes
                 [(JSON..=) "OpenTableFormatInput"
                    Prelude.<$> openTableFormatInput])))
instance Property "CatalogId" Table where
  type PropertyType "CatalogId" Table = Value Prelude.Text
  set newValue Table {..} = Table {catalogId = newValue, ..}
instance Property "DatabaseName" Table where
  type PropertyType "DatabaseName" Table = Value Prelude.Text
  set newValue Table {..} = Table {databaseName = newValue, ..}
instance Property "OpenTableFormatInput" Table where
  type PropertyType "OpenTableFormatInput" Table = OpenTableFormatInputProperty
  set newValue Table {..}
    = Table {openTableFormatInput = Prelude.pure newValue, ..}
instance Property "TableInput" Table where
  type PropertyType "TableInput" Table = TableInputProperty
  set newValue Table {..} = Table {tableInput = newValue, ..}