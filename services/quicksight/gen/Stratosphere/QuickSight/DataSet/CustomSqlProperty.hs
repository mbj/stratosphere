module Stratosphere.QuickSight.DataSet.CustomSqlProperty (
        module Exports, CustomSqlProperty(..), mkCustomSqlProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.DataSet.InputColumnProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CustomSqlProperty
  = CustomSqlProperty {columns :: [InputColumnProperty],
                       dataSourceArn :: (Value Prelude.Text),
                       name :: (Value Prelude.Text),
                       sqlQuery :: (Value Prelude.Text)}
mkCustomSqlProperty ::
  [InputColumnProperty]
  -> Value Prelude.Text
     -> Value Prelude.Text -> Value Prelude.Text -> CustomSqlProperty
mkCustomSqlProperty columns dataSourceArn name sqlQuery
  = CustomSqlProperty
      {columns = columns, dataSourceArn = dataSourceArn, name = name,
       sqlQuery = sqlQuery}
instance ToResourceProperties CustomSqlProperty where
  toResourceProperties CustomSqlProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::DataSet.CustomSql",
         supportsTags = Prelude.False,
         properties = ["Columns" JSON..= columns,
                       "DataSourceArn" JSON..= dataSourceArn, "Name" JSON..= name,
                       "SqlQuery" JSON..= sqlQuery]}
instance JSON.ToJSON CustomSqlProperty where
  toJSON CustomSqlProperty {..}
    = JSON.object
        ["Columns" JSON..= columns, "DataSourceArn" JSON..= dataSourceArn,
         "Name" JSON..= name, "SqlQuery" JSON..= sqlQuery]
instance Property "Columns" CustomSqlProperty where
  type PropertyType "Columns" CustomSqlProperty = [InputColumnProperty]
  set newValue CustomSqlProperty {..}
    = CustomSqlProperty {columns = newValue, ..}
instance Property "DataSourceArn" CustomSqlProperty where
  type PropertyType "DataSourceArn" CustomSqlProperty = Value Prelude.Text
  set newValue CustomSqlProperty {..}
    = CustomSqlProperty {dataSourceArn = newValue, ..}
instance Property "Name" CustomSqlProperty where
  type PropertyType "Name" CustomSqlProperty = Value Prelude.Text
  set newValue CustomSqlProperty {..}
    = CustomSqlProperty {name = newValue, ..}
instance Property "SqlQuery" CustomSqlProperty where
  type PropertyType "SqlQuery" CustomSqlProperty = Value Prelude.Text
  set newValue CustomSqlProperty {..}
    = CustomSqlProperty {sqlQuery = newValue, ..}