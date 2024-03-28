module Stratosphere.Glue.TableOptimizer (
        module Exports, TableOptimizer(..), mkTableOptimizer
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Glue.TableOptimizer.TableOptimizerConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TableOptimizer
  = TableOptimizer {catalogId :: (Value Prelude.Text),
                    databaseName :: (Value Prelude.Text),
                    tableName :: (Value Prelude.Text),
                    tableOptimizerConfiguration :: TableOptimizerConfigurationProperty,
                    type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTableOptimizer ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text
        -> TableOptimizerConfigurationProperty
           -> Value Prelude.Text -> TableOptimizer
mkTableOptimizer
  catalogId
  databaseName
  tableName
  tableOptimizerConfiguration
  type'
  = TableOptimizer
      {catalogId = catalogId, databaseName = databaseName,
       tableName = tableName,
       tableOptimizerConfiguration = tableOptimizerConfiguration,
       type' = type'}
instance ToResourceProperties TableOptimizer where
  toResourceProperties TableOptimizer {..}
    = ResourceProperties
        {awsType = "AWS::Glue::TableOptimizer",
         supportsTags = Prelude.False,
         properties = ["CatalogId" JSON..= catalogId,
                       "DatabaseName" JSON..= databaseName, "TableName" JSON..= tableName,
                       "TableOptimizerConfiguration" JSON..= tableOptimizerConfiguration,
                       "Type" JSON..= type']}
instance JSON.ToJSON TableOptimizer where
  toJSON TableOptimizer {..}
    = JSON.object
        ["CatalogId" JSON..= catalogId,
         "DatabaseName" JSON..= databaseName, "TableName" JSON..= tableName,
         "TableOptimizerConfiguration" JSON..= tableOptimizerConfiguration,
         "Type" JSON..= type']
instance Property "CatalogId" TableOptimizer where
  type PropertyType "CatalogId" TableOptimizer = Value Prelude.Text
  set newValue TableOptimizer {..}
    = TableOptimizer {catalogId = newValue, ..}
instance Property "DatabaseName" TableOptimizer where
  type PropertyType "DatabaseName" TableOptimizer = Value Prelude.Text
  set newValue TableOptimizer {..}
    = TableOptimizer {databaseName = newValue, ..}
instance Property "TableName" TableOptimizer where
  type PropertyType "TableName" TableOptimizer = Value Prelude.Text
  set newValue TableOptimizer {..}
    = TableOptimizer {tableName = newValue, ..}
instance Property "TableOptimizerConfiguration" TableOptimizer where
  type PropertyType "TableOptimizerConfiguration" TableOptimizer = TableOptimizerConfigurationProperty
  set newValue TableOptimizer {..}
    = TableOptimizer {tableOptimizerConfiguration = newValue, ..}
instance Property "Type" TableOptimizer where
  type PropertyType "Type" TableOptimizer = Value Prelude.Text
  set newValue TableOptimizer {..}
    = TableOptimizer {type' = newValue, ..}