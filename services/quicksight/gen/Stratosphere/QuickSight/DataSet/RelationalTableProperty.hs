module Stratosphere.QuickSight.DataSet.RelationalTableProperty (
        module Exports, RelationalTableProperty(..),
        mkRelationalTableProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.DataSet.InputColumnProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RelationalTableProperty
  = RelationalTableProperty {catalog :: (Prelude.Maybe (Value Prelude.Text)),
                             dataSourceArn :: (Value Prelude.Text),
                             inputColumns :: [InputColumnProperty],
                             name :: (Value Prelude.Text),
                             schema :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRelationalTableProperty ::
  Value Prelude.Text
  -> [InputColumnProperty]
     -> Value Prelude.Text -> RelationalTableProperty
mkRelationalTableProperty dataSourceArn inputColumns name
  = RelationalTableProperty
      {dataSourceArn = dataSourceArn, inputColumns = inputColumns,
       name = name, catalog = Prelude.Nothing, schema = Prelude.Nothing}
instance ToResourceProperties RelationalTableProperty where
  toResourceProperties RelationalTableProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::DataSet.RelationalTable",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DataSourceArn" JSON..= dataSourceArn,
                            "InputColumns" JSON..= inputColumns, "Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "Catalog" Prelude.<$> catalog,
                               (JSON..=) "Schema" Prelude.<$> schema]))}
instance JSON.ToJSON RelationalTableProperty where
  toJSON RelationalTableProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DataSourceArn" JSON..= dataSourceArn,
               "InputColumns" JSON..= inputColumns, "Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "Catalog" Prelude.<$> catalog,
                  (JSON..=) "Schema" Prelude.<$> schema])))
instance Property "Catalog" RelationalTableProperty where
  type PropertyType "Catalog" RelationalTableProperty = Value Prelude.Text
  set newValue RelationalTableProperty {..}
    = RelationalTableProperty {catalog = Prelude.pure newValue, ..}
instance Property "DataSourceArn" RelationalTableProperty where
  type PropertyType "DataSourceArn" RelationalTableProperty = Value Prelude.Text
  set newValue RelationalTableProperty {..}
    = RelationalTableProperty {dataSourceArn = newValue, ..}
instance Property "InputColumns" RelationalTableProperty where
  type PropertyType "InputColumns" RelationalTableProperty = [InputColumnProperty]
  set newValue RelationalTableProperty {..}
    = RelationalTableProperty {inputColumns = newValue, ..}
instance Property "Name" RelationalTableProperty where
  type PropertyType "Name" RelationalTableProperty = Value Prelude.Text
  set newValue RelationalTableProperty {..}
    = RelationalTableProperty {name = newValue, ..}
instance Property "Schema" RelationalTableProperty where
  type PropertyType "Schema" RelationalTableProperty = Value Prelude.Text
  set newValue RelationalTableProperty {..}
    = RelationalTableProperty {schema = Prelude.pure newValue, ..}